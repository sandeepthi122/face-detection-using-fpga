----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/10/2017 06:54:07 PM
-- Design Name: 
-- Module Name: fifo_control_design - Behavioral
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
-------Package for sorting contains sorting of two dimensions

library ieee;
use ieee.std_logic_1164.all;
use IEEE.NUMERIC_STD.ALL;
library work;
use work.buf_ary.all;
entity fifo_control is
generic(constant fifo_depth: positive:=20);
Port (clk,rst:in std_logic;
 d_in:in image_data;
 d_out:out image_data );
end fifo_control;

architecture Behavioral of fifo_control is
type memory is array(0 to fifo_depth-1) of image_data;
type state is(idle,loading);
signal pr_state,nx_state:state;
signal rd_en,wr_en:std_logic ;
begin
fifo_seq:process(clk,rst)
begin
if(rst='1') then
    pr_state<=idle;
    rd_en<='1';
    wr_en<='1';
elsif rising_edge(CLK) then
	pr_state<=nx_state;
end if;
end process;	
fifo_comb:process(rd_en,wr_en,d_in,pr_state)
variable fifo_memory:memory;
variable wr_add,rd_add: natural range 0 to fifo_depth-1;
variable count:positive:=1;
variable offset:positive:=1;
begin
case pr_state is
when idle=> 
            wr_add:=0;
            rd_add:=1;
            if(wr_en='1' and rd_en='1') then
            nx_state<=loading;
            else
            nx_state<=idle;
            end if;
            d_out.data<="00000000";
--            d_out.add_row<=d_in.add_row;
--            d_out.add_col<=d_in.add_col;
when loading=>
            if(count<=fifo_depth) then
                if wr_en='1' then
	               if(wr_add/=rd_add or offset>=1) then
	                   fifo_memory(wr_add).data:=d_in.data;
	                   fifo_memory(wr_add).add_row:=d_in.add_row;
	                   fifo_memory(wr_add).add_col:=d_in.add_col;
	                   if(wr_add=fifo_depth-1) then
	                       wr_add:=0;
	                       else
	                       wr_add:=wr_add+1;
	                   end if;
                    end if;
                 end if;
	             if (rd_en='1' ) then
                   if(wr_add/=rd_add and offset>=2) then
                        if(rd_add=fifo_depth) then
                        rd_add:=1;
                        else
                        rd_add:=rd_add+1;
                        end if;
                      d_out.data<=fifo_memory(rd_add-1).data;
                      d_out.add_row<=fifo_memory(rd_add-1).add_row;
                     d_out.add_col<=fifo_memory(rd_add-1).add_col;
                       else
                      d_out.data<="00000000"; 
--                      d_out.add_row<=d_in.add_row;
--                      d_out.add_col<=d_in.add_col;  
	                 end if;
	              end if;
	             
	             nx_state<=loading;
	             offset:=offset+1;
              else
              nx_state<=idle;
              count:=1;
	         end if;
	   end case;
	   --count:=count+1;         
end process;

end Behavioral;
