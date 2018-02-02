
LIBRARY ieee;
LIBRARY std;
USE ieee.numeric_std.ALL;
USE ieee.std_logic_1164.ALL;
package buf_ary is
constant input_buf_elements:integer:=4;
type image_data is
  record
     data : unsigned(7 downto 0);
     add_row: unsigned(8 downto 0);
     add_col : unsigned(7 downto 0);
  end record;
  type integral_image_data is
    record
       data : unsigned(16 downto 0);
       add_row: unsigned(8 downto 0);
       add_col : unsigned(7 downto 0);
    end record;
type buf_ary_8bit is array(natural range<>) of unsigned(7 downto 0);
type buf_ary_17bit is array(natural range<>) of unsigned(16 downto 0);
type buf_record_8bit is array (natural range<>) of image_data;
type buf_record_2d_17bit is array(natural range<>,natural range<>) of integral_image_data;
type buf_ary_2d_17bit is array(natural range<>,natural range<>) of unsigned(16 downto 0);
type buf_record_2d_17bit_sliced is array(19 downto 0) of integral_image_data;
type integral_buffer is array(39 downto 0) of buf_record_2d_17bit_sliced;

end package buf_ary;
package body buf_ary is 
end package body;

library IEEE;
library work;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.buf_ary.all;

package pkg is
type classifier_input is array(3 downto 0) of unsigned(16 downto 0);
type coordinates is
record
add_row : unsigned(8 downto 0);
       add_col : unsigned(7 downto 0);
    end record;
type integral_coordinates is array(3 downto 0) of coordinates;    
type classifier_input_weight is
record
integral_value :classifier_input;
weight :std_logic_vector(3 downto 0);
end record;
type rect_values is array(1 to 4) of std_logic_vector(4 downto 0);
type feature_rect_gr_3 is array(1 to 6) of classifier_input_weight;
type feature_data is
record
rect1_x :std_logic_vector(4 downto 0);
rect1_y :std_logic_vector(4 downto 0);
rect1_w :std_logic_vector(4 downto 0);
rect1_h :std_logic_vector(4 downto 0);
rect2_x :std_logic_vector(4 downto 0);
rect2_y :std_logic_vector(4 downto 0);
rect2_w :std_logic_vector(4 downto 0);
rect2_h :std_logic_vector(4 downto 0);
rect3_x :std_logic_vector(4 downto 0);
rect3_y :std_logic_vector(4 downto 0);
rect3_w :std_logic_vector(4 downto 0);
rect3_h :std_logic_vector(4 downto 0);
weight1 :std_logic_vector(3 downto 0);
weight2 :std_logic_vector(3 downto 0);
weight3 :std_logic_vector(3 downto 0);
feature_threshold :std_logic_vector(31 downto 0);
left_value :std_logic_vector(31 downto 0);
right_value :std_logic_vector(31 downto 0);
stage_threshold :std_logic_vector(31 downto 0);
end record; 
type feature_data_array is array(1 to 2083) of feature_data;
-----------function for address generation of feature data to integral image
function address_generator(feature_rect_values:rect_values;integral_image:buf_record_2d_17bit(19 downto 0,19 downto 0)) return classifier_input;
--function rect_no_gr_3(enable:std_logic;feature_value:integer;integral_image:buf_record_2d_17bit(19 downto 0,19 downto 0)) return feature_rect_gr_3;
end pkg;
package body pkg is
function address_generator(feature_rect_values:rect_values;integral_image:buf_record_2d_17bit(19 downto 0,19 downto 0)) return classifier_input is
variable classifier_input_temp:classifier_input;
variable x,y,w,h,y_h,x_w:integer;-----values in rect range from 1 to 20. But, values of integral image are 0 to 19. So, changing accordingly
begin
x :=to_integer(unsigned(feature_rect_values(1)));
y :=to_integer(unsigned(feature_rect_values(2)));
w :=to_integer(unsigned(feature_rect_values(3)));
h :=to_integer(unsigned(feature_rect_values(4)));
y_h :=y+h;
x_w :=x+w;
if(y_h>=20) then
 y_h := 19;
 elsif(y=0) then
 y:=0;
 else
 y:=y-1;
 y_h :=y+h;
end if;
if(x_w>=20) then
 x_w := 19;
 elsif(x=0) then
 x:=0;
 else
 x:=x-1;
 x_w :=x+w;
end if;
classifier_input_temp(0):=integral_image(y,x).data;
classifier_input_temp(1):=integral_image(y,x_w).data;
classifier_input_temp(2):=integral_image(y_h,x).data;
classifier_input_temp(3):=integral_image(y_h,x_w).data;
return classifier_input_temp;
end function;

end package body;
-------------------------------------------------------------------------------------------------------------------------
LIBRARY IEEE;
library work;
USE ieee.std_logic_1164.all;
--USE ieee.std_logic_arith.all;
USE ieee.numeric_std.all;
use work.buf_ary.all;
use work.pkg.all;
------------------------------------------------------------------------------------------------------------------------
ENTITY read_image IS
  
  PORT
  (rst : IN STD_LOGIC;
     clk : IN STD_LOGIC;
     vid_in: IN STD_LOGIC_VECTOR(7 DOWNTO 0);   -- Pixels from main memory
 	   hor_sync: IN STD_LOGIC;                    -- Horizontal synchronous pulse
	   vert_sync: IN STD_LOGIC;                   -- Vertical synchronous pulse
      val_flag: IN BIT;    
    
      vid_out: INOUT buf_record_2d_17bit(19 downto 0,19 downto 0);
      vid_out_scale_2: INOUT buf_record_2d_17bit(19 downto 0,19 downto 0);
      vid_out_scale_4: INOUT buf_record_2d_17bit(19 downto 0,19 downto 0);
      vid_out_scale_8: INOUT buf_record_2d_17bit(19 downto 0,19 downto 0);
--face_coordinates :out integral_coordinates;
execution_time : out integer
  ); 
END;

-------------------------------------------------------------------------------------------------------------------
ARCHITECTURE read_image_behaviour OF read_image IS
 -- TYPE buf_ary IS ARRAY(NATURAL RANGE <>) OF UNSIGNED(7 DOWNTO 0);
 component fifo_control
 generic(constant fifo_depth: positive:=20);
 Port (clk,rst:in std_logic;
  d_in:in image_data;
  d_out:out image_data );
  
   end component;
   component shift_register_temp 
  Port(CLK,RST:in std_logic;
   sh_reg_in :in buf_record_8bit(19 downto 0);
   sh_reg_out :inout buf_record_2d_17bit(19 downto 0,19 downto 0);
   int_image_valid :out std_logic);
   end component;

component feature_controller is
Port (enable_classifier:in std_logic;------to enable classification after integral subwindow is ready
clk :in std_logic;
integral_image :in buf_record_2d_17bit(19 downto 0,19 downto 0);-----integral image data for classification
integral_image_pass :out std_logic;
integral_image_trigger :out std_logic;
 face_coordinates: out integral_coordinates);
end component;
   --Internal Buffers 
  SIGNAL buffr: buf_ary_8bit(0 to 76799):=(OTHERS=>(OTHERS=>'0')); -- Internal Buffer into which pixels will be loaded
  SIGNAL data_in: STD_LOGIC_VECTOR(7 downto 0);
signal d_in_fifo:buf_record_8bit(19 downto 0):= (others=>((others=>'0'),(others=>'0'),(others=>'0')));
signal fifo_vid_out:buf_record_8bit(19 downto 0):= (others=>((others=>'0'),(others=>'0'),(others=>'0')));
signal d_in_fifo_scale_2:buf_record_8bit(19 downto 0):= (others=>((others=>'0'),(others=>'0'),(others=>'0')));
signal fifo_vid_out_scale_2:buf_record_8bit(19 downto 0):= (others=>((others=>'0'),(others=>'0'),(others=>'0')));
signal d_in_fifo_scale_4:buf_record_8bit(19 downto 0):= (others=>((others=>'0'),(others=>'0'),(others=>'0')));
signal fifo_vid_out_scale_4:buf_record_8bit(19 downto 0):= (others=>((others=>'0'),(others=>'0'),(others=>'0')));
signal d_in_fifo_scale_8:buf_record_8bit(19 downto 0):= (others=>((others=>'0'),(others=>'0'),(others=>'0')));
signal fifo_vid_out_scale_8:buf_record_8bit(19 downto 0):= (others=>((others=>'0'),(others=>'0'),(others=>'0')));


------signal for scaling
SIGNAL buffr_scaled_2: buf_ary_8bit(0 to 19199):=(OTHERS=>(OTHERS=>'0'));        
SIGNAL buffr_scaled_4: buf_ary_8bit(0 to 4799):=(OTHERS=>(OTHERS=>'0')); 
SIGNAL buffr_scaled_8: buf_ary_8bit(0 to 1199):=(OTHERS=>(OTHERS=>'0')); 
signal trigger_2:std_logic:='1';
signal scale_ack_2: std_logic;
signal trigger_4:std_logic;
signal scale_ack_4: std_logic;
signal trigger_8:std_logic;
signal scale_ack_8: std_logic;
signal trigger_8_int:std_logic;
signal trigger_4_int:std_logic;
signal trigger_2_int:std_logic;

--Status signals
signal integral_image_enable:std_logic:='1';
signal int_image_valid:std_logic;
signal integral_image_enable_scale_2:std_logic:='1';
signal int_image_valid_scale_2:std_logic;
signal integral_image_enable_scale_4:std_logic:='1';
signal int_image_valid_scale_4:std_logic;
signal integral_image_enable_scale_8:std_logic:='1';
signal int_image_valid_scale_8:std_logic;
  SIGNAL col_res : INTEGER; -- Total columns
  SIGNAL row_res: INTEGER; -- Total Rows
  signal row_cnt: INTEGER:=0;
  signal col_cnt: INTEGER:=0;
  signal integral_image_pass:std_logic;
  signal face:std_logic;
    signal integral_image_pass_scale_2:std_logic;
  signal face_scale_2:std_logic;
    signal integral_image_pass_scale_4:std_logic;
  signal face_scale_4:std_logic;
    signal integral_image_pass_scale_8:std_logic;
  signal face_scale_8:std_logic;
  signal face_coordinates:integral_coordinates;
  signal time_integral:time;
    signal time_integral_end:time;
 BEGIN
  --**** Represents the buffering of incoming frame in DDR3 Memory*****
  buff : PROCESS(clk)             
   VARIABLE index: INTEGER :=0;

   VARIABLE col_tr: BOOLEAN:=FALSE;
  BEGIN
      IF CLK'EVENT AND (CLK='1') THEN
  		  IF (val_flag='1' and index<=76799 ) THEN 
  		
                  buffr(index)<=UNSIGNED(vid_in);
                  index:=index+1;
                 IF (col_tr=FALSE) THEN
                     col_cnt<=col_cnt+1;
                    
                 END IF;
		 END IF;
--If horizontal synchronous pulse is 1, it is the end of the row		  
        IF (hor_sync='1') THEN
            row_cnt<=row_cnt+1;
            
            IF (col_tr=FALSE) THEN
                col_res<=col_cnt;
                col_cnt<=0;
            END IF;
        END IF;
        IF (vert_sync='1') THEN
             row_res<=row_cnt;
             col_cnt<=0;
           index:=0;
      END IF;
	   
      END IF;   
    END PROCESS buff;
    -------down scaling image by 2 
scale_2 : process(clk)
    variable index_scale:integer:=0;
    variable offset_scale:integer:=0;
    begin
    if(trigger_2='1') then
    
    -------scaling image
    
    offset_scale :=index_scale rem 240;
    if(row_cnt>=300) then
        if (offset_scale=0 and index_scale<19199) then
        buffr_scaled_2(index_scale)<=(buffr(index_scale*4)+buffr((index_scale*4)+1)+buffr((4*index_scale)+240)+buffr((4*index_scale)+241))/4;
        elsif(index_scale<19199) then
        buffr_scaled_2(index_scale)<=(buffr(index_scale*2)+buffr((index_scale*2)+1)+buffr((2*index_scale)+240)+buffr((2*index_scale)+241))/4;
        else
        --ASSERT (finish/='1') REPORT "One Frame Completed!" SEVERITY WARNING;
        scale_ack_2<='1';
        end if;
        index_scale:=index_scale+1;
    end if;    
    end if;
   
    if(index_scale>18000) then
    trigger_4<='1';
    else
    trigger_4<='0';
    end if;
    if(index_scale>10500) then
    trigger_2_int<='1';
    end if;
  
    end process;
    	 
    -------down scaling image by 4
scale_4 : process(clk)
    variable index_scale:integer:=0;
    variable offset_scale:integer:=0;
    begin
    if(trigger_4='1') then
    
    -------scaling image
    
    offset_scale :=index_scale rem 120;
   -- if(row_cnt>=2000) then
        if (offset_scale=0 and index_scale<4799) then
        buffr_scaled_4(index_scale)<=(buffr_scaled_2(index_scale*4)+buffr_scaled_2((index_scale*4)+1)+buffr_scaled_2((4*index_scale)+120)+buffr_scaled_2((4*index_scale)+121))/4;
        elsif(index_scale<4799) then
        buffr_scaled_4(index_scale)<=(buffr_scaled_2(index_scale*2)+buffr_scaled_2((index_scale*2)+1)+buffr_scaled_2((2*index_scale)+120)+buffr_scaled_2((2*index_scale)+121))/4;
        else
        --ASSERT (finish/='1') REPORT "One Frame Completed!" SEVERITY WARNING;
        scale_ack_4<='1';
        end if;
        index_scale:=index_scale+1;
   -- end if;    
    end if;
      
    if(index_scale>1500) then
    trigger_4_int<='1';
    end if;
    
    if(index_scale>4600) then
    trigger_8<='1';
    else
    trigger_8<='0';
    end if;
    
    end process;
    
    -------down scaling image by 8
scale_8 : process(clk)
    variable index_scale:integer:=0;
    variable offset_scale:integer:=0;
    begin
    if(trigger_8='1') then
    
    -------scaling image
    
    offset_scale :=index_scale rem 60;
   -- if(row_cnt>=2000) then
        if (offset_scale=0 and index_scale<1199) then
        buffr_scaled_8(index_scale)<=(buffr_scaled_4(index_scale*4)+buffr_scaled_4((index_scale*4)+1)+buffr_scaled_4((4*index_scale)+60)+buffr_scaled_4((4*index_scale)+61))/4;
        elsif(index_scale<1199) then
        buffr_scaled_8(index_scale)<=(buffr_scaled_4(index_scale*2)+buffr_scaled_4((index_scale*2)+1)+buffr_scaled_4((2*index_scale)+60)+buffr_scaled_4((2*index_scale)+61))/4;
        else
        --ASSERT (finish/='1') REPORT "One Frame Completed!" SEVERITY WARNING;
        scale_ack_8<='1';
        end if;
        index_scale:=index_scale+1;
   -- end if;    
    end if;
       if(index_scale>900) then
    trigger_8_int<='1';
    end if; 
    end process;  
      
--************send data to calculate integral image for 320*240 image**************
integral_image_original : PROCESS(col_cnt,clk)

variable offset_row: integer:=0;
variable offset_col: integer:=0;

VARIABLE  hor_cnt_op:INTEGER:=240;
VARIABLE row_cnt_op:INTEGER:=0;
BEGIN

 if(rising_edge(clk)) then
   IF(row_cnt>=50) THEN 
time_integral<=time'(now);
    d_in_fifo(0).data<=buffr(offset_row+offset_col);
    d_in_fifo(0).add_col<=to_unsigned(offset_col,8);
    d_in_fifo(0).add_row<=to_unsigned(row_cnt_op,9);
    
    d_in_fifo(1).data<=buffr(240+offset_row+offset_col);
    d_in_fifo(1).add_col<=to_unsigned(offset_col,8);
    d_in_fifo(1).add_row<=to_unsigned(row_cnt_op+1,9);
    
    d_in_fifo(2).data<=buffr(480+offset_row+offset_col);
    d_in_fifo(2).add_col<=to_unsigned(offset_col,8);
    d_in_fifo(2).add_row<=to_unsigned(row_cnt_op+2,9);
    
    d_in_fifo(3).data <=buffr(240*3+offset_row+offset_col);
    d_in_fifo(3).add_col<=to_unsigned(offset_col,8);
    d_in_fifo(3).add_row<=to_unsigned(row_cnt_op+3,9);
    
    d_in_fifo(4).data <=buffr(240*4+offset_row+offset_col);
    d_in_fifo(4).add_col<=to_unsigned(offset_col,8);
    d_in_fifo(4).add_row<=to_unsigned(row_cnt_op+4,9);
    
    d_in_fifo(5).data <=buffr(240*5+offset_row+offset_col);
    d_in_fifo(5).add_col<=to_unsigned(offset_col,8);
    d_in_fifo(5).add_row<=to_unsigned(row_cnt_op+5,9);
    
    d_in_fifo(6).data <=buffr(240*6+offset_row+offset_col);
    d_in_fifo(6).add_col<=to_unsigned(offset_col,8);
    d_in_fifo(6).add_row<=to_unsigned(row_cnt_op+6,9);
    
    d_in_fifo(7).data <=buffr(240*7+offset_row+offset_col);
    d_in_fifo(7).add_col<=to_unsigned(offset_col,8);
    d_in_fifo(7).add_row<=to_unsigned(row_cnt_op+7,9);
    
    d_in_fifo(8).data <=buffr(240*8+offset_row+offset_col);
    d_in_fifo(8).add_col<=to_unsigned(offset_col,8);
    d_in_fifo(8).add_row<=to_unsigned(row_cnt_op+8,9);
    
    d_in_fifo(9).data <=buffr(240*9+offset_row+offset_col);
    d_in_fifo(9).add_col<=to_unsigned(offset_col,8);
    d_in_fifo(9).add_row<=to_unsigned(row_cnt_op+9,9);
    
    d_in_fifo(10).data <=buffr(240*10+offset_row+offset_col);
    d_in_fifo(10).add_col<=to_unsigned(offset_col,8);
    d_in_fifo(10).add_row<=to_unsigned(row_cnt_op+10,9);
    
    d_in_fifo(11).data <=buffr(240*11+offset_row+offset_col);
    d_in_fifo(11).add_col<=to_unsigned(offset_col,8);
    d_in_fifo(11).add_row<=to_unsigned(row_cnt_op+11,9);
    
    d_in_fifo(12).data <=buffr(240*12+offset_row+offset_col);
    d_in_fifo(12).add_col<=to_unsigned(offset_col,8);
    d_in_fifo(12).add_row<=to_unsigned(row_cnt_op+12,9);
    
    d_in_fifo(13).data <=buffr(240*13+offset_row+offset_col);
    d_in_fifo(13).add_col<=to_unsigned(offset_col,8);
    d_in_fifo(13).add_row<=to_unsigned(row_cnt_op+13,9);
        
    d_in_fifo(14).data <=buffr(240*14+offset_row+offset_col);
    d_in_fifo(14).add_col<=to_unsigned(offset_col,8);
    d_in_fifo(14).add_row<=to_unsigned(row_cnt_op+14,9);
        
    d_in_fifo(15).data <=buffr(240*15+offset_row+offset_col);
    d_in_fifo(15).add_col<=to_unsigned(offset_col,8);
    d_in_fifo(15).add_row<=to_unsigned(row_cnt_op+15,9);
        
    d_in_fifo(16).data <=buffr(240*16+offset_row+offset_col);
    d_in_fifo(16).add_col<=to_unsigned(offset_col,8);
    d_in_fifo(16).add_row<=to_unsigned(row_cnt_op+16,9);    
    
    d_in_fifo(17).data <=buffr(240*17+offset_row+offset_col);
    d_in_fifo(17).add_col<=to_unsigned(offset_col,8);
    d_in_fifo(17).add_row<=to_unsigned(row_cnt_op+17,9);
        
    d_in_fifo(18).data <=buffr(240*18+offset_row+offset_col);
    d_in_fifo(18).add_col<=to_unsigned(offset_col,8);
    d_in_fifo(18).add_row<=to_unsigned(row_cnt_op+18,9);
        
    d_in_fifo(19).data <=buffr(240*19+offset_row+offset_col);
    d_in_fifo(19).add_col<=to_unsigned(offset_col,8);
    d_in_fifo(19).add_row<=to_unsigned(row_cnt_op+19,9);
        
if(integral_image_enable='1' or int_image_valid='0') then
time_integral_end<=time'(now);
     if(offset_col=239) then
     offset_col:=0;
     if(offset_row=72000) then
     offset_row:=0;
     else
     offset_row:=offset_row+hor_cnt_op;
     row_cnt_op:=row_cnt_op+1;
     end if;
     else
     offset_col:=offset_col+1;
     end if;
     end if;
    end if;
  end if;  
END PROCESS integral_image_original  ;

--************send data to calculate integral image for 160*120 image**************
integral_image_scale_2 : PROCESS(col_cnt,clk)

variable offset_row: integer:=0;
variable offset_col: integer:=0;

VARIABLE  hor_cnt_op:INTEGER:=120;
VARIABLE row_cnt_op:INTEGER:=0;
BEGIN

 if(rising_edge(clk)) then
   IF(trigger_2_int='1') then 

    d_in_fifo_scale_2(0).data<=buffr_scaled_2(offset_row+offset_col);
    d_in_fifo_scale_2(0).add_col<=to_unsigned(offset_col*2,8);
    d_in_fifo_scale_2(0).add_row<=to_unsigned(row_cnt_op*2,9);
    
    d_in_fifo_scale_2(1).data<=buffr_scaled_2(120+offset_row+offset_col);
    d_in_fifo_scale_2(1).add_col<=to_unsigned(offset_col*2,8);
    d_in_fifo_scale_2(1).add_row<=to_unsigned((row_cnt_op+1)*2,9);
    
    d_in_fifo_scale_2(2).data<=buffr_scaled_2(120*2+offset_row+offset_col);
    d_in_fifo_scale_2(2).add_col<=to_unsigned(offset_col*2,8);
    d_in_fifo_scale_2(2).add_row<=to_unsigned((row_cnt_op+2)*2,9);
    
    d_in_fifo_scale_2(3).data <=buffr_scaled_2(120*3+offset_row+offset_col);
    d_in_fifo_scale_2(3).add_col<=to_unsigned(offset_col*2,8);
    d_in_fifo_scale_2(3).add_row<=to_unsigned((row_cnt_op+3)*2,9);
    
    d_in_fifo_scale_2(4).data <=buffr_scaled_2(120*4+offset_row+offset_col);
    d_in_fifo_scale_2(4).add_col<=to_unsigned(offset_col*2,8);
    d_in_fifo_scale_2(4).add_row<=to_unsigned((row_cnt_op+4)*2,9);
    
    d_in_fifo_scale_2(5).data <=buffr_scaled_2(120*5+offset_row+offset_col);
    d_in_fifo_scale_2(5).add_col<=to_unsigned(offset_col*2,8);
    d_in_fifo_scale_2(5).add_row<=to_unsigned((row_cnt_op+5)*2,9);
    
    d_in_fifo_scale_2(6).data <=buffr_scaled_2(120*6+offset_row+offset_col);
    d_in_fifo_scale_2(6).add_col<=to_unsigned(offset_col*2,8);
    d_in_fifo_scale_2(6).add_row<=to_unsigned((row_cnt_op+6)*2,9);
    
    d_in_fifo_scale_2(7).data <=buffr_scaled_2(120*7+offset_row+offset_col);
    d_in_fifo_scale_2(7).add_col<=to_unsigned(offset_col*2,8);
    d_in_fifo_scale_2(7).add_row<=to_unsigned((row_cnt_op+7)*2,9);
    
    d_in_fifo_scale_2(8).data <=buffr_scaled_2(120*8+offset_row+offset_col);
    d_in_fifo_scale_2(8).add_col<=to_unsigned(offset_col*2,8);
    d_in_fifo_scale_2(8).add_row<=to_unsigned((row_cnt_op+8)*2,9);
    
    d_in_fifo_scale_2(9).data <=buffr_scaled_2(120*9+offset_row+offset_col);
    d_in_fifo_scale_2(9).add_col<=to_unsigned(offset_col*2,8);
    d_in_fifo_scale_2(9).add_row<=to_unsigned((row_cnt_op+9)*2,9);
    
    d_in_fifo_scale_2(10).data <=buffr_scaled_2(120*10+offset_row+offset_col);
    d_in_fifo_scale_2(10).add_col<=to_unsigned(offset_col*2,8);
    d_in_fifo_scale_2(10).add_row<=to_unsigned((row_cnt_op+10)*2,9);
    
    d_in_fifo_scale_2(11).data <=buffr_scaled_2(120*11+offset_row+offset_col);
    d_in_fifo_scale_2(11).add_col<=to_unsigned(offset_col*2,8);
    d_in_fifo_scale_2(11).add_row<=to_unsigned((row_cnt_op+11)*2,9);
    
    d_in_fifo_scale_2(12).data <=buffr_scaled_2(120*12+offset_row+offset_col);
    d_in_fifo_scale_2(12).add_col<=to_unsigned(offset_col*2,8);
    d_in_fifo_scale_2(12).add_row<=to_unsigned((row_cnt_op+12)*2,9);
    
    d_in_fifo_scale_2(13).data <=buffr_scaled_2(120*13+offset_row+offset_col);
    d_in_fifo_scale_2(13).add_col<=to_unsigned(offset_col*2,8);
    d_in_fifo_scale_2(13).add_row<=to_unsigned((row_cnt_op+13)*2,9);
        
    d_in_fifo_scale_2(14).data <=buffr_scaled_2(120*14+offset_row+offset_col);
    d_in_fifo_scale_2(14).add_col<=to_unsigned(offset_col*2,8);
    d_in_fifo_scale_2(14).add_row<=to_unsigned((row_cnt_op+14)*2,9);
        
    d_in_fifo_scale_2(15).data <=buffr_scaled_2(120*15+offset_row+offset_col);
    d_in_fifo_scale_2(15).add_col<=to_unsigned(offset_col*2,8);
    d_in_fifo_scale_2(15).add_row<=to_unsigned((row_cnt_op+15)*2,9);
        
    d_in_fifo_scale_2(16).data <=buffr_scaled_2(120*16+offset_row+offset_col);
    d_in_fifo_scale_2(16).add_col<=to_unsigned(offset_col*2,8);
    d_in_fifo_scale_2(16).add_row<=to_unsigned((row_cnt_op+16)*2,9);    
    
    d_in_fifo_scale_2(17).data <=buffr_scaled_2(120*17+offset_row+offset_col);
    d_in_fifo_scale_2(17).add_col<=to_unsigned(offset_col*2,8);
    d_in_fifo_scale_2(17).add_row<=to_unsigned((row_cnt_op+17)*2,9);
        
    d_in_fifo_scale_2(18).data <=buffr_scaled_2(120*18+offset_row+offset_col);
    d_in_fifo_scale_2(18).add_col<=to_unsigned(offset_col*2,8);
    d_in_fifo_scale_2(18).add_row<=to_unsigned((row_cnt_op+18)*2,9);
        
    d_in_fifo_scale_2(19).data <=buffr_scaled_2(120*19+offset_row+offset_col);
    d_in_fifo_scale_2(19).add_col<=to_unsigned(offset_col*2,8);
    d_in_fifo_scale_2(19).add_row<=to_unsigned((row_cnt_op+19)*2,9);
        
if(integral_image_enable_scale_2='1' or int_image_valid_scale_2='0') then
     if(offset_col=119) then
     offset_col:=0;
     if(offset_row=16800) then
     offset_row:=0;
     else
     offset_row:=offset_row+hor_cnt_op;
     row_cnt_op:=row_cnt_op+1;
     end if;
     else
     offset_col:=offset_col+1;
     end if;
     end if;
    end if;
  end if;  
END PROCESS integral_image_scale_2  ;


--************send data to calculate integral image for 80*60 image**************
integral_image_scale_4 : PROCESS(col_cnt,clk)

variable offset_row: integer:=0;
variable offset_col: integer:=0;

VARIABLE  hor_cnt_op:INTEGER:=60;
VARIABLE row_cnt_op:INTEGER:=0;
BEGIN

 if(rising_edge(clk)) then
   IF(trigger_4_int='1') then 

    d_in_fifo_scale_4(0).data<=buffr_scaled_4(offset_row+offset_col);
    d_in_fifo_scale_4(0).add_col<=to_unsigned(offset_col*4,8);
    d_in_fifo_scale_4(0).add_row<=to_unsigned(row_cnt_op*4,9);
    
    d_in_fifo_scale_4(1).data<=buffr_scaled_4(60+offset_row+offset_col);
    d_in_fifo_scale_4(1).add_col<=to_unsigned(offset_col*4,8);
    d_in_fifo_scale_4(1).add_row<=to_unsigned((row_cnt_op+1)*4,9);
    
    d_in_fifo_scale_4(2).data<=buffr_scaled_4(60*2+offset_row+offset_col);
    d_in_fifo_scale_4(2).add_col<=to_unsigned(offset_col*4,8);
    d_in_fifo_scale_4(2).add_row<=to_unsigned((row_cnt_op+2)*4,9);
    
    d_in_fifo_scale_4(3).data <=buffr_scaled_4(60*3+offset_row+offset_col);
    d_in_fifo_scale_4(3).add_col<=to_unsigned(offset_col*4,8);
    d_in_fifo_scale_4(3).add_row<=to_unsigned((row_cnt_op+3)*4,9);
    
    d_in_fifo_scale_4(4).data <=buffr_scaled_4(60*4+offset_row+offset_col);
    d_in_fifo_scale_4(4).add_col<=to_unsigned(offset_col*4,8);
    d_in_fifo_scale_4(4).add_row<=to_unsigned((row_cnt_op+4)*4,9);
    
    d_in_fifo_scale_4(5).data <=buffr_scaled_4(60*5+offset_row+offset_col);
    d_in_fifo_scale_4(5).add_col<=to_unsigned(offset_col*4,8);
    d_in_fifo_scale_4(5).add_row<=to_unsigned((row_cnt_op+5)*4,9);
    
    d_in_fifo_scale_4(6).data <=buffr_scaled_4(60*6+offset_row+offset_col);
    d_in_fifo_scale_4(6).add_col<=to_unsigned(offset_col*4,8);
    d_in_fifo_scale_4(6).add_row<=to_unsigned((row_cnt_op+6)*4,9);
    
    d_in_fifo_scale_4(7).data <=buffr_scaled_4(60*7+offset_row+offset_col);
    d_in_fifo_scale_4(7).add_col<=to_unsigned(offset_col*4,8);
    d_in_fifo_scale_4(7).add_row<=to_unsigned((row_cnt_op+7)*4,9);
    
    d_in_fifo_scale_4(8).data <=buffr_scaled_4(60*8+offset_row+offset_col);
    d_in_fifo_scale_4(8).add_col<=to_unsigned(offset_col*4,8);
    d_in_fifo_scale_4(8).add_row<=to_unsigned((row_cnt_op+8)*4,9);
    
    d_in_fifo_scale_4(9).data <=buffr_scaled_4(60*9+offset_row+offset_col);
    d_in_fifo_scale_4(9).add_col<=to_unsigned(offset_col*4,8);
    d_in_fifo_scale_4(9).add_row<=to_unsigned((row_cnt_op+9)*4,9);
    
    d_in_fifo_scale_4(10).data <=buffr_scaled_4(60*10+offset_row+offset_col);
    d_in_fifo_scale_4(10).add_col<=to_unsigned(offset_col*4,8);
    d_in_fifo_scale_4(10).add_row<=to_unsigned((row_cnt_op+10)*4,9);
    
    d_in_fifo_scale_4(11).data <=buffr_scaled_4(60*11+offset_row+offset_col);
    d_in_fifo_scale_4(11).add_col<=to_unsigned(offset_col*4,8);
    d_in_fifo_scale_4(11).add_row<=to_unsigned((row_cnt_op+11)*4,9);
    
    d_in_fifo_scale_4(12).data <=buffr_scaled_4(60*12+offset_row+offset_col);
    d_in_fifo_scale_4(12).add_col<=to_unsigned(offset_col*4,8);
    d_in_fifo_scale_4(12).add_row<=to_unsigned((row_cnt_op+12)*4,9);
    
    d_in_fifo_scale_4(13).data <=buffr_scaled_4(60*13+offset_row+offset_col);
    d_in_fifo_scale_4(13).add_col<=to_unsigned(offset_col*4,8);
    d_in_fifo_scale_4(13).add_row<=to_unsigned((row_cnt_op+13)*4,9);
        
    d_in_fifo_scale_4(14).data <=buffr_scaled_4(60*14+offset_row+offset_col);
    d_in_fifo_scale_4(14).add_col<=to_unsigned(offset_col*4,8);
    d_in_fifo_scale_4(14).add_row<=to_unsigned((row_cnt_op+14)*4,9);
        
    d_in_fifo_scale_4(15).data <=buffr_scaled_4(60*15+offset_row+offset_col);
    d_in_fifo_scale_4(15).add_col<=to_unsigned(offset_col*4,8);
    d_in_fifo_scale_4(15).add_row<=to_unsigned((row_cnt_op+15)*4,9);
        
    d_in_fifo_scale_4(16).data <=buffr_scaled_4(60*16+offset_row+offset_col);
    d_in_fifo_scale_4(16).add_col<=to_unsigned(offset_col*4,8);
    d_in_fifo_scale_4(16).add_row<=to_unsigned((row_cnt_op+16)*4,9);    
    
    d_in_fifo_scale_4(17).data <=buffr_scaled_4(60*17+offset_row+offset_col);
    d_in_fifo_scale_4(17).add_col<=to_unsigned(offset_col*4,8);
    d_in_fifo_scale_4(17).add_row<=to_unsigned((row_cnt_op+17)*4,9);
        
    d_in_fifo_scale_4(18).data <=buffr_scaled_4(60*18+offset_row+offset_col);
    d_in_fifo_scale_4(18).add_col<=to_unsigned(offset_col*4,8);
    d_in_fifo_scale_4(18).add_row<=to_unsigned((row_cnt_op+18)*4,9);
        
    d_in_fifo_scale_4(19).data <=buffr_scaled_4(60*19+offset_row+offset_col);
    d_in_fifo_scale_4(19).add_col<=to_unsigned(offset_col*4,8);
    d_in_fifo_scale_4(19).add_row<=to_unsigned((row_cnt_op+19)*4,9);
        
if(integral_image_enable_scale_4='1' or int_image_valid_scale_4='0' ) then
     if(offset_col=59) then
     offset_col:=0;
     if(offset_row=3600) then
     offset_row:=0;
     else
     offset_row:=offset_row+hor_cnt_op;
     row_cnt_op:=row_cnt_op+1;
     end if;
     else
     offset_col:=offset_col+1;
     end if;
     end if;
    end if;
  end if;  
END PROCESS integral_image_scale_4  ;

--************send data to calculate integral image for 40*30 image**************
integral_image_scale_8 : PROCESS(col_cnt,clk)

variable offset_row: integer:=0;
variable offset_col: integer:=0;

VARIABLE  hor_cnt_op:INTEGER:=30;
VARIABLE row_cnt_op:INTEGER:=0;
BEGIN

 if(rising_edge(clk)) then
  IF(trigger_8_int='1') then 

    d_in_fifo_scale_8(0).data<=buffr_scaled_8(offset_row+offset_col);
    d_in_fifo_scale_8(0).add_col<=to_unsigned(offset_col*8,8);
    d_in_fifo_scale_8(0).add_row<=to_unsigned(row_cnt_op*8,9);
    
    d_in_fifo_scale_8(1).data<=buffr_scaled_8(30+offset_row+offset_col);
    d_in_fifo_scale_8(1).add_col<=to_unsigned(offset_col*8,8);
    d_in_fifo_scale_8(1).add_row<=to_unsigned((row_cnt_op+1)*8,9);
    
    d_in_fifo_scale_8(2).data<=buffr_scaled_8(30*2+offset_row+offset_col);
    d_in_fifo_scale_8(2).add_col<=to_unsigned(offset_col*8,8);
    d_in_fifo_scale_8(2).add_row<=to_unsigned((row_cnt_op+2)*8,9);
    
    d_in_fifo_scale_8(3).data <=buffr_scaled_8(30*3+offset_row+offset_col);
    d_in_fifo_scale_8(3).add_col<=to_unsigned(offset_col*8,8);
    d_in_fifo_scale_8(3).add_row<=to_unsigned((row_cnt_op+3)*8,9);
    
    d_in_fifo_scale_8(4).data <=buffr_scaled_8(30*4+offset_row+offset_col);
    d_in_fifo_scale_8(4).add_col<=to_unsigned(offset_col*8,8);
    d_in_fifo_scale_8(4).add_row<=to_unsigned((row_cnt_op+4)*8,9);
    
    d_in_fifo_scale_8(5).data <=buffr_scaled_8(30*5+offset_row+offset_col);
    d_in_fifo_scale_8(5).add_col<=to_unsigned(offset_col*8,8);
    d_in_fifo_scale_8(5).add_row<=to_unsigned((row_cnt_op+5)*8,9);
    
    d_in_fifo_scale_8(6).data <=buffr_scaled_8(30*6+offset_row+offset_col);
    d_in_fifo_scale_8(6).add_col<=to_unsigned(offset_col*8,8);
    d_in_fifo_scale_8(6).add_row<=to_unsigned((row_cnt_op+6)*8,9);
    
    d_in_fifo_scale_8(7).data <=buffr_scaled_8(30*7+offset_row+offset_col);
    d_in_fifo_scale_8(7).add_col<=to_unsigned(offset_col*8,8);
    d_in_fifo_scale_8(7).add_row<=to_unsigned((row_cnt_op+7)*8,9);
    
    d_in_fifo_scale_8(8).data <=buffr_scaled_8(30*8+offset_row+offset_col);
    d_in_fifo_scale_8(8).add_col<=to_unsigned(offset_col*8,8);
    d_in_fifo_scale_8(8).add_row<=to_unsigned((row_cnt_op+8)*8,9);
    
    d_in_fifo_scale_8(9).data <=buffr_scaled_8(30*9+offset_row+offset_col);
    d_in_fifo_scale_8(9).add_col<=to_unsigned(offset_col*8,8);
    d_in_fifo_scale_8(9).add_row<=to_unsigned((row_cnt_op+9)*8,9);
    
    d_in_fifo_scale_8(10).data <=buffr_scaled_8(30*10+offset_row+offset_col);
    d_in_fifo_scale_8(10).add_col<=to_unsigned(offset_col*8,8);
    d_in_fifo_scale_8(10).add_row<=to_unsigned((row_cnt_op+10)*8,9);
    
    d_in_fifo_scale_8(11).data <=buffr_scaled_8(30*11+offset_row+offset_col);
    d_in_fifo_scale_8(11).add_col<=to_unsigned(offset_col*8,8);
    d_in_fifo_scale_8(11).add_row<=to_unsigned((row_cnt_op+11)*8,9);
    
    d_in_fifo_scale_8(12).data <=buffr_scaled_4(30*12+offset_row+offset_col);
    d_in_fifo_scale_8(12).add_col<=to_unsigned(offset_col*4,8);
    d_in_fifo_scale_8(12).add_row<=to_unsigned((row_cnt_op+12)*4,9);
    
    d_in_fifo_scale_8(13).data <=buffr_scaled_8(30*13+offset_row+offset_col);
    d_in_fifo_scale_8(13).add_col<=to_unsigned(offset_col*8,8);
    d_in_fifo_scale_8(13).add_row<=to_unsigned((row_cnt_op+13)*8,9);
        
    d_in_fifo_scale_8(14).data <=buffr_scaled_8(30*14+offset_row+offset_col);
    d_in_fifo_scale_8(14).add_col<=to_unsigned(offset_col*8,8);
    d_in_fifo_scale_8(14).add_row<=to_unsigned((row_cnt_op+14)*8,9);
        
    d_in_fifo_scale_8(15).data <=buffr_scaled_8(30*15+offset_row+offset_col);
    d_in_fifo_scale_8(15).add_col<=to_unsigned(offset_col*8,8);
    d_in_fifo_scale_8(15).add_row<=to_unsigned((row_cnt_op+15)*8,9);
        
    d_in_fifo_scale_8(16).data <=buffr_scaled_8(30*16+offset_row+offset_col);
    d_in_fifo_scale_8(16).add_col<=to_unsigned(offset_col*8,8);
    d_in_fifo_scale_8(16).add_row<=to_unsigned((row_cnt_op+16)*8,9);    
    
    d_in_fifo_scale_8(17).data <=buffr_scaled_8(30*17+offset_row+offset_col);
    d_in_fifo_scale_8(17).add_col<=to_unsigned(offset_col*8,8);
    d_in_fifo_scale_8(17).add_row<=to_unsigned((row_cnt_op+17)*8,9);
        
    d_in_fifo_scale_8(18).data <=buffr_scaled_8(30*18+offset_row+offset_col);
    d_in_fifo_scale_8(18).add_col<=to_unsigned(offset_col*8,8);
    d_in_fifo_scale_4(18).add_row<=to_unsigned((row_cnt_op+18)*8,9);
        
    d_in_fifo_scale_8(19).data <=buffr_scaled_8(30*19+offset_row+offset_col);
    d_in_fifo_scale_8(19).add_col<=to_unsigned(offset_col*8,8);
    d_in_fifo_scale_8(19).add_row<=to_unsigned((row_cnt_op+19)*8,9);
        
if(integral_image_enable_scale_8='1' or int_image_valid_scale_8='0') then
     if(offset_col=29) then
     offset_col:=0;
     if(offset_row=600) then
     offset_row:=0;
     else
     offset_row:=offset_row+hor_cnt_op;
     row_cnt_op:=row_cnt_op+1;
     end if;
     else
     offset_col:=offset_col+1;
     end if;
  elsif(int_image_valid_scale_8='1') then
    --time_integral_end<=time'(now); 
     end if;
    end if;
  end if;  
END PROCESS integral_image_scale_8  ;

fifo_0 : fifo_control port map(clk,rst,d_in_fifo(0),fifo_vid_out(0));
         
fifo_1 : fifo_control port map(clk,rst,d_in_fifo(1),fifo_vid_out(1));
         
fifo_2 : fifo_control port map(clk,rst,d_in_fifo(2),fifo_vid_out(2));
         
fifo_3 : fifo_control port map(clk,rst,d_in_fifo(3),fifo_vid_out(3));

fifo_4 : fifo_control port map(clk,rst,d_in_fifo(4),fifo_vid_out(4));
         
fifo_5 : fifo_control port map(clk,rst,d_in_fifo(5),fifo_vid_out(5));
         
fifo_6 : fifo_control port map(clk,rst,d_in_fifo(6),fifo_vid_out(6));
         
fifo_7 : fifo_control port map(clk,rst,d_in_fifo(7),fifo_vid_out(7));

fifo_8 : fifo_control port map(clk,rst,d_in_fifo(8),fifo_vid_out(8));
         
fifo_9 : fifo_control port map(clk,rst,d_in_fifo(9),fifo_vid_out(9));
         
fifo_10 : fifo_control port map(clk,rst,d_in_fifo(10),fifo_vid_out(10));
         
fifo_11 : fifo_control port map(clk,rst,d_in_fifo(11),fifo_vid_out(11));

fifo_12 : fifo_control port map(clk,rst,d_in_fifo(12),fifo_vid_out(12));
         
fifo_13 : fifo_control port map(clk,rst,d_in_fifo(13),fifo_vid_out(13));
         
fifo_14 : fifo_control port map(clk,rst,d_in_fifo(14),fifo_vid_out(14));
         
fifo_15 : fifo_control port map(clk,rst,d_in_fifo(15),fifo_vid_out(15));

fifo_16 : fifo_control port map(clk,rst,d_in_fifo(16),fifo_vid_out(16));
         
fifo_17 : fifo_control port map(clk,rst,d_in_fifo(17),fifo_vid_out(17));
         
fifo_18 : fifo_control port map(clk,rst,d_in_fifo(18),fifo_vid_out(18));
         
fifo_19 : fifo_control port map(clk,rst,d_in_fifo(19),fifo_vid_out(19));

sh_reg : shift_register_temp port map(clk,rst,fifo_vid_out,vid_out,int_image_valid);

-------------integral image for scaled image with 2
fifo_0_scale_2 : fifo_control port map(clk,rst,d_in_fifo_scale_2(0),fifo_vid_out_scale_2(0));
         
fifo_1_scale_2 : fifo_control port map(clk,rst,d_in_fifo_scale_2(1),fifo_vid_out_scale_2(1));
         
fifo_2_scale_2 : fifo_control port map(clk,rst,d_in_fifo_scale_2(2),fifo_vid_out_scale_2(2));
         
fifo_3_scale_2 : fifo_control port map(clk,rst,d_in_fifo_scale_2(3),fifo_vid_out_scale_2(3));

fifo_4_scale_2 : fifo_control port map(clk,rst,d_in_fifo_scale_2(4),fifo_vid_out_scale_2(4));
         
fifo_5_scale_2 : fifo_control port map(clk,rst,d_in_fifo_scale_2(5),fifo_vid_out_scale_2(5));
         
fifo_6_scale_2 : fifo_control port map(clk,rst,d_in_fifo_scale_2(6),fifo_vid_out_scale_2(6));
         
fifo_7_scale_2 : fifo_control port map(clk,rst,d_in_fifo_scale_2(7),fifo_vid_out_scale_2(7));

fifo_8_scale_2 : fifo_control port map(clk,rst,d_in_fifo_scale_2(8),fifo_vid_out_scale_2(8));
         
fifo_9_scale_2 : fifo_control port map(clk,rst,d_in_fifo_scale_2(9),fifo_vid_out_scale_2(9));
         
fifo_10_scale_2 : fifo_control port map(clk,rst,d_in_fifo_scale_2(10),fifo_vid_out_scale_2(10));
         
fifo_11_scale_2 : fifo_control port map(clk,rst,d_in_fifo_scale_2(11),fifo_vid_out_scale_2(11));

fifo_12_scale_2 : fifo_control port map(clk,rst,d_in_fifo_scale_2(12),fifo_vid_out_scale_2(12));
         
fifo_13_scale_2 : fifo_control port map(clk,rst,d_in_fifo_scale_2(13),fifo_vid_out_scale_2(13));
         
fifo_14_scale_2 : fifo_control port map(clk,rst,d_in_fifo_scale_2(14),fifo_vid_out_scale_2(14));
         
fifo_15_scale_2 : fifo_control port map(clk,rst,d_in_fifo_scale_2(15),fifo_vid_out_scale_2(15));

fifo_16_scale_2 : fifo_control port map(clk,rst,d_in_fifo_scale_2(16),fifo_vid_out_scale_2(16));
         
fifo_17_scale_2 : fifo_control port map(clk,rst,d_in_fifo_scale_2(17),fifo_vid_out_scale_2(17));
         
fifo_18_scale_2 : fifo_control port map(clk,rst,d_in_fifo_scale_2(18),fifo_vid_out_scale_2(18));
         
fifo_19_scale_2 : fifo_control port map(clk,rst,d_in_fifo_scale_2(19),fifo_vid_out_scale_2(19));

sh_reg_scale_2 : shift_register_temp port map(clk,rst,fifo_vid_out_scale_2,vid_out_scale_2,int_image_valid_scale_2);


-------------integral image for scaled image with 4
fifo_0_scale_4 : fifo_control port map(clk,rst,d_in_fifo_scale_4(0),fifo_vid_out_scale_4(0));
         
fifo_1_scale_4 : fifo_control port map(clk,rst,d_in_fifo_scale_4(1),fifo_vid_out_scale_4(1));
         
fifo_2_scale_4 : fifo_control port map(clk,rst,d_in_fifo_scale_4(2),fifo_vid_out_scale_4(2));
         
fifo_3_scale_4 : fifo_control port map(clk,rst,d_in_fifo_scale_4(3),fifo_vid_out_scale_4(3));

fifo_4_scale_4 : fifo_control port map(clk,rst,d_in_fifo_scale_4(4),fifo_vid_out_scale_4(4));
         
fifo_5_scale_4 : fifo_control port map(clk,rst,d_in_fifo_scale_4(5),fifo_vid_out_scale_4(5));
         
fifo_6_scale_4 : fifo_control port map(clk,rst,d_in_fifo_scale_4(6),fifo_vid_out_scale_4(6));
         
fifo_7_scale_4 : fifo_control port map(clk,rst,d_in_fifo_scale_4(7),fifo_vid_out_scale_4(7));

fifo_8_scale_4 : fifo_control port map(clk,rst,d_in_fifo_scale_4(8),fifo_vid_out_scale_4(8));
         
fifo_9_scale_4 : fifo_control port map(clk,rst,d_in_fifo_scale_4(9),fifo_vid_out_scale_4(9));
         
fifo_10_scale_4 : fifo_control port map(clk,rst,d_in_fifo_scale_4(10),fifo_vid_out_scale_4(10));
         
fifo_11_scale_4 : fifo_control port map(clk,rst,d_in_fifo_scale_4(11),fifo_vid_out_scale_4(11));

fifo_12_scale_4 : fifo_control port map(clk,rst,d_in_fifo_scale_4(12),fifo_vid_out_scale_4(12));
         
fifo_13_scale_4 : fifo_control port map(clk,rst,d_in_fifo_scale_4(13),fifo_vid_out_scale_4(13));
         
fifo_14_scale_4 : fifo_control port map(clk,rst,d_in_fifo_scale_4(14),fifo_vid_out_scale_4(14));
         
fifo_15_scale_4 : fifo_control port map(clk,rst,d_in_fifo_scale_4(15),fifo_vid_out_scale_4(15));

fifo_16_scale_4 : fifo_control port map(clk,rst,d_in_fifo_scale_4(16),fifo_vid_out_scale_4(16));
         
fifo_17_scale_4 : fifo_control port map(clk,rst,d_in_fifo_scale_4(17),fifo_vid_out_scale_4(17));
         
fifo_18_scale_4 : fifo_control port map(clk,rst,d_in_fifo_scale_4(18),fifo_vid_out_scale_4(18));
         
fifo_19_scale_4 : fifo_control port map(clk,rst,d_in_fifo_scale_4(19),fifo_vid_out_scale_4(19));

sh_reg_scale_4 : shift_register_temp port map(clk,rst,fifo_vid_out_scale_4,vid_out_scale_4,int_image_valid_scale_4);


-------------integral image for scaled image with 8
fifo_0_scale_8 : fifo_control port map(clk,rst,d_in_fifo_scale_8(0),fifo_vid_out_scale_8(0));
         
fifo_1_scale_8 : fifo_control port map(clk,rst,d_in_fifo_scale_8(1),fifo_vid_out_scale_8(1));
         
fifo_2_scale_8 : fifo_control port map(clk,rst,d_in_fifo_scale_8(2),fifo_vid_out_scale_8(2));
         
fifo_3_scale_8 : fifo_control port map(clk,rst,d_in_fifo_scale_8(3),fifo_vid_out_scale_8(3));

fifo_4_scale_8 : fifo_control port map(clk,rst,d_in_fifo_scale_8(4),fifo_vid_out_scale_8(4));
         
fifo_5_scale_8 : fifo_control port map(clk,rst,d_in_fifo_scale_8(5),fifo_vid_out_scale_8(5));
         
fifo_6_scale_8 : fifo_control port map(clk,rst,d_in_fifo_scale_8(6),fifo_vid_out_scale_8(6));
         
fifo_7_scale_8 : fifo_control port map(clk,rst,d_in_fifo_scale_8(7),fifo_vid_out_scale_8(7));

fifo_8_scale_8 : fifo_control port map(clk,rst,d_in_fifo_scale_8(8),fifo_vid_out_scale_8(8));
         
fifo_9_scale_8 : fifo_control port map(clk,rst,d_in_fifo_scale_8(9),fifo_vid_out_scale_8(9));
         
fifo_10_scale_8 : fifo_control port map(clk,rst,d_in_fifo_scale_8(10),fifo_vid_out_scale_8(10));
         
fifo_11_scale_8 : fifo_control port map(clk,rst,d_in_fifo_scale_8(11),fifo_vid_out_scale_8(11));

fifo_12_scale_8 : fifo_control port map(clk,rst,d_in_fifo_scale_8(12),fifo_vid_out_scale_8(12));
         
fifo_13_scale_8 : fifo_control port map(clk,rst,d_in_fifo_scale_8(13),fifo_vid_out_scale_8(13));
         
fifo_14_scale_8 : fifo_control port map(clk,rst,d_in_fifo_scale_8(14),fifo_vid_out_scale_8(14));
         
fifo_15_scale_8 : fifo_control port map(clk,rst,d_in_fifo_scale_8(15),fifo_vid_out_scale_8(15));

fifo_16_scale_8 : fifo_control port map(clk,rst,d_in_fifo_scale_8(16),fifo_vid_out_scale_8(16));
         
fifo_17_scale_8 : fifo_control port map(clk,rst,d_in_fifo_scale_8(17),fifo_vid_out_scale_8(17));
         
fifo_18_scale_8 : fifo_control port map(clk,rst,d_in_fifo_scale_8(18),fifo_vid_out_scale_8(18));
         
fifo_19_scale_8 : fifo_control port map(clk,rst,d_in_fifo_scale_8(19),fifo_vid_out_scale_8(19));

sh_reg_scale_8 : shift_register_temp port map(clk,rst,fifo_vid_out_scale_8,vid_out_scale_8,int_image_valid_scale_8);

--------------
--classification_module : feature_controller Port map (enable_classifier=>int_image_valid,
--clk =>clk,
--integral_image=>vid_out,
--integral_image_pass=>integral_image_pass, 
--integral_image_trigger=>integral_image_enable,
--face_coordinates=>face_coordinates );

classification_module_scale_2 : feature_controller Port map (enable_classifier=>int_image_valid_scale_2,
clk =>clk,
integral_image=>vid_out_scale_2,
integral_image_pass=>integral_image_pass_scale_2, 
integral_image_trigger=>integral_image_enable_scale_2,
face_coordinates=>face_coordinates );

--classification_module_scale_4 : feature_controller Port map (enable_classifier=>int_image_valid_scale_4,
--clk =>clk,
--integral_image=>vid_out_scale_4,
--integral_image_pass=>integral_image_pass_scale_4, 
--integral_image_trigger=>integral_image_enable_scale_4 );

--classification_module_scale_8 : feature_controller Port map (enable_classifier=>int_image_valid_scale_8,
--clk =>clk,
--integral_image=>vid_out_scale_8,
--integral_image_pass=>integral_image_pass_scale_8, 
--integral_image_trigger=>integral_image_enable_scale_8, 
--face_coordinates=>face_coordinates);

END read_image_behaviour;     