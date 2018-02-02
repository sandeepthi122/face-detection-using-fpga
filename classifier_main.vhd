----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/19/2017 10:01:17 PM
-- Design Name: 
-- Module Name: classifier_main - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------
------------------------------
library ieee;
library work;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.pkg.all;

entity classifier_main is
Port (classifier_main_enable:in std_logic;
  classifier_input1:in classifier_input;
      classifier_input2:in classifier_input;
      classifier_input3:in classifier_input;
      weight1: in std_logic_vector(3 downto 0);
      weight2: in std_logic_vector(3 downto 0);
      weight3: in std_logic_vector(3 downto 0);
      feature_threshold: in std_logic_vector(31 downto 0);
      left_value:in std_logic_vector(31 downto 0);
      right_value:in std_logic_vector(31 downto 0);
      stage_value:out std_logic_vector(31 downto 0);
     -- pass: out std_logic;
      clk: in std_logic
       );
end classifier_main;

architecture Behavioral of classifier_main is

----
COMPONENT multiplier_1
  PORT (
    CLK : IN STD_LOGIC;
    A : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    B : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
    P : OUT STD_LOGIC_VECTOR(21 DOWNTO 0)
  ); 
  end component;
  COMPONENT c_addsub_0
    PORT (
      A : IN STD_LOGIC_VECTOR(21 DOWNTO 0);
      B : IN STD_LOGIC_VECTOR(21 DOWNTO 0);
      CLK : IN STD_LOGIC;
      CE : IN STD_LOGIC;
      S : OUT STD_LOGIC_VECTOR(21 DOWNTO 0)
    );
  END COMPONENT;
  COMPONENT floating_point_conv
    PORT (
      aclk : IN STD_LOGIC;
      s_axis_a_tvalid : IN STD_LOGIC;
      s_axis_a_tready : OUT STD_LOGIC;
      s_axis_a_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axis_result_tvalid : OUT STD_LOGIC;
      m_axis_result_tready : IN STD_LOGIC;
      m_axis_result_tdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
    );
  END COMPONENT;
COMPONENT floating_point_compare
    PORT (
      aclk : IN STD_LOGIC;
      s_axis_a_tvalid : IN STD_LOGIC;
      --s_axis_a_tready : OUT STD_LOGIC;
      s_axis_a_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axis_b_tvalid : IN STD_LOGIC;
      --s_axis_b_tready : OUT STD_LOGIC;
      s_axis_b_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axis_result_tvalid : OUT STD_LOGIC;
      --m_axis_result_tready : IN STD_LOGIC;
      m_axis_result_tdata : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
    );
  END COMPONENT;
type state is(idle,s1,s2,s3,s4,s5);
--signal pr_state,nx_state:state;
----signals in between each operation
signal s1_ad_1,s1_bc_1,s1_ad_2,s1_bc_2,s1_ad_3,s1_bc_3:unsigned(17 downto 0):=(others=>'U');
signal s2_sub1,s2_sub2,s2_sub3:unsigned(17 downto 0):=(others=>'U');
signal s2_mul1,s2_mul2,s2_mul3:std_logic_vector(21 downto 0):=(others=>'U');
signal s2_add12,s2_add23:std_logic_vector(21 downto 0):=(others=>'U');
signal s2_temp:std_logic_vector(31 downto 0):=(others=>'U');
signal s3_float:std_logic_vector(31 downto 0):=(others=>'U');
signal s3_float_tready:std_logic:='1';
signal s3_float_result_tvalid:std_logic:='1';
signal s3_compare_tready:std_logic:='1';
signal s3_compare_result_tvalid:std_logic:='1';
signal s4_compare_result_tvalid:std_logic:='1';
signal s3_compare:std_logic_vector(7 downto 0):=(others=>'U');
signal s4_mux:std_logic_vector(31 downto 0):=(others=>'U');
signal s4_sum:unsigned(31 downto 0):=(others=>'U');
signal trigger:std_logic:='1';
----

begin
--seq:process(clk)
--begin
--if(rising_edge(clk)) then
--pr_state<=nx_state;
--end if;
--end process;
--comb:process(pr_state,classifier_input1,classifier_input2,classifier_input3)
--begin
--case pr_state is
--when idle=>
--            nx_state<=s1;
--when s1=>
         s1_ad_1<= to_unsigned(to_integer(classifier_input1(0)),18)+ to_unsigned(to_integer(classifier_input1(3)),18);
         s1_bc_1<=  to_unsigned(to_integer(classifier_input1(1)),18)+ to_unsigned(to_integer(classifier_input1(2)),18);
         s1_ad_2<= to_unsigned(to_integer(classifier_input2(0)),18)+ to_unsigned(to_integer(classifier_input2(3)),18);
         s1_bc_2<= to_unsigned(to_integer(classifier_input1(1)),18)+ to_unsigned(to_integer(classifier_input1(2)),18);
         s1_ad_3<= to_unsigned(to_integer(classifier_input3(0)),18)+ to_unsigned(to_integer(classifier_input3(3)),18);
         s1_bc_3<=  to_unsigned(to_integer(classifier_input3(1)),18)+ to_unsigned(to_integer(classifier_input3(2)),18);
         --nx_state<=s2;
--when s2=>         
         s2_sub1<=s1_ad_1-s1_bc_1;
         s2_sub2<=s1_ad_2-s1_bc_2;
         s2_sub3<=s1_ad_3-s1_bc_3;
        -- nx_state<=s3;
--when s3=>
         uut1: multiplier_1 port map(clk,weight1,std_logic_vector(s2_sub1),s2_mul1);
         uut2: multiplier_1 port map(clk,weight2,std_logic_vector(s2_sub2),s2_mul2);
         uut3: multiplier_1 port map(clk,weight3,std_logic_vector(s2_sub3),s2_mul3);
         
adder: c_addsub_0
           PORT MAP (
             A => s2_mul1,
             B => s2_mul2,
             CLK => CLK,
             CE => '1',
             S => s2_add12
           );        
adder1: c_addsub_0
                      PORT MAP (
                        A => s2_add12,
                        B => s2_mul3,
                        CLK => CLK,
                        CE => '1',
                        S => s2_add23
                      );   
 s2_temp<= std_logic_vector(resize(signed(s2_add23),32));                    
--converting adder output to floating point for comparison of feature threshold
float_conv: floating_point_conv
  PORT MAP (
    aclk => clk,
    s_axis_a_tvalid => '1',
    s_axis_a_tready => s3_float_tready,
    s_axis_a_tdata =>s2_temp,
    m_axis_result_tvalid => s3_float_result_tvalid,
    m_axis_result_tready => '1',
    m_axis_result_tdata => s3_float
  );    
feature_compare: floating_point_compare
    PORT MAP (
      aclk => clk,
      s_axis_a_tvalid => s3_float_result_tvalid,
     -- s_axis_a_tready => trigger,
      s_axis_a_tdata => s3_float,
      s_axis_b_tvalid => s3_float_result_tvalid,
     -- s_axis_b_tready => trigger,
      s_axis_b_tdata => feature_threshold,
      m_axis_result_tvalid =>s3_compare_result_tvalid,
     -- m_axis_result_tready => trigger,
      m_axis_result_tdata => s3_compare
    );  
    ---if s3_float > feature_threshold,s4_mux=right_value else left_value 
s4_mux<=   right_value when s3_compare(0)='1' else
           left_value;   
process(clk)
begin
if(classifier_main_enable='0') then
stage_value<=(others=>'0');
else
stage_value<=s4_mux;
end if;
end process;
 ---compare with stage threshold
-- stage_compare: floating_point_compare
--     PORT MAP (
--       aclk => clk,
--       s_axis_a_tvalid => s3_compare_result_tvalid,
--       s_axis_a_tready => trigger,
--       s_axis_a_tdata => s4_mux,
--       s_axis_b_tvalid => s3_compare_result_tvalid,
--       s_axis_b_tready => trigger,
--       s_axis_b_tdata => stage_threshold,
--       m_axis_result_tvalid =>s4_compare_result_tvalid,
--       m_axis_result_tready => trigger,
--       m_axis_result_tdata => s3_compare
--     );       
    -- pass<=s3_compare(0);               
--end case;
--end process;
end Behavioral;
