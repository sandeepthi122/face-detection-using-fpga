
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

--package pkg is
--type classifier_input is array(3 downto 0) of unsigned(16 downto 0);
--type coordinates is
--record
--add_row : unsigned(8 downto 0);
--       add_col : unsigned(7 downto 0);
--    end record;
--type integral_coordinates is array(3 downto 0) of coordinates;    
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
--------------------------------------------------------------------------------
LIBRARY ieee;
LIBRARY std;
library work;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.numeric_std.ALL;
USE std.textio.ALL; 
--USE work.edge_package.ALL;
use work.buf_ary.all;
use work.pkg.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY camera IS
  GENERIC( --fi_n: STRING :="hexi.dat"   ;  -- Input hex file name
                     tclk: TIME:= 1ns              -- Clock speed
                   );
END camera;

ARCHITECTURE behavior OF camera IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT read_image
    PORT
      (rst : IN STD_LOGIC;
         clk : IN STD_LOGIC;
         vid_in: IN STD_LOGIC_VECTOR(7 DOWNTO 0);   -- Pixels from main memory
            hor_sync: IN STD_LOGIC;                    -- Horizontal synchronous pulse to 1 row is completed
           vert_sync: IN STD_LOGIC;                   -- Vertical synchronous pulse for end of image
          val_flag: IN BIT;                          -- Flag indicates valid pixels 
        
          vid_out: INOUT buf_record_2d_17bit(19 downto 0,19 downto 0);
                vid_out_scale_2: INOUT buf_record_2d_17bit(19 downto 0,19 downto 0);
                vid_out_scale_4: INOUT buf_record_2d_17bit(19 downto 0,19 downto 0);
                vid_out_scale_8: INOUT buf_record_2d_17bit(19 downto 0,19 downto 0);
     -- face_coordinates :out integral_coordinates;
                execution_time : out integer
      ); 
    END COMPONENT;
    COMPONENT blk_mem_gen_0
      PORT (
        clka : IN STD_LOGIC;
        ena : IN STD_LOGIC;
        wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
        addra : IN STD_LOGIC_VECTOR(16 DOWNTO 0);
        dina : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        douta : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
      );
    END COMPONENT;
--    COMPONENT moniter
--      PORT(
--         clk_i : IN STD_LOGIC;
--         vid : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
--         v_in : IN STD_LOGIC;
--         h_in: IN STD_LOGIC;
--         val_in: IN STD_LOGIC;
--         sts: OUT STD_LOGIC
--          );
--    END COMPONENT;         

   --Inputs
	--FILE image: TEXT OPEN read_mode IS fi_n;   
	   SIGNAL clk : STD_LOGIC := '0';
	   SIGNAL rst : STD_LOGIC := '1';
     SIGNAL vid_temp : STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0');
      SIGNAL vid_in: STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0');
	   SIGNAL hor_sync: STD_LOGIC:='0';
     SIGNAL vert_sync: STD_LOGIC:='0';	
     SIGNAL val_flag_signal : BIT := '0'; --Data Validation flag
    SIGNAL vid_out: buf_record_2d_17bit(19 downto 0,19 downto 0):= (others=>(others=>((others=>'0'),(others=>'0'),(others=>'0'))));
    SIGNAL vid_out_scale_2: buf_record_2d_17bit(19 downto 0,19 downto 0):= (others=>(others=>((others=>'0'),(others=>'0'),(others=>'0'))));
    SIGNAL vid_out_scale_4: buf_record_2d_17bit(19 downto 0,19 downto 0):= (others=>(others=>((others=>'0'),(others=>'0'),(others=>'0'))));
    SIGNAL vid_out_scale_8: buf_record_2d_17bit(19 downto 0,19 downto 0):= (others=>(others=>((others=>'0'),(others=>'0'),(others=>'0'))));

    signal addra:STD_LOGIC_VECTOR(16 DOWNTO 0):=(others=>'0');
       signal dina:STD_LOGIC_VECTOR(7 DOWNTO 0):=(others=>'0');
    -- signal vid_out: image_data:=((others=>'0'),(others=>'0'),(others=>'0'));
      SIGNAL hor_t:STD_LOGIC:='0';
     SIGNAL ver_t:STD_LOGIC:='0';
     SIGNAL val_t:STD_LOGIC:='0';
     SIGNAL finish:STD_LOGIC:='0'; 
    --signal face_coordinates :integral_coordinates;
    signal execution_time : integer;
     --Outputs
	--SIGNAL vid_out: STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS=>'0');
 
BEGIN
your_instance_name : blk_mem_gen_0
  PORT MAP (
    clka => clk,
    ena => '1',
    wea => "0",
    addra => addra,
    dina => dina,
    douta => vid_in
  );
  
 
-- Instantiate the Unit Under Test (UUT)
   uut: read_image PORT MAP (
         rst=>rst,
          clk => clk,
          vid_in => vid_in,
       	  hor_sync=>hor_sync,
	        vert_sync=>vert_sync,
          val_flag => val_flag_signal,
          vid_out => vid_out,
        --  face_coordinates=>face_coordinates,
          execution_time=>execution_time
--          v_out=>ver_t,
--          h_out=>hor_t,
--          val_out=>val_t
          );
  
  --Instantiate display device        
--  uut1: moniter PORT MAP(
--          clk_i =>  clk,
--          vid => vid_t,
--          v_in => ver_t,
--          h_in => hor_t,
--          val_in => val_t,
--          sts => finish
--        );
clk_process : process
begin
clk<='0';
wait for tclk/2;
clk<='1';
wait for tclk/2;
end process;
          ------reset process
          rst_proc:process
          begin
          rst <= NOT rst AFTER tclk;
          wait;
          end process;
   -- Stimulus process
   stim_proc: PROCESS

	 variable addr: natural:=0;
	 variable remainder: natural:=0;
	 variable i : integer := 0;
	 
   BEGIN		
		               ---Read Hex image file from bram
		 if ( i <= 76799) then -----for each pixel from image of 320*240 
		  -- vid_in<=vid_temp;
		   addr:=addr+1; 
		    IF(addr > 240 and addr rem 240 = 0 ) THEN
		      val_flag_signal<='1';
			  hor_sync<='1';
			  vert_sync<='0';
--			  ELSIF(chr='*') THEN
--                val_flag_signal<='0';
--                vert_sync<='1';
--                hor_sync<='0';				  
		    ELSe
			 hor_sync<='0';
			 
		      val_flag_signal<='1';
			-- stdlogic_conv(chr,tmp); --Procedure to convert hexadecimal string to std_logic_vector
--			 vid_tmp(7 DOWNTO 4):=tmp;
--			 READ(buf,chr,good);
--			     IF (good=TRUE) THEN
--				    stdlogic_conv(chr,tmp);
--			         vid_tmp(3 DOWNTO 0):=tmp;
--			     END IF; 
		    END IF;
		    addra<=std_logic_vector(to_unsigned(addr,17));
		    --vid_in<=vid_tmp;
		    WAIT UNTIL RISING_EDGE(clk);
		    i := i+1;
			end if;
			   if ( i = 76799) then   
			vert_sync <='1';
			elsif(i>76799) then
			wait;
				end if;
--      ELSIF (vert_sync='1') THEN
        
--        --If the output file is written, abort the simulation
--        --IF(finish='1') THEN
--          --		ASSERT (FALSE) REPORT "Simulation failed!" SEVERITY FAILURE;
--        --END IF;
        
--        WAIT UNTIL RISING_EDGE(clk);  
--     END IF ;			  
	END PROCESS stim_proc;
	 ASSERT (finish/='1') REPORT "One Frame Completed!" SEVERITY WARNING;
   --clk <= NOT clk AFTER tclk; -- Clock generation
END ;
