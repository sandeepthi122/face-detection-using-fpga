----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/02/2017 04:19:09 PM
-- Design Name: 
-- Module Name: feature_controller - Behavioral
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

--LIBRARY ieee;
--LIBRARY std;
--USE ieee.numeric_std.ALL;
--USE ieee.std_logic_1164.ALL;
--package buf_ary is
--constant input_buf_elements:integer:=4;
--type image_data is
--  record
--     data : unsigned(7 downto 0);
--     add_row: unsigned(8 downto 0);
--     add_col : unsigned(7 downto 0);
--  end record;
--  type integral_image_data is
--    record
--       data : unsigned(16 downto 0);
--       add_row: unsigned(8 downto 0);
--       add_col : unsigned(7 downto 0);
--    end record;
--type buf_ary_8bit is array(natural range<>) of unsigned(7 downto 0);
--type buf_ary_17bit is array(natural range<>) of unsigned(16 downto 0);
--type buf_record_8bit is array (natural range<>) of image_data;
--type buf_record_2d_17bit is array(natural range<>,natural range<>) of integral_image_data;
--type buf_ary_2d_17bit is array(natural range<>,natural range<>) of unsigned(16 downto 0);
--type buf_record_2d_17bit_sliced is array(19 downto 0) of integral_image_data;
--type integral_buffer is array(39 downto 0) of buf_record_2d_17bit_sliced;

--end package buf_ary;
--package body buf_ary is 
--end package body;
----------------------
--library IEEE;
--library work;
--use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.NUMERIC_STD.ALL;
--use work.buf_ary.all;
--package pkg is
--type classifier_input is array(3 downto 0) of unsigned(16 downto 0);
--type classifier_input_weight is
--record
--integral_value :classifier_input;
--weight :std_logic_vector(3 downto 0);
--end record;
--type rect_values is array(1 to 4) of std_logic_vector(4 downto 0);
--type feature_rect_gr_3 is array(1 to 6) of classifier_input_weight;
--type feature_data is
--record
--rect1_x :std_logic_vector(4 downto 0);
--rect1_y :std_logic_vector(4 downto 0);
--rect1_w :std_logic_vector(4 downto 0);
--rect1_h :std_logic_vector(4 downto 0);
--rect2_x :std_logic_vector(4 downto 0);
--rect2_y :std_logic_vector(4 downto 0);
--rect2_w :std_logic_vector(4 downto 0);
--rect2_h :std_logic_vector(4 downto 0);
--rect3_x :std_logic_vector(4 downto 0);
--rect3_y :std_logic_vector(4 downto 0);
--rect3_w :std_logic_vector(4 downto 0);
--rect3_h :std_logic_vector(4 downto 0);
--weight1 :std_logic_vector(3 downto 0);
--weight2 :std_logic_vector(3 downto 0);
--weight3 :std_logic_vector(3 downto 0);
--feature_threshold :std_logic_vector(31 downto 0);
--left_value :std_logic_vector(31 downto 0);
--right_value :std_logic_vector(31 downto 0);
--stage_threshold :std_logic_vector(31 downto 0);
--end record; 
--type feature_data_array is array(1 to 2083) of feature_data;
-------------function for address generation of feature data to integral image
--function address_generator(feature_rect_values:rect_values;integral_image:buf_record_2d_17bit(19 downto 0,19 downto 0)) return classifier_input;
----function rect_no_gr_3(enable:std_logic;feature_value:integer;integral_image:buf_record_2d_17bit(19 downto 0,19 downto 0)) return feature_rect_gr_3;
--end pkg;
--package body pkg is
--function address_generator(feature_rect_values:rect_values;integral_image:buf_record_2d_17bit(19 downto 0,19 downto 0)) return classifier_input is
--variable classifier_input_temp:classifier_input;
--variable x,y,w,h,y_h,x_w:integer;-----values in rect range from 1 to 20. But, values of integral image are 0 to 19. So, changing accordingly
--begin
--x :=to_integer(unsigned(feature_rect_values(1)));
--y :=to_integer(unsigned(feature_rect_values(2)));
--w :=to_integer(unsigned(feature_rect_values(3)));
--h :=to_integer(unsigned(feature_rect_values(4)));
--y_h :=y+h;
--x_w :=x+w;
--if(y_h>=20) then
-- y_h := 19;
-- elsif(y=0) then
-- y:=0;
-- else
-- y:=y-1;
-- y_h :=y+h;
--end if;
--if(x_w>=20) then
-- x_w := 19;
-- elsif(x=0) then
-- x:=0;
-- else
-- x:=x-1;
-- x_w :=x+w;
--end if;
--classifier_input_temp(0):=integral_image(y,x).data;
--classifier_input_temp(1):=integral_image(y,x_w).data;
--classifier_input_temp(2):=integral_image(y_h,x).data;
--classifier_input_temp(3):=integral_image(y_h,x_w).data;
--return classifier_input_temp;
--end function;

--end package body;

library IEEE;
--library work;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.buf_ary.all;
use work.pkg.all;
-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity feature_controller is
Port (enable_classifier:in std_logic;------to enable classification after integral subwindow is ready
clk :in std_logic;
integral_image :in buf_record_2d_17bit(19 downto 0,19 downto 0);-----integral image data for classification
integral_image_pass :out std_logic;
integral_image_trigger :out std_logic;
 face_coordinates: out integral_coordinates);
end feature_controller;

architecture Behavioral of feature_controller is
type number is array(1 to 20) of integer;
type state is (idle,in_process);
-----------component instantiation for all feature memory
COMPONENT blk_mem_feature_threshold
  PORT (
    clka : IN STD_LOGIC;
    ena : IN STD_LOGIC;
    addra : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
  END COMPONENT;
  COMPONENT blk_mem_left_value
    PORT (
      clka : IN STD_LOGIC;
      ena : IN STD_LOGIC;
      addra : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      douta : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
    );
  END COMPONENT;
    COMPONENT blk_mem_right_value
    PORT (
      clka : IN STD_LOGIC;
      ena : IN STD_LOGIC;
      addra : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      douta : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
    );
  END COMPONENT;
    COMPONENT blk_mem_stage_threshold
    PORT (
      clka : IN STD_LOGIC;
      ena : IN STD_LOGIC;
      addra : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      douta : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
    );
  END COMPONENT;
 COMPONENT blk_mem_rect1_h
    PORT (
      clka : IN STD_LOGIC;
      ena : IN STD_LOGIC;
      addra : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      douta : OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
    );
  END COMPONENT; 
  COMPONENT blk_mem_rect1_w
    PORT (
      clka : IN STD_LOGIC;
      ena : IN STD_LOGIC;
      addra : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      douta : OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
    );
  END COMPONENT;
  COMPONENT blk_mem_rect1_x
    PORT (
      clka : IN STD_LOGIC;
      ena : IN STD_LOGIC;
      addra : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      douta : OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
    );
  END COMPONENT;
  COMPONENT blk_mem_rect1_y
    PORT (
      clka : IN STD_LOGIC;
      ena : IN STD_LOGIC;
      addra : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      douta : OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
    );
  END COMPONENT;
  COMPONENT blk_mem_rect2_h
    PORT (
      clka : IN STD_LOGIC;
      ena : IN STD_LOGIC;
      addra : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      douta : OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
    );
  END COMPONENT;
    COMPONENT blk_mem_rect2_w
    PORT (
      clka : IN STD_LOGIC;
      ena : IN STD_LOGIC;
      addra : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      douta : OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
    );
  END COMPONENT;
    COMPONENT blk_mem_rect2_x
    PORT (
      clka : IN STD_LOGIC;
      ena : IN STD_LOGIC;
      addra : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      douta : OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
    );
  END COMPONENT;
    COMPONENT blk_mem_rect2_y
    PORT (
      clka : IN STD_LOGIC;
      ena : IN STD_LOGIC;
      addra : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      douta : OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
    );
  END COMPONENT;
    COMPONENT blk_mem_rect3_h
    PORT (
      clka : IN STD_LOGIC;
      ena : IN STD_LOGIC;
      addra : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      douta : OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
    );
  END COMPONENT;
    COMPONENT blk_mem_rect3_w
    PORT (
      clka : IN STD_LOGIC;
      ena : IN STD_LOGIC;
      addra : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      douta : OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
    );
  END COMPONENT;
    COMPONENT blk_mem_rect3_x
    PORT (
      clka : IN STD_LOGIC;
      ena : IN STD_LOGIC;
      addra : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      douta : OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
    );
  END COMPONENT;
    COMPONENT blk_mem_rect3_y
    PORT (
      clka : IN STD_LOGIC;
      ena : IN STD_LOGIC;
      addra : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      douta : OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
    );
  END COMPONENT;
COMPONENT blk_mem_weight1
    PORT (
      clka : IN STD_LOGIC;
      ena : IN STD_LOGIC;
      addra : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      douta : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
    );
  END COMPONENT;
  COMPONENT blk_mem_weight2
    PORT (
      clka : IN STD_LOGIC;
      ena : IN STD_LOGIC;
      addra : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      douta : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
    );
  END COMPONENT;
  COMPONENT blk_mem_weight3
    PORT (
      clka : IN STD_LOGIC;
      ena : IN STD_LOGIC;
      addra : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      douta : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
    );
  END COMPONENT;  
  
  -------component for classifier module
  component classifier_main is
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
  end component;
  
  COMPONENT floating_point_adder
    PORT (
      aclk : IN STD_LOGIC;
      s_axis_a_tvalid : IN STD_LOGIC;
      s_axis_a_tready : OUT STD_LOGIC;
      s_axis_a_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axis_b_tvalid : IN STD_LOGIC;
      s_axis_b_tready : OUT STD_LOGIC;
      s_axis_b_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axis_result_tvalid : OUT STD_LOGIC;
      m_axis_result_tready : IN STD_LOGIC;
      m_axis_result_tdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
    );
  END COMPONENT;
COMPONENT floating_point_compare
    PORT (
      aclk : IN STD_LOGIC;
      s_axis_a_tvalid : IN STD_LOGIC;
      s_axis_a_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axis_b_tvalid : IN STD_LOGIC;
      s_axis_b_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axis_result_tvalid : OUT STD_LOGIC;
      m_axis_result_tdata : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
    );
  END COMPONENT;
  -------signals to trigger all ROM of feature data
 
 signal enable:std_logic:='1';
 signal address_rom:std_logic_vector(11 downto 0):="000000000001";
 signal rect_value_1:rect_values;
  signal rect_value_2:rect_values;
   signal rect_value_3:rect_values;
   
 ------signals for data of classifier from rom
 signal classifier1_integral_input1:classifier_input;-----integral image data corresponding to rect values
 signal classifier1_integral_input2: classifier_input;
 signal classifier1_integral_input3: classifier_input;
signal classifier2_integral_input1:classifier_input;
 signal classifier2_integral_input2: classifier_input;
 signal classifier2_integral_input3: classifier_input;
signal classifier3_integral_input1:classifier_input;
 signal classifier3_integral_input2: classifier_input;
 signal classifier3_integral_input3: classifier_input;
 signal weight1: std_logic_vector(3 downto 0):=(others=>'U');
 signal weight2: std_logic_vector(3 downto 0):=(others=>'U');
 signal weight3: std_logic_vector(3 downto 0):=(others=>'U');
 signal feature_threshold: std_logic_vector(31 downto 0):=(others=>'U');
 signal left_value: std_logic_vector(31 downto 0):=(others=>'U');
 signal right_value: std_logic_vector(31 downto 0):=(others=>'U');
 signal stage_threshold: std_logic_vector(31 downto 0):=(others=>'U');
 
 ------------signals for classifer main
 signal stage_threshold_temp: std_logic_vector(31 downto 0):=(others=>'U');
 signal stage_threshold_temp1: std_logic_vector(31 downto 0):=(others=>'0');
  signal stage_threshold_temp2: std_logic_vector(31 downto 0):=(others=>'U');
   signal stage_threshold_temp3: std_logic_vector(31 downto 0):=(others=>'U');
 signal stage_value1: std_logic_vector(31 downto 0):=(others=>'U');
  signal stage_value2: std_logic_vector(31 downto 0):=(others=>'U');
   signal stage_value3: std_logic_vector(31 downto 0):=(others=>'U');
  signal classifier1_main_enable:std_logic:='0';---to enable classifier main module
   signal classifier2_main_enable:std_logic:='0';---to enable classifier main module
  signal classifier3_main_enable:std_logic:='0';---to enable classifier main module
  signal classifier1_main_input:feature_data;----input feature data for classifier main module
 signal classifier2_main_input:feature_data;
 signal classifier3_main_input:feature_data; 
 signal pass: std_logic:='U'; 
 SIGNAL TEMP:STD_LOGIC:='0';
 ---------array for no of features per stage
 signal no_feature:number :=(6,18,28,38,38,54,62,77,90,94,104,133,125,142,150,155,181,194,179,215);
 signal pr_state,nx_state:state;
 signal buffer_enable:std_logic;----to enable buffering of classifiers
 signal feature_data_buffer:feature_data_array;
 signal no_rectangles_gr_3:std_logic;----signal to know whether no of rectangles >3
 signal rectangle_address:integer;-------address of rectangle whose no in feature is >3
-----------acknowledge signals
signal s_axis_a_tready1:std_logic;
signal s_axis_b_tready1:std_logic;
signal m_axis_result_tvalid1:std_logic;
signal s_axis_a_tready2:std_logic;
signal s_axis_b_tready2:std_logic;
signal m_axis_result_tvalid2:std_logic;
signal s_axis_a_tready3:std_logic;
signal s_axis_b_tready3:std_logic;
signal m_axis_result_tvalid3:std_logic;

--------stage threshold compare enable signal
signal s_axis_a_tready_compare:std_logic;
signal s_axis_b_tready_compare:std_logic;
signal m_axis_result_tvalid_compare:std_logic;
signal stage_compare_enable:std_logic;
signal stage_compare_out:std_logic_vector(7 downto 0);
signal stage_pass:std_logic;
signal time_start:time;
signal time_start_classifier:time;
signal time_end:time;
begin

rect1_h : blk_mem_rect1_h
  PORT MAP (
    clka => clk,
    ena => enable,
    addra => address_rom,
    douta => rect_value_1(4)
  );
rect1_w : blk_mem_rect1_w
    PORT MAP (
      clka => clk,
      ena => enable,
      addra => address_rom,
      douta => rect_value_1(3)
    ); 
rect1_x : blk_mem_rect1_x
      PORT MAP (
        clka => clk,
        ena => enable,
        addra => address_rom,
        douta => rect_value_1(1)
      );  
rect1_y : blk_mem_rect1_y
        PORT MAP (
          clka => clk,
          ena => enable,
          addra => address_rom,
          douta => rect_value_1(2)
        );  
rect2_h : blk_mem_rect2_h
          PORT MAP (
            clka => clk,
            ena => enable,
            addra => address_rom,
            douta => rect_value_2(4)
          );
rect2_w : blk_mem_rect2_w
            PORT MAP (
              clka => clk,
              ena => enable,
              addra => address_rom,
              douta => rect_value_2(3)
            ); 
rect2_x : blk_mem_rect2_x
              PORT MAP (
                clka => clk,
                ena => enable,
                addra => address_rom,
                douta => rect_value_2(1)
              );  
rect2_y : blk_mem_rect2_y
                PORT MAP (
                  clka => clk,
                  ena => enable,
                  addra => address_rom,
                  douta => rect_value_2(2)
                ); 
rect3_h : blk_mem_rect3_h
                  PORT MAP (
                    clka => clk,
                    ena => enable,
                    addra => address_rom,
                    douta => rect_value_3(4)
                  );
rect3_w : blk_mem_rect3_w
                    PORT MAP (
                      clka => clk,
                      ena => enable,
                      addra => address_rom,
                      douta => rect_value_3(3)
                    ); 
rect3_x : blk_mem_rect3_x
                      PORT MAP (
                        clka => clk,
                        ena => enable,
                        addra => address_rom,
                        douta => rect_value_3(1)
                      );  
rect3_y : blk_mem_rect3_y
                        PORT MAP (
                          clka => clk,
                          ena => enable,
                          addra => address_rom,
                          douta => rect_value_3(2)
                        );
feature_weight_1: blk_mem_weight1
                          PORT MAP (
                            clka => clk,
                            ena => enable,
                            addra => address_rom,
                            douta => weight1
                          );   
feature_weight_2: blk_mem_weight2
                           PORT MAP (
                          clka => clk,
                          ena => enable,
                          addra => address_rom,
                          douta => weight2
                          );
feature_weight_3: blk_mem_weight3
                           PORT MAP (
                           clka => clk,
                           ena => enable,
                           addra => address_rom,
                          douta => weight3
                          ); 
feature_thresh: blk_mem_feature_threshold
                            PORT MAP (
                              clka => clk,
                              ena => enable,
                              addra => address_rom,
                              douta =>feature_threshold
                            ); 
mem_left_value : blk_mem_left_value
                              PORT MAP (
                                clka => clk,
                                ena => enable,
                                addra => address_rom,
                                douta => left_value
                              );  
mem_right_value : blk_mem_right_value
                         PORT MAP (
                         clka => clk,
                         ena => enable,
                         addra => address_rom,
                         douta => right_value
                         );
stage_thresh: blk_mem_stage_threshold
                     PORT MAP (
                    clka => clk,
                   ena => enable,
                   addra => address_rom,
                   douta =>stage_threshold
                   );
seq : process(clk)
                   begin
                   if(enable_classifier='0') then
                   pr_state<=idle;
                   elsif (enable_classifier='1' AND rising_edge(clk)) then
                   pr_state<=nx_state;
                   TEMP<=NOT TEMP;
                   end if;
                   end process;
comb :process(pr_state,stage_pass,rectangle_address,classifier1_main_input,stage_value1,TEMP)
variable stage_number_temp:integer:=0;------variable for no of feature in current stage for classification
variable stage_number:integer:=0;-----------variable for no of features in current stage taken from buffer
variable stage_number_index:integer:=1;-----variable to take out no of features in current stage by index from buffer
variable feature_data_count:integer:=0;-----variable for feature no from then starting stage to take feature data from buffer
variable feature_offset:integer:=0;---------variable for feature offset value
                   begin
                   case pr_state is
                   when idle=>               
                                 --pass<='U';
                                 --stage_pass<='U';
                                 stage_number_index:=1;
                                 stage_number_temp:=0;
                                 feature_data_count:=0;
                                 --buffer_enable<='1';
                                 nx_state<=in_process;
                   when in_process=>  

                       if(stage_number_index=10) then
                              if (stage_pass='1') then
                               integral_image_pass<='1';
                              face_coordinates(0)<=(integral_image(0,0).add_row,integral_image(0,0).add_col);
                              face_coordinates(1)<=(integral_image(0,19).add_row,integral_image(0,19).add_col);
                              face_coordinates(2)<=(integral_image(19,0).add_row,integral_image(19,0).add_col);
                              face_coordinates(3)<=(integral_image(19,19).add_row,integral_image(19,19).add_col);
                               integral_image_trigger<='1';
                               
                               elsif(stage_pass='0') then 
                               integral_image_pass<='0';
                                       face_coordinates(0)<=((others=>'0'),(others=>'0'));
                                       face_coordinates(1)<=((others=>'0'),(others=>'0'));
                                        face_coordinates(2)<=((others=>'0'),(others=>'0'));
                                        face_coordinates(3)<=((others=>'0'),(others=>'0'));
                               integral_image_trigger<='1';
                               else
                                integral_image_trigger<='U'; 
                                integral_image_pass<='U';                              
                              end if;   
                              
                              nx_state<=idle;
                      elsif(rectangle_address>50) then
                      time_start_classifier<= time'(now);
                        --if(no_rectangles_gr_3='0') then
                              stage_number:= no_feature(stage_number_index);
                              feature_offset:=stage_number-stage_number_temp;
                                 if(feature_offset>=3) then
                                 classifier1_main_enable<='1';
                                 classifier2_main_enable<='1';
                                 classifier3_main_enable<='1';
                                 classifier1_main_input<=feature_data_buffer(feature_data_count+1);
                                 classifier2_main_input<=feature_data_buffer(feature_data_count+2);
                                 classifier3_main_input<=feature_data_buffer(feature_data_count+3);
                                 stage_number_temp:=stage_number_temp+3;
                                 feature_data_count:=feature_data_count+3;
                                 integral_image_trigger<='U'; 
                                 integral_image_pass<='U'; 
                                 elsif(feature_offset=2) then
                                 classifier1_main_enable<='1';
                                 classifier2_main_enable<='1';
                                 classifier3_main_enable<='0';
                                 classifier1_main_input<=feature_data_buffer(feature_data_count+1);
                                 classifier2_main_input<=feature_data_buffer(feature_data_count+2);
                                 stage_number_temp:=stage_number_temp+2;
                                 feature_data_count:=feature_data_count+2;
                                 integral_image_trigger<='U'; 
                                 integral_image_pass<='U'; 
                                 
                                 elsif(feature_offset=1) then
                                 classifier1_main_enable<='1';
                                 classifier2_main_enable<='0';
                                 classifier3_main_enable<='0';
                                 classifier1_main_input<=feature_data_buffer(feature_data_count+1);
                                 stage_number_temp:=stage_number_temp+1;
                                 feature_data_count:=feature_data_count+1;
                                 --stage_number_index:=stage_number_index+1;  
                                 
                                 elsif (feature_offset=0) then--------------completed all features in current stage
                                 
                                    if (stage_pass='1') then ------------------check stage pass or not
                                    stage_number_temp:=0;----------------------initialse variable to 0 for loading no of features in next stage
                                    stage_number_index:=stage_number_index+1;--increment index value to load no of features in next stage (stage number )
                                    nx_state<=in_process;
                                    elsif(stage_pass='0') then----------------------------------------if stage pass is 0
                                    integral_image_pass<='0';-------------------no face in integral image
                                     face_coordinates(0)<=((others=>'U'),(others=>'U'));
                                     face_coordinates(1)<=((others=>'U'),(others=>'U'));
                                     face_coordinates(2)<=((others=>'U'),(others=>'U'));
                                    face_coordinates(3)<=((others=>'U'),(others=>'U'));
                                    integral_image_trigger<='1';---------------trigger to load next integral image
                                    nx_state<=idle;----------------------------next state idle to load initial values
                                    else
                                    integral_image_trigger<='U'; 
                                    integral_image_pass<='U'; 
                                    end if;                                                               
                                 end if;
                              else   
                              --nx_state<=rectangle_gr_3;
                              end if;
                                 
                          --end if;
                                              
                   end case;
                  -- address_rom<=std_logic_vector(unsigned(address_rom)+1);
                  end process; 


-----------process for buffering feature data into buffer   

feature_buffering :process(clk)
--variable count:integer:=1;
begin
if(enable='1' and rectangle_address<=2083 ) then
rectangle_address<=to_integer(unsigned(address_rom));
--    if(rectangle_address=308 or rectangle_address=509 or rectangle_address=556 or rectangle_address=1220 or rectangle_address=1451
--    or rectangle_address=1465 or rectangle_address=1718 or rectangle_address=1985 or rectangle_address=730 or rectangle_address=774 or rectangle_address=1984) then
--    no_rectangles_gr_3<='1';
--    else
--    no_rectangles_gr_3<='0';
--    end if;
    
    if (rising_edge(clk)) then
    if(rectangle_address>1) then
if(rectangle_address=2) then
feature_data_buffer(1)<=("00010","00111","10000","00100","00010","01001","10000","00010","00000","00000","00000","00000","1111","0010","0000","00111011100011011100101101110110","00111101000111010011011001010111","00000000000000000000000000000000","00111110101100111000110111110001");
else
    feature_data_buffer(rectangle_address-1)<=(rect_value_1(1), rect_value_1(2),rect_value_1(3),rect_value_1(4),rect_value_2(1), rect_value_2(2),rect_value_2(3),rect_value_2(4),rect_value_3(1), rect_value_3(2),rect_value_3(3),rect_value_3(4),weight1,weight2,weight3,feature_threshold,left_value,right_value,stage_threshold);
    end if;
    end if;
    address_rom<=std_logic_vector(unsigned(address_rom)+1);
    end if;
end if; 
end process;
--classifier1_integral_input1(0)<=integral_image(to_integer(unsigned(classifier1_main_input.rect1_y)),to_integer(unsigned(classifier1_main_input.rect1_x))).data;
--classifier1_integral_input1(1)<=integral_image(to_integer(unsigned(classifier1_main_input.rect1_y)),to_integer(unsigned(classifier1_main_input.rect1_x))+to_integer(unsigned(classifier1_main_input.rect1_w))).data;
--classifier1_integral_input1(2)<=integral_image(to_integer(unsigned(classifier1_main_input.rect1_y))+to_integer(unsigned(classifier1_main_input.rect1_w)),to_integer(unsigned(classifier1_main_input.rect1_x))).data;
--classifier1_integral_input1(3)<=integral_image(to_integer(unsigned(classifier1_main_input.rect1_y))+to_integer(unsigned(classifier1_main_input.rect1_w)),to_integer(unsigned(classifier1_main_input.rect1_x))+to_integer(unsigned(classifier1_main_input.rect1_w))).data;

--classifier_input_temp(1):=integral_image(y,x_w).data;
--classifier_input_temp(2):=integral_image(y_h,x).data;
--classifier_input_temp(3):=integral_image(y_h,x_w).data;
  
classifier1_integral_input1 <=address_generator((classifier1_main_input.rect1_x,classifier1_main_input.rect1_y,classifier1_main_input.rect1_w,classifier1_main_input.rect1_h),integral_image);
classifier1_integral_input2 <=address_generator((classifier1_main_input.rect2_x,classifier1_main_input.rect2_y,classifier1_main_input.rect2_w,classifier1_main_input.rect2_h),integral_image);
classifier1_integral_input3 <=address_generator((classifier1_main_input.rect3_x,classifier1_main_input.rect3_y,classifier1_main_input.rect3_w,classifier1_main_input.rect3_h),integral_image);
classifier2_integral_input1 <=address_generator((classifier2_main_input.rect1_x,classifier2_main_input.rect1_y,classifier2_main_input.rect1_w,classifier2_main_input.rect1_h),integral_image);
classifier2_integral_input2 <=address_generator((classifier2_main_input.rect2_x,classifier2_main_input.rect2_y,classifier2_main_input.rect2_w,classifier2_main_input.rect2_h),integral_image);
classifier2_integral_input3 <=address_generator((classifier2_main_input.rect3_x,classifier2_main_input.rect3_y,classifier2_main_input.rect3_w,classifier2_main_input.rect3_h),integral_image);
classifier3_integral_input1 <=address_generator((classifier3_main_input.rect1_x,classifier3_main_input.rect1_y,classifier3_main_input.rect1_w,classifier3_main_input.rect1_h),integral_image);
classifier3_integral_input2 <=address_generator((classifier3_main_input.rect2_x,classifier3_main_input.rect2_y,classifier3_main_input.rect2_w,classifier3_main_input.rect2_h),integral_image);
classifier3_integral_input3 <=address_generator((classifier3_main_input.rect3_x,classifier3_main_input.rect3_y,classifier3_main_input.rect3_w,classifier3_main_input.rect3_h),integral_image);
                  
classifier_module1 : classifier_main port map(classifier1_main_enable,classifier1_integral_input1,classifier1_integral_input2,classifier1_integral_input3,
                   classifier1_main_input.weight1,classifier1_main_input.weight2,classifier1_main_input.weight3,classifier1_main_input.feature_threshold,classifier1_main_input.left_value,
                   classifier1_main_input.right_value,stage_value1,clk); 

classifier_module2 : classifier_main port map(classifier2_main_enable,classifier2_integral_input1,classifier2_integral_input2,classifier2_integral_input3,
                   classifier2_main_input.weight1,classifier2_main_input.weight2,classifier2_main_input.weight3,classifier2_main_input.feature_threshold,classifier2_main_input.left_value,
                   classifier2_main_input.right_value,stage_value2,clk);
                   
classifier_module3 : classifier_main port map(classifier3_main_enable,classifier3_integral_input1,classifier3_integral_input2,classifier3_integral_input3,
                     classifier3_main_input.weight1,classifier3_main_input.weight2,classifier3_main_input.weight3,classifier3_main_input.feature_threshold,classifier3_main_input.left_value,
                     classifier3_main_input.right_value,stage_value3,clk);
                     
                              

stage_value1_add : floating_point_adder
  PORT MAP (
    aclk => clk,
    s_axis_a_tvalid => classifier1_main_enable,
    s_axis_a_tready => s_axis_a_tready1,
    s_axis_a_tdata => stage_threshold_temp1,
    s_axis_b_tvalid => classifier1_main_enable,
    s_axis_b_tready => s_axis_b_tready1,
    s_axis_b_tdata => stage_value1,
    m_axis_result_tvalid => m_axis_result_tvalid1,
    m_axis_result_tready => classifier1_main_enable,
    m_axis_result_tdata => stage_threshold_temp2
  );
 stage_value23_add : floating_point_adder
    PORT MAP (
      aclk => clk,
      s_axis_a_tvalid => m_axis_result_tvalid1,
      s_axis_a_tready => s_axis_a_tready2,
      s_axis_a_tdata => stage_threshold_temp2,
      s_axis_b_tvalid => m_axis_result_tvalid1,
      s_axis_b_tready => s_axis_b_tready2,
      s_axis_b_tdata => stage_value2,
      m_axis_result_tvalid => m_axis_result_tvalid2,
      m_axis_result_tready => m_axis_result_tvalid1,
      m_axis_result_tdata => stage_threshold_temp3
    ); 
stage_value3_add : floating_point_adder
        PORT MAP (
          aclk => clk,
          s_axis_a_tvalid => m_axis_result_tvalid2,
          s_axis_a_tready => s_axis_a_tready3,
          s_axis_a_tdata => stage_threshold_temp3,
          s_axis_b_tvalid => m_axis_result_tvalid2,
          s_axis_b_tready => s_axis_b_tready3,
          s_axis_b_tdata => stage_value3,
          m_axis_result_tvalid => m_axis_result_tvalid3,
          m_axis_result_tready => m_axis_result_tvalid2,
          m_axis_result_tdata => stage_threshold_temp
        ); 
        
           
stage_threshold_process :process(stage_value1,stage_value2,stage_value3,clk)
variable stage_number:integer:=0;
variable stage_number_index:integer:=1;
variable feature_data_count:integer:=0;
variable feature_offset:integer:=0;
variable stage_number_temp:integer:=3;
begin

if(m_axis_result_tvalid3='1') then
if(stage_number_index<21) then

stage_number := no_feature(stage_number_index);
feature_offset :=stage_number-stage_number_temp;
if(feature_offset<3) then
stage_compare_enable<='1';
stage_threshold_temp1<=(others=>'0');
stage_number_index :=stage_number_index+1;
stage_number_temp :=0;
else
stage_compare_enable<='0';
stage_threshold_temp1<=stage_threshold_temp;
stage_number_temp :=stage_number_temp+3;
end if;
end if;
end if;
end process; 
 --compare with stage threshold
 stage_compare_uut: floating_point_compare
     PORT MAP (
       aclk => clk,
       s_axis_a_tvalid => stage_compare_enable,
      -- s_axis_a_tready => s_axis_a_tready_compare,
       s_axis_a_tdata => stage_threshold_temp,
       s_axis_b_tvalid => stage_compare_enable,
      -- s_axis_b_tready => s_axis_b_tready_compare,
       s_axis_b_tdata => classifier1_main_input.stage_threshold,
       m_axis_result_tvalid =>m_axis_result_tvalid_compare,
      -- m_axis_result_tready => stage_compare_enable,
       m_axis_result_tdata => stage_compare_out
     );       
    process(clk)
     begin
     if(rising_edge(clk)) then
     if(m_axis_result_tvalid_compare='1') then
     time_end<= time'(now);
     stage_pass <= stage_compare_out(0);
     
     else
     stage_pass <= 'U';
     end if; 
     end if; 
     end process;
  
                                                                                                  
end Behavioral;
