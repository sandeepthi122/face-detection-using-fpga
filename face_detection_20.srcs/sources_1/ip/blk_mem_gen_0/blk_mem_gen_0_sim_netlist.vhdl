-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.1 (win64) Build 1538259 Fri Apr  8 15:45:27 MDT 2016
-- Date        : Mon May 22 18:49:54 2017
-- Host        : sandepthi-PC running 64-bit Service Pack 1  (build 7601)
-- Command     : write_vhdl -force -mode funcsim
--               E:/project/temp/final/face_detection_20/face_detection_20.srcs/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0_sim_netlist.vhdl
-- Design      : blk_mem_gen_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity blk_mem_gen_0_bindec is
  port (
    ena_array : out STD_LOGIC_VECTOR ( 17 downto 0 );
    ram_ena : out STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 4 downto 0 );
    ena : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of blk_mem_gen_0_bindec : entity is "bindec";
end blk_mem_gen_0_bindec;

architecture STRUCTURE of blk_mem_gen_0_bindec is
begin
ENOUT: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => addra(0),
      I1 => addra(4),
      I2 => addra(1),
      I3 => ena,
      I4 => addra(3),
      I5 => addra(2),
      O => ena_array(0)
    );
\ENOUT_inferred__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => addra(1),
      I1 => addra(4),
      I2 => ena,
      I3 => addra(0),
      I4 => addra(3),
      I5 => addra(2),
      O => ena_array(1)
    );
\ENOUT_inferred__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => addra(0),
      I1 => addra(4),
      I2 => ena,
      I3 => addra(1),
      I4 => addra(3),
      I5 => addra(2),
      O => ena_array(2)
    );
\ENOUT_inferred__10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000000000"
    )
        port map (
      I0 => addra(2),
      I1 => addra(4),
      I2 => addra(1),
      I3 => addra(0),
      I4 => ena,
      I5 => addra(3),
      O => ena_array(11)
    );
\ENOUT_inferred__11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000000000"
    )
        port map (
      I0 => addra(1),
      I1 => addra(4),
      I2 => addra(2),
      I3 => addra(3),
      I4 => addra(0),
      I5 => ena,
      O => ena_array(12)
    );
\ENOUT_inferred__12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000000000"
    )
        port map (
      I0 => addra(1),
      I1 => addra(4),
      I2 => addra(3),
      I3 => addra(0),
      I4 => ena,
      I5 => addra(2),
      O => ena_array(13)
    );
\ENOUT_inferred__13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000000000"
    )
        port map (
      I0 => addra(0),
      I1 => addra(4),
      I2 => addra(1),
      I3 => addra(3),
      I4 => ena,
      I5 => addra(2),
      O => ena_array(14)
    );
\ENOUT_inferred__14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => ena,
      I1 => addra(4),
      I2 => addra(1),
      I3 => addra(0),
      I4 => addra(3),
      I5 => addra(2),
      O => ena_array(15)
    );
\ENOUT_inferred__15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => addra(0),
      I1 => addra(1),
      I2 => addra(4),
      I3 => ena,
      I4 => addra(3),
      I5 => addra(2),
      O => ena_array(16)
    );
\ENOUT_inferred__16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000000000"
    )
        port map (
      I0 => addra(1),
      I1 => addra(2),
      I2 => ena,
      I3 => addra(0),
      I4 => addra(3),
      I5 => addra(4),
      O => ena_array(17)
    );
\ENOUT_inferred__17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000000000"
    )
        port map (
      I0 => addra(0),
      I1 => addra(2),
      I2 => addra(1),
      I3 => ena,
      I4 => addra(3),
      I5 => addra(4),
      O => ram_ena
    );
\ENOUT_inferred__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000000000"
    )
        port map (
      I0 => addra(2),
      I1 => addra(4),
      I2 => addra(1),
      I3 => addra(0),
      I4 => addra(3),
      I5 => ena,
      O => ena_array(3)
    );
\ENOUT_inferred__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => addra(1),
      I1 => addra(4),
      I2 => ena,
      I3 => addra(2),
      I4 => addra(3),
      I5 => addra(0),
      O => ena_array(4)
    );
\ENOUT_inferred__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000000000"
    )
        port map (
      I0 => addra(1),
      I1 => addra(4),
      I2 => addra(2),
      I3 => addra(0),
      I4 => addra(3),
      I5 => ena,
      O => ena_array(5)
    );
\ENOUT_inferred__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000000000"
    )
        port map (
      I0 => addra(0),
      I1 => addra(4),
      I2 => addra(1),
      I3 => addra(2),
      I4 => addra(3),
      I5 => ena,
      O => ena_array(6)
    );
\ENOUT_inferred__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000000000"
    )
        port map (
      I0 => addra(3),
      I1 => addra(4),
      I2 => addra(1),
      I3 => addra(0),
      I4 => ena,
      I5 => addra(2),
      O => ena_array(7)
    );
\ENOUT_inferred__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => addra(1),
      I1 => addra(4),
      I2 => ena,
      I3 => addra(3),
      I4 => addra(0),
      I5 => addra(2),
      O => ena_array(8)
    );
\ENOUT_inferred__8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000000000"
    )
        port map (
      I0 => addra(2),
      I1 => addra(4),
      I2 => addra(3),
      I3 => addra(0),
      I4 => addra(1),
      I5 => ena,
      O => ena_array(9)
    );
\ENOUT_inferred__9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000000000"
    )
        port map (
      I0 => addra(2),
      I1 => addra(4),
      I2 => addra(1),
      I3 => addra(3),
      I4 => addra(0),
      I5 => ena,
      O => ena_array(10)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity blk_mem_gen_0_blk_mem_gen_mux is
  port (
    douta : out STD_LOGIC_VECTOR ( 7 downto 0 );
    douta_array : in STD_LOGIC_VECTOR ( 151 downto 0 );
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 4 downto 0 );
    clka : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of blk_mem_gen_0_blk_mem_gen_mux : entity is "blk_mem_gen_mux";
end blk_mem_gen_0_blk_mem_gen_mux;

architecture STRUCTURE of blk_mem_gen_0_blk_mem_gen_mux is
  signal \douta[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \douta[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \douta[0]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \douta[0]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \douta[0]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \douta[0]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \douta[0]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \douta[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \douta[1]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \douta[1]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \douta[1]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \douta[1]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \douta[1]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \douta[1]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \douta[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \douta[2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \douta[2]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \douta[2]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \douta[2]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \douta[2]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \douta[2]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \douta[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \douta[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \douta[3]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \douta[3]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \douta[3]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \douta[3]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \douta[3]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \douta[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \douta[4]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \douta[4]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \douta[4]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \douta[4]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \douta[4]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \douta[4]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \douta[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \douta[5]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \douta[5]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \douta[5]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \douta[5]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \douta[5]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \douta[5]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \douta[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \douta[6]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \douta[6]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \douta[6]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \douta[6]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \douta[6]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \douta[6]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \douta[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \douta[7]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \douta[7]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \douta[7]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \douta[7]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \douta[7]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \douta[7]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \no_softecc_sel_reg.ce_pri.sel_pipe[4]_i_1_n_0\ : STD_LOGIC;
  signal sel_pipe : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal sel_pipe_d1 : STD_LOGIC_VECTOR ( 4 downto 0 );
begin
\douta[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \douta[0]_INST_0_i_1_n_0\,
      I1 => sel_pipe_d1(4),
      I2 => \douta[0]_INST_0_i_2_n_0\,
      I3 => sel_pipe_d1(3),
      I4 => \douta[0]_INST_0_i_3_n_0\,
      O => douta(0)
    );
\douta[0]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => douta_array(128),
      I1 => sel_pipe_d1(0),
      I2 => douta_array(136),
      I3 => sel_pipe_d1(1),
      I4 => douta_array(144),
      I5 => sel_pipe_d1(2),
      O => \douta[0]_INST_0_i_1_n_0\
    );
\douta[0]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \douta[0]_INST_0_i_4_n_0\,
      I1 => \douta[0]_INST_0_i_5_n_0\,
      O => \douta[0]_INST_0_i_2_n_0\,
      S => sel_pipe_d1(2)
    );
\douta[0]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \douta[0]_INST_0_i_6_n_0\,
      I1 => \douta[0]_INST_0_i_7_n_0\,
      O => \douta[0]_INST_0_i_3_n_0\,
      S => sel_pipe_d1(2)
    );
\douta[0]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => douta_array(88),
      I1 => douta_array(80),
      I2 => sel_pipe_d1(1),
      I3 => douta_array(72),
      I4 => sel_pipe_d1(0),
      I5 => douta_array(64),
      O => \douta[0]_INST_0_i_4_n_0\
    );
\douta[0]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => douta_array(120),
      I1 => douta_array(112),
      I2 => sel_pipe_d1(1),
      I3 => douta_array(104),
      I4 => sel_pipe_d1(0),
      I5 => douta_array(96),
      O => \douta[0]_INST_0_i_5_n_0\
    );
\douta[0]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => douta_array(24),
      I1 => douta_array(16),
      I2 => sel_pipe_d1(1),
      I3 => douta_array(8),
      I4 => sel_pipe_d1(0),
      I5 => douta_array(0),
      O => \douta[0]_INST_0_i_6_n_0\
    );
\douta[0]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => douta_array(56),
      I1 => douta_array(48),
      I2 => sel_pipe_d1(1),
      I3 => douta_array(40),
      I4 => sel_pipe_d1(0),
      I5 => douta_array(32),
      O => \douta[0]_INST_0_i_7_n_0\
    );
\douta[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \douta[1]_INST_0_i_1_n_0\,
      I1 => sel_pipe_d1(4),
      I2 => \douta[1]_INST_0_i_2_n_0\,
      I3 => sel_pipe_d1(3),
      I4 => \douta[1]_INST_0_i_3_n_0\,
      O => douta(1)
    );
\douta[1]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => douta_array(129),
      I1 => sel_pipe_d1(0),
      I2 => douta_array(137),
      I3 => sel_pipe_d1(1),
      I4 => douta_array(145),
      I5 => sel_pipe_d1(2),
      O => \douta[1]_INST_0_i_1_n_0\
    );
\douta[1]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \douta[1]_INST_0_i_4_n_0\,
      I1 => \douta[1]_INST_0_i_5_n_0\,
      O => \douta[1]_INST_0_i_2_n_0\,
      S => sel_pipe_d1(2)
    );
\douta[1]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \douta[1]_INST_0_i_6_n_0\,
      I1 => \douta[1]_INST_0_i_7_n_0\,
      O => \douta[1]_INST_0_i_3_n_0\,
      S => sel_pipe_d1(2)
    );
\douta[1]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => douta_array(89),
      I1 => douta_array(81),
      I2 => sel_pipe_d1(1),
      I3 => douta_array(73),
      I4 => sel_pipe_d1(0),
      I5 => douta_array(65),
      O => \douta[1]_INST_0_i_4_n_0\
    );
\douta[1]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => douta_array(121),
      I1 => douta_array(113),
      I2 => sel_pipe_d1(1),
      I3 => douta_array(105),
      I4 => sel_pipe_d1(0),
      I5 => douta_array(97),
      O => \douta[1]_INST_0_i_5_n_0\
    );
\douta[1]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => douta_array(25),
      I1 => douta_array(17),
      I2 => sel_pipe_d1(1),
      I3 => douta_array(9),
      I4 => sel_pipe_d1(0),
      I5 => douta_array(1),
      O => \douta[1]_INST_0_i_6_n_0\
    );
\douta[1]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => douta_array(57),
      I1 => douta_array(49),
      I2 => sel_pipe_d1(1),
      I3 => douta_array(41),
      I4 => sel_pipe_d1(0),
      I5 => douta_array(33),
      O => \douta[1]_INST_0_i_7_n_0\
    );
\douta[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \douta[2]_INST_0_i_1_n_0\,
      I1 => sel_pipe_d1(4),
      I2 => \douta[2]_INST_0_i_2_n_0\,
      I3 => sel_pipe_d1(3),
      I4 => \douta[2]_INST_0_i_3_n_0\,
      O => douta(2)
    );
\douta[2]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => douta_array(130),
      I1 => sel_pipe_d1(0),
      I2 => douta_array(138),
      I3 => sel_pipe_d1(1),
      I4 => douta_array(146),
      I5 => sel_pipe_d1(2),
      O => \douta[2]_INST_0_i_1_n_0\
    );
\douta[2]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \douta[2]_INST_0_i_4_n_0\,
      I1 => \douta[2]_INST_0_i_5_n_0\,
      O => \douta[2]_INST_0_i_2_n_0\,
      S => sel_pipe_d1(2)
    );
\douta[2]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \douta[2]_INST_0_i_6_n_0\,
      I1 => \douta[2]_INST_0_i_7_n_0\,
      O => \douta[2]_INST_0_i_3_n_0\,
      S => sel_pipe_d1(2)
    );
\douta[2]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => douta_array(90),
      I1 => douta_array(82),
      I2 => sel_pipe_d1(1),
      I3 => douta_array(74),
      I4 => sel_pipe_d1(0),
      I5 => douta_array(66),
      O => \douta[2]_INST_0_i_4_n_0\
    );
\douta[2]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => douta_array(122),
      I1 => douta_array(114),
      I2 => sel_pipe_d1(1),
      I3 => douta_array(106),
      I4 => sel_pipe_d1(0),
      I5 => douta_array(98),
      O => \douta[2]_INST_0_i_5_n_0\
    );
\douta[2]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => douta_array(26),
      I1 => douta_array(18),
      I2 => sel_pipe_d1(1),
      I3 => douta_array(10),
      I4 => sel_pipe_d1(0),
      I5 => douta_array(2),
      O => \douta[2]_INST_0_i_6_n_0\
    );
\douta[2]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => douta_array(58),
      I1 => douta_array(50),
      I2 => sel_pipe_d1(1),
      I3 => douta_array(42),
      I4 => sel_pipe_d1(0),
      I5 => douta_array(34),
      O => \douta[2]_INST_0_i_7_n_0\
    );
\douta[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \douta[3]_INST_0_i_1_n_0\,
      I1 => sel_pipe_d1(4),
      I2 => \douta[3]_INST_0_i_2_n_0\,
      I3 => sel_pipe_d1(3),
      I4 => \douta[3]_INST_0_i_3_n_0\,
      O => douta(3)
    );
\douta[3]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => douta_array(131),
      I1 => sel_pipe_d1(0),
      I2 => douta_array(139),
      I3 => sel_pipe_d1(1),
      I4 => douta_array(147),
      I5 => sel_pipe_d1(2),
      O => \douta[3]_INST_0_i_1_n_0\
    );
\douta[3]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \douta[3]_INST_0_i_4_n_0\,
      I1 => \douta[3]_INST_0_i_5_n_0\,
      O => \douta[3]_INST_0_i_2_n_0\,
      S => sel_pipe_d1(2)
    );
\douta[3]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \douta[3]_INST_0_i_6_n_0\,
      I1 => \douta[3]_INST_0_i_7_n_0\,
      O => \douta[3]_INST_0_i_3_n_0\,
      S => sel_pipe_d1(2)
    );
\douta[3]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => douta_array(91),
      I1 => douta_array(83),
      I2 => sel_pipe_d1(1),
      I3 => douta_array(75),
      I4 => sel_pipe_d1(0),
      I5 => douta_array(67),
      O => \douta[3]_INST_0_i_4_n_0\
    );
\douta[3]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => douta_array(123),
      I1 => douta_array(115),
      I2 => sel_pipe_d1(1),
      I3 => douta_array(107),
      I4 => sel_pipe_d1(0),
      I5 => douta_array(99),
      O => \douta[3]_INST_0_i_5_n_0\
    );
\douta[3]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => douta_array(27),
      I1 => douta_array(19),
      I2 => sel_pipe_d1(1),
      I3 => douta_array(11),
      I4 => sel_pipe_d1(0),
      I5 => douta_array(3),
      O => \douta[3]_INST_0_i_6_n_0\
    );
\douta[3]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => douta_array(59),
      I1 => douta_array(51),
      I2 => sel_pipe_d1(1),
      I3 => douta_array(43),
      I4 => sel_pipe_d1(0),
      I5 => douta_array(35),
      O => \douta[3]_INST_0_i_7_n_0\
    );
\douta[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \douta[4]_INST_0_i_1_n_0\,
      I1 => sel_pipe_d1(4),
      I2 => \douta[4]_INST_0_i_2_n_0\,
      I3 => sel_pipe_d1(3),
      I4 => \douta[4]_INST_0_i_3_n_0\,
      O => douta(4)
    );
\douta[4]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => douta_array(132),
      I1 => sel_pipe_d1(0),
      I2 => douta_array(140),
      I3 => sel_pipe_d1(1),
      I4 => douta_array(148),
      I5 => sel_pipe_d1(2),
      O => \douta[4]_INST_0_i_1_n_0\
    );
\douta[4]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \douta[4]_INST_0_i_4_n_0\,
      I1 => \douta[4]_INST_0_i_5_n_0\,
      O => \douta[4]_INST_0_i_2_n_0\,
      S => sel_pipe_d1(2)
    );
\douta[4]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \douta[4]_INST_0_i_6_n_0\,
      I1 => \douta[4]_INST_0_i_7_n_0\,
      O => \douta[4]_INST_0_i_3_n_0\,
      S => sel_pipe_d1(2)
    );
\douta[4]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => douta_array(92),
      I1 => douta_array(84),
      I2 => sel_pipe_d1(1),
      I3 => douta_array(76),
      I4 => sel_pipe_d1(0),
      I5 => douta_array(68),
      O => \douta[4]_INST_0_i_4_n_0\
    );
\douta[4]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => douta_array(124),
      I1 => douta_array(116),
      I2 => sel_pipe_d1(1),
      I3 => douta_array(108),
      I4 => sel_pipe_d1(0),
      I5 => douta_array(100),
      O => \douta[4]_INST_0_i_5_n_0\
    );
\douta[4]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => douta_array(28),
      I1 => douta_array(20),
      I2 => sel_pipe_d1(1),
      I3 => douta_array(12),
      I4 => sel_pipe_d1(0),
      I5 => douta_array(4),
      O => \douta[4]_INST_0_i_6_n_0\
    );
\douta[4]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => douta_array(60),
      I1 => douta_array(52),
      I2 => sel_pipe_d1(1),
      I3 => douta_array(44),
      I4 => sel_pipe_d1(0),
      I5 => douta_array(36),
      O => \douta[4]_INST_0_i_7_n_0\
    );
\douta[5]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \douta[5]_INST_0_i_1_n_0\,
      I1 => sel_pipe_d1(4),
      I2 => \douta[5]_INST_0_i_2_n_0\,
      I3 => sel_pipe_d1(3),
      I4 => \douta[5]_INST_0_i_3_n_0\,
      O => douta(5)
    );
\douta[5]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => douta_array(133),
      I1 => sel_pipe_d1(0),
      I2 => douta_array(141),
      I3 => sel_pipe_d1(1),
      I4 => douta_array(149),
      I5 => sel_pipe_d1(2),
      O => \douta[5]_INST_0_i_1_n_0\
    );
\douta[5]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \douta[5]_INST_0_i_4_n_0\,
      I1 => \douta[5]_INST_0_i_5_n_0\,
      O => \douta[5]_INST_0_i_2_n_0\,
      S => sel_pipe_d1(2)
    );
\douta[5]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \douta[5]_INST_0_i_6_n_0\,
      I1 => \douta[5]_INST_0_i_7_n_0\,
      O => \douta[5]_INST_0_i_3_n_0\,
      S => sel_pipe_d1(2)
    );
\douta[5]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => douta_array(93),
      I1 => douta_array(85),
      I2 => sel_pipe_d1(1),
      I3 => douta_array(77),
      I4 => sel_pipe_d1(0),
      I5 => douta_array(69),
      O => \douta[5]_INST_0_i_4_n_0\
    );
\douta[5]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => douta_array(125),
      I1 => douta_array(117),
      I2 => sel_pipe_d1(1),
      I3 => douta_array(109),
      I4 => sel_pipe_d1(0),
      I5 => douta_array(101),
      O => \douta[5]_INST_0_i_5_n_0\
    );
\douta[5]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => douta_array(29),
      I1 => douta_array(21),
      I2 => sel_pipe_d1(1),
      I3 => douta_array(13),
      I4 => sel_pipe_d1(0),
      I5 => douta_array(5),
      O => \douta[5]_INST_0_i_6_n_0\
    );
\douta[5]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => douta_array(61),
      I1 => douta_array(53),
      I2 => sel_pipe_d1(1),
      I3 => douta_array(45),
      I4 => sel_pipe_d1(0),
      I5 => douta_array(37),
      O => \douta[5]_INST_0_i_7_n_0\
    );
\douta[6]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \douta[6]_INST_0_i_1_n_0\,
      I1 => sel_pipe_d1(4),
      I2 => \douta[6]_INST_0_i_2_n_0\,
      I3 => sel_pipe_d1(3),
      I4 => \douta[6]_INST_0_i_3_n_0\,
      O => douta(6)
    );
\douta[6]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => douta_array(134),
      I1 => sel_pipe_d1(0),
      I2 => douta_array(142),
      I3 => sel_pipe_d1(1),
      I4 => douta_array(150),
      I5 => sel_pipe_d1(2),
      O => \douta[6]_INST_0_i_1_n_0\
    );
\douta[6]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \douta[6]_INST_0_i_4_n_0\,
      I1 => \douta[6]_INST_0_i_5_n_0\,
      O => \douta[6]_INST_0_i_2_n_0\,
      S => sel_pipe_d1(2)
    );
\douta[6]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \douta[6]_INST_0_i_6_n_0\,
      I1 => \douta[6]_INST_0_i_7_n_0\,
      O => \douta[6]_INST_0_i_3_n_0\,
      S => sel_pipe_d1(2)
    );
\douta[6]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => douta_array(94),
      I1 => douta_array(86),
      I2 => sel_pipe_d1(1),
      I3 => douta_array(78),
      I4 => sel_pipe_d1(0),
      I5 => douta_array(70),
      O => \douta[6]_INST_0_i_4_n_0\
    );
\douta[6]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => douta_array(126),
      I1 => douta_array(118),
      I2 => sel_pipe_d1(1),
      I3 => douta_array(110),
      I4 => sel_pipe_d1(0),
      I5 => douta_array(102),
      O => \douta[6]_INST_0_i_5_n_0\
    );
\douta[6]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => douta_array(30),
      I1 => douta_array(22),
      I2 => sel_pipe_d1(1),
      I3 => douta_array(14),
      I4 => sel_pipe_d1(0),
      I5 => douta_array(6),
      O => \douta[6]_INST_0_i_6_n_0\
    );
\douta[6]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => douta_array(62),
      I1 => douta_array(54),
      I2 => sel_pipe_d1(1),
      I3 => douta_array(46),
      I4 => sel_pipe_d1(0),
      I5 => douta_array(38),
      O => \douta[6]_INST_0_i_7_n_0\
    );
\douta[7]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \douta[7]_INST_0_i_1_n_0\,
      I1 => sel_pipe_d1(4),
      I2 => \douta[7]_INST_0_i_2_n_0\,
      I3 => sel_pipe_d1(3),
      I4 => \douta[7]_INST_0_i_3_n_0\,
      O => douta(7)
    );
\douta[7]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => douta_array(135),
      I1 => sel_pipe_d1(0),
      I2 => douta_array(143),
      I3 => sel_pipe_d1(1),
      I4 => douta_array(151),
      I5 => sel_pipe_d1(2),
      O => \douta[7]_INST_0_i_1_n_0\
    );
\douta[7]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \douta[7]_INST_0_i_4_n_0\,
      I1 => \douta[7]_INST_0_i_5_n_0\,
      O => \douta[7]_INST_0_i_2_n_0\,
      S => sel_pipe_d1(2)
    );
\douta[7]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \douta[7]_INST_0_i_6_n_0\,
      I1 => \douta[7]_INST_0_i_7_n_0\,
      O => \douta[7]_INST_0_i_3_n_0\,
      S => sel_pipe_d1(2)
    );
\douta[7]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => douta_array(95),
      I1 => douta_array(87),
      I2 => sel_pipe_d1(1),
      I3 => douta_array(79),
      I4 => sel_pipe_d1(0),
      I5 => douta_array(71),
      O => \douta[7]_INST_0_i_4_n_0\
    );
\douta[7]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => douta_array(127),
      I1 => douta_array(119),
      I2 => sel_pipe_d1(1),
      I3 => douta_array(111),
      I4 => sel_pipe_d1(0),
      I5 => douta_array(103),
      O => \douta[7]_INST_0_i_5_n_0\
    );
\douta[7]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => douta_array(31),
      I1 => douta_array(23),
      I2 => sel_pipe_d1(1),
      I3 => douta_array(15),
      I4 => sel_pipe_d1(0),
      I5 => douta_array(7),
      O => \douta[7]_INST_0_i_6_n_0\
    );
\douta[7]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => douta_array(63),
      I1 => douta_array(55),
      I2 => sel_pipe_d1(1),
      I3 => douta_array(47),
      I4 => sel_pipe_d1(0),
      I5 => douta_array(39),
      O => \douta[7]_INST_0_i_7_n_0\
    );
\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => ena,
      D => sel_pipe(0),
      Q => sel_pipe_d1(0),
      R => '0'
    );
\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => ena,
      D => sel_pipe(1),
      Q => sel_pipe_d1(1),
      R => '0'
    );
\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => ena,
      D => sel_pipe(2),
      Q => sel_pipe_d1(2),
      R => '0'
    );
\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => ena,
      D => sel_pipe(3),
      Q => sel_pipe_d1(3),
      R => '0'
    );
\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => ena,
      D => sel_pipe(4),
      Q => sel_pipe_d1(4),
      R => '0'
    );
\no_softecc_sel_reg.ce_pri.sel_pipe[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ena,
      I1 => wea(0),
      O => \no_softecc_sel_reg.ce_pri.sel_pipe[4]_i_1_n_0\
    );
\no_softecc_sel_reg.ce_pri.sel_pipe_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => \no_softecc_sel_reg.ce_pri.sel_pipe[4]_i_1_n_0\,
      D => addra(0),
      Q => sel_pipe(0),
      R => '0'
    );
\no_softecc_sel_reg.ce_pri.sel_pipe_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => \no_softecc_sel_reg.ce_pri.sel_pipe[4]_i_1_n_0\,
      D => addra(1),
      Q => sel_pipe(1),
      R => '0'
    );
\no_softecc_sel_reg.ce_pri.sel_pipe_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => \no_softecc_sel_reg.ce_pri.sel_pipe[4]_i_1_n_0\,
      D => addra(2),
      Q => sel_pipe(2),
      R => '0'
    );
\no_softecc_sel_reg.ce_pri.sel_pipe_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => \no_softecc_sel_reg.ce_pri.sel_pipe[4]_i_1_n_0\,
      D => addra(3),
      Q => sel_pipe(3),
      R => '0'
    );
\no_softecc_sel_reg.ce_pri.sel_pipe_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => \no_softecc_sel_reg.ce_pri.sel_pipe[4]_i_1_n_0\,
      D => addra(4),
      Q => sel_pipe(4),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity blk_mem_gen_0_blk_mem_gen_prim_wrapper_init is
  port (
    douta_array : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of blk_mem_gen_0_blk_mem_gen_prim_wrapper_init : entity is "blk_mem_gen_prim_wrapper_init";
end blk_mem_gen_0_blk_mem_gen_prim_wrapper_init;

architecture STRUCTURE of blk_mem_gen_0_blk_mem_gen_prim_wrapper_init is
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute CLOCK_DOMAINS : string;
  attribute CLOCK_DOMAINS of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "COMMON";
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"8F908E9186817D797A7574706D68666B6D73787A7C7690FE923433422F343836",
      INIT_01 => X"63656C6A6B6D686564625F60686E706E707887877E817F7C797A7D7F7F80848B",
      INIT_02 => X"686B706D6F71736F636061616261616B686765635F59585B646A636162606061",
      INIT_03 => X"585C636257555C5D6467635E5F616766666963615C5A5E615E5C5F5F5E6D756E",
      INIT_04 => X"63605A5E636260615F5F5E5E635F5B5956565752595F635F5351504D4F53565A",
      INIT_05 => X"36373B3C403E413F414142414142454B4D515860615C5E5E62645C5D5B626460",
      INIT_06 => X"2829292827272728292F3331312C282C2B3332312E2C2D2A2B30302F2D2D2F33",
      INIT_07 => X"6A73777A8571B6FE50343538292F3F3639323438383936333134302F2F31302E",
      INIT_08 => X"717A8787827E7D7B797A7E818483848C92918F8F86827F7B7B77746E6B676468",
      INIT_09 => X"6A6765625F5E5B5C676C656464615D5E63676C6C6C6D686361606162676B7171",
      INIT_0A => X"646763625D5B5D5F5C5B5F5F61707A726F70736F7072746F646062626160606A",
      INIT_0B => X"55555752595F645D524F4F4E4E52575B5A5C5F5F5B585C5D6365615F61616463",
      INIT_0C => X"4D51575F615D5E5E636661605C606161615E5A606264615F605F5E5F64605E59",
      INIT_0D => X"2D3634312D2B2C2B2C3131302E2F2F3135383C3E41404240414342424243464A",
      INIT_0E => X"37333639383A38363333302F2E2F2E2828262A292828282A2B2E3331312D292A",
      INIT_0F => X"9690908D8783817C7D7B756F6B6864666772777B7B73C6CD513234312435353B",
      INIT_10 => X"63686C6C6D6D686361606363686B7172737D8786857E7C7C7A7B7F838683848D",
      INIT_11 => X"777576717173746E64606362615F5F6A6B6865615F635D5C6A6E6A6867625A5B",
      INIT_12 => X"5D5D5D5D5F5D5D5C6164606063626362626362625E5B5D5F5C5B5E5E61737D77",
      INIT_13 => X"615B59616366625D615E5E5E6361615955555650545C655B504D4F4E4C51595C",
      INIT_14 => X"34393D4042434541434443434344474A4C50565F605E5F5F626766635D5E6365",
      INIT_15 => X"2D2B29282829292B2D2B3131302C2A282E3734302C2A2B2B2D3131302F302F30",
      INIT_16 => X"6972777A7E7C789B5C3531332234363C36363839383B3B373434322F2E2E2D2B",
      INIT_17 => X"727D868683807D7E7D7E81848282878D9690908D8785837F7E7E77726D6C6968",
      INIT_18 => X"6C6865615E645E5E6D706E6E6B655A5A6667696B6E6D696463626463696F7171",
      INIT_19 => X"605F62615E5B605F5C5C5D5C61757C7A7B7676737374746D65636362615F5F6A",
      INIT_1A => X"5655554F5059665C504A504F4C515C5E5D5E605C5E5F5D5C5F62606163636562",
      INIT_1B => X"4C4F545C5F6060615F6465645F5E6567625B59636468645D605E5E5E6364635A",
      INIT_1C => X"3037312D2B2A2B2B2F31323131313030333B404344454845454644454546474A",
      INIT_1D => X"36383A3A393C3C37333534322F2E2D2B292A29282729292B2C292E302E2A2A28",
      INIT_1E => X"938E8F8E87868381807E797671716E6B6B73777A856C31735D3330372432393B",
      INIT_1F => X"6867666A6E6D6966666464646B727270727C848682827E807F7F80817E81898D",
      INIT_20 => X"7B7576757475746D65676562625F606A6C6865605E635F616F7170726F675C5B",
      INIT_21 => X"5D5F625C5C5E5D5D5F626163636567635F5B605F5D5C62605E5F5D5B6276797C",
      INIT_22 => X"625B5B636768645E5E5F5F5E6465635C58555553545A665E504950504D535F60",
      INIT_23 => X"323C424544474B48494845474747494A4C4F52595D6260615C60616460606665",
      INIT_24 => X"252829292829292B2A2A2D2F2D2A2A2930362F2A2B2A2C2B2F31333131313031",
      INIT_25 => X"6C74787C85562C4F4F3232352435414A363A3B3B393E3D3833353633312E2D28",
      INIT_26 => X"7379818784807C807E7F7F7E7E828A8D8F8C8E8F87868481807D7B787474716B",
      INIT_27 => X"6B69655F5C6261666F707173706A5E5E6867676A6E6C6967676665656C737372",
      INIT_28 => X"5E5A5D5D5D5D636060625D5D6878777E7A7375757675746E656A666162616168",
      INIT_29 => X"59575658595D6461514A5152505562635E60615C585D5D5E6062626362656864",
      INIT_2A => X"4C4F51585C6361615D5E606361636764625E5C63696764605D6161606566625F",
      INIT_2B => X"31352F292B2B2D2B2F31333131303032323B434745494E4B4D49474847484A4C",
      INIT_2C => X"373A3B3B3B3F403A34343633322F2E282B2C2B2B2A282829292C2E2F2F2B2A2C",
      INIT_2D => X"8D8B8D8F888683817F7C7C79757471696C75787C895C3037363A343022345D6B",
      INIT_2E => X"6668696B6E6B6868696868676D71747775757F88887E7B7F7B7D7E7D82868A8D",
      INIT_2F => X"7A72757576767671686B6761626161676A69655E5B6164686E707073716C6161",
      INIT_30 => X"61615E5A575C5E5F61636363616567655E5D5D5C605D6360626660626E7B777F",
      INIT_31 => X"67605D63696765615C626362676762605A59595A5A5D6261524D5254555A6365",
      INIT_32 => X"323A4348484A4E4C4E49484947484A4D4D4F51575D646261605E606261656B68",
      INIT_33 => X"312F2C2D2C2828292A2D2E2F302C2A2D3135302B2B2B2D2B2E31323032303133",
      INIT_34 => X"6A767A7B854D2C373330342D252B7465373A3B3C3C40443D35323532332F2D27",
      INIT_35 => X"77737E8888817D7E7A7E808184898A8D8D8B8C8E8A8582817C7D7C7977767068",
      INIT_36 => X"6869655D5B6165666C706F72726E65666667696A6D69686B6B6B6D6A6C6F747A",
      INIT_37 => X"62605D5C635E615F63686466707B787E7A717275767878756B6A686462606066",
      INIT_38 => X"595A5D595A5B5F5E534F54555A5E646766625E59575E615F6062636263656766",
      INIT_39 => X"4E5052595E64636062606263606770706B625F64686965625E61636266666460",
      INIT_3A => X"31332F2C2A2A2C2B2C313130323231323138434A4B4C4C4A4E4A4A4A46484A4E",
      INIT_3B => X"35393D3D3E41453E35343733332E2C2327282C2C2C29292B2B2A2C2D2E2B2A2D",
      INIT_3C => X"8E8A8C8C8C8482807A7E7B7A797770676A777B7F854C2B34323B2E2E328C8C6B",
      INIT_3D => X"686667686C68676E7070726D6D70747C79717E85838881807A7F8486848A8B8E",
      INIT_3E => X"7A706F74777A7A786E686965615F5F656769655D5A6163616C706F71726F6B6C",
      INIT_3F => X"6B64625B5960635F5F6162606563676A67645D5D665F5F5D636A69686D79797C",
      INIT_40 => X"6B626064656A65636161606064646660575B605B5C5C5C5A535254565D616369",
      INIT_41 => X"3137434C4D4E4A494E494A4A46484A4E4F51545A606463606260646460677072",
      INIT_42 => X"22262B2A292A2A2C2A2527292B2A2A2C32302D2B28292B2A2B30312F32333131",
      INIT_43 => X"6E74777B88432B383333353149B4D35733383F3D3F42453C33373B36332C2C2C",
      INIT_44 => X"7A757D848683857D7B81898B86888B8B8D898C8C8A87847F7C7E7D797A767169",
      INIT_45 => X"6769665B595F61616A6F6E73756E6D6B6A6866676A676A6F72726E6C6B6D777B",
      INIT_46 => X"6A635E5E5D5C5F60646A6D6A717B787D786D7174777979776E686A6763606163",
      INIT_47 => X"5F605D5C5F5A595A5556585E5F61666A6A6560585861615D5E6064626464656E",
      INIT_48 => X"5152555B5D66686564646B666468716E6F665D61666965636262646163656862",
      INIT_49 => X"36322E2C292A2A2B2E303131343433313239444D4C4D484B4D4C4D4A49494D4D",
      INIT_4A => X"36393D3D3C42453C383C383734302D2A27292B2A2A292C2F2B28282829292C32",
      INIT_4B => X"8E898D8D8B8884807D7F7D7B7B7770696E74787C7E392C362C3252664BA9F96F",
      INIT_4C => X"696765676B67697073716F6E6E6E797D7E79808386817F7C7D80878A87888C8E",
      INIT_4D => X"796C7072757778776F676967636062656869665B595A5E636C706F73746F6F6C",
      INIT_4E => X"6A686057585F61605F6262606162666F6A635D5C5A5C5E5D616B6E69707B7B7F",
      INIT_4F => X"72685D6168696664636366656465676262625D595D5B5759585B5B5E60636969",
      INIT_50 => X"333A424C4B4B47494C4D4D4948484C4F5253575C5E65676463656C6866697273",
      INIT_51 => X"2A2B2C2B29282B2D2A29282828282B3439332E2C2A2A2B2B2F30313133343231",
      INIT_52 => X"6D747A7D7C3929372C304DA94C7BFECC38393B3C3B42463E383C373634312E2A",
      INIT_53 => X"807B828384817C7C7C80858988898E908F8A8E908D8985817F807D7D7C776F69",
      INIT_54 => X"6968665F5A585C656F717173746F706E6A6666686B67687074716F6F6E707B80",
      INIT_55 => X"68635D59595C5B595E6B6E696D777A7F796C6D70737777786F66676763616467",
      INIT_56 => X"65645D565A5A57575D605E5D606569696C6B6056595E61625F6463616163686D",
      INIT_57 => X"55555A5C5F65656361686D676569727774695F61656464646565666A66666662",
      INIT_58 => X"3C342E2C2A2A2B2D2F31313133333130353C414A4A4A46474B4D4C4849494C52",
      INIT_59 => X"38383B3C3B43473F383A363634312E2B2B2B2D2B29292B2B2A29282827272A35",
      INIT_5A => X"8E8C90928F8A85817F807F7F7C766F6B6E737C7F79342B35483432CC5581FEFC",
      INIT_5B => X"6C68686A6D68686D7574706E6D737F82817B82838383807E7A7F858787898E8F",
      INIT_5C => X"796D6C70737675776F66676763626667686868635E5A5B6772717274746F6F70",
      INIT_5D => X"6E6E6055595E6364606669656364686B66635D57585A58585E6A6E6B6C74777C",
      INIT_5E => X"72696161615F61636465686E6866646367665D57585859565E63615E5E64686A",
      INIT_5F => X"333C42494A4A44464A4D4C47484B4E5556565B5E5E636565626B6D63656B7078",
      INIT_60 => X"2D2C2D2B2A2B2B292A29282827272B363D352E2C2A2B2B2E2F32313133333131",
      INIT_61 => X"70737C826D2A2F32723B26BC59B9FFB83838393C3C43463F3838363734312E2C",
      INIT_62 => X"847F8483848683817C808786868A8C8C8D8E9092908A85807E81827F7B736F6E",
      INIT_63 => X"67696966625D5C6972717476746E6D716F696B6D6E6A686A7677747270798283",
      INIT_64 => X"65655F5758595559616A706D6D74787B786F6E71737673766E67686863656865",
      INIT_65 => X"6A675E5858585A585E6464615E63676C706F6155595F6565646A706863626869",
      INIT_66 => X"56565B5F5C616667666B6C62686D6F746E6964615D5E6263646769706C676464",
      INIT_67 => X"3C352D2B2A2B2C2E3032323233343333323E4549484A44484A4D4C47494D5055",
      INIT_68 => X"3839383C3C42443F3838373835322F2D2E2C2D2B2A2D2D292929282827272D36",
      INIT_69 => X"8C8D90928F8984807D81837D77706D6E71767D7F63282C358A382A9C69C7EF47",
      INIT_6A => X"6E6A6B6D6E6B6A6B767979797A7D858487858885858782827F828985858A8B8B",
      INIT_6B => X"78737271727472736D66666764676964666A6967635E5F6C73717577746D6B71",
      INIT_6C => X"716F6257596066686973716862616A6B6766605958595459666E727171787A7B",
      INIT_6D => X"6A6966645D61666667696B70706864656B685F58595B595C5F6564626265676D",
      INIT_6E => X"333E45474447454B494C4B464A4F51545454585F585C63676A6A6C6770716F70",
      INIT_6F => X"2E2C2E2C2B2D2C282828282827282E3639332E2C2B2B2C2E3133323232353534",
      INIT_70 => X"73797C7C5E2E3430A4342CA9AF92A7553939383B3A3E403E3939383934312F2E",
      INIT_71 => X"88868887008783817E848A84858B8A8B8B8A8F908C89847E7D81827B746E6A6C",
      INIT_72 => X"656B6867645F636F73727678746D6E716C68696B6E6D6D6E74797A7D80818785",
      INIT_73 => X"6966625C585752586B7475747679797A79787771707272726C66646566696A63",
      INIT_74 => X"6C685F585C5E575E626765626A696A6E716E62595C60686B70796E6A66646C6D",
      INIT_75 => X"5253565D565861656B676B6E7875726D686768665C61666B6B6B6E7373696567",
      INIT_76 => X"36322E2D2B2C2C2F3334323132363636373E43454145484C484B4A464B505253",
      INIT_77 => X"393B3939383A3F3E3838383732302F2E2E2C2D2D2D2C29262828282827283034",
      INIT_78 => X"8C898D8D8988837D7E818079726D696C757A7A7D4F26598BAA2D36DE6F308E51",
      INIT_79 => X"6D6968696D6F726F727A7F8181838886878786878686857F7E85878588888A8B",
      INIT_7A => X"7C7D7B73707174726E696565686A6A64666B6B6A69FF6B737474797774707071",
      INIT_7B => X"716D605B6062696B74776C6A6C696C6E6965615F595552596C7876767B7A777A",
      INIT_7C => X"68656A695E5E656E6D6B7178766B676A6C695F585E5F595E63676567716D6C6D",
      INIT_7D => X"373E444640474A49484A4A46494F51515154555A555760616865696D7879726C",
      INIT_7E => X"2D2C2D2E2E2D27262728282828292F3233312E2E2B2C2D2F3534333132353535",
      INIT_7F => X"7777797E4B293CD4E43D52DC4C2980583A3C3A3B393A403F39363635312F2E2F",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "NO_CHANGE",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => douta_array(7 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88\,
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena_array(0),
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => ena,
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized0\ is
  port (
    douta_array : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized0\ : entity is "blk_mem_gen_prim_wrapper_init";
end \blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized0\;

architecture STRUCTURE of \blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized0\ is
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute CLOCK_DOMAINS : string;
  attribute CLOCK_DOMAINS of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "COMMON";
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"8A8A88868684807F848784868A878B888D8C8C8B8688827D7F817E77716C6A6E",
      INIT_01 => X"676B6E6C6C6E727575767B7574737072706A6A6A6D70746E717E898682838987",
      INIT_02 => X"686460605A55525C6C7876767D7D7A7E7E7F7C7670727672706C6868696A6B67",
      INIT_03 => X"6C685F5B5F5C5C5E6164666D756E6C6C706D5E5D6366696A75716D676C696A6C",
      INIT_04 => X"515556575658625F6565676774796F6A66646B6B636067706D69737D796A686B",
      INIT_05 => X"32302E2F2B2C2D2F3634323131343435353D4749404B4C4648494A46484E4F50",
      INIT_06 => X"3A3D3B3E3C3C414039343533302F2E2F2C2C2C2E2F2F28282728282929292E31",
      INIT_07 => X"8D8D8B8A8987837F81807C746F6B69717677778046272FB2FDB6506540315C4D",
      INIT_08 => X"716C68696E75766E6D7F8D8C82838985898C898987847E7F84FF89888A8D908D",
      INIT_09 => X"83827C76757877716F72696769686767666B6C707275FF7674797F7975727374",
      INIT_0A => X"6C6A5E5C646869686E6C6B6867656B6E696362605A57555F6E7775797C7C7B7E",
      INIT_0B => X"66646A6F65656E726E6E747B7A6D696A6A65605A5A5F60606364677078736869",
      INIT_0C => X"373E484D47494A4545464643464B4F4F5153545758575A5C615F61666F796F69",
      INIT_0D => X"2E2D2D31302F2A2827282A2B2B2B2D31322F302E2D2D2E323636333232353434",
      INIT_0E => X"767877783B2A2D8AFFBE372C32343D3A3D3E393C3C3B3E3F3A3332302F312F2E",
      INIT_0F => X"878C898889857E8084868A8B8C9194918D8C8B898785838182817B736D696974",
      INIT_10 => X"656A6B7176797B757279807977737475726C68686F76746C6C7F8D8E85858784",
      INIT_11 => X"696465625C5958606F77767A7C7C7C7C83837976787C797370736A686B696767",
      INIT_12 => X"6B67615A59626364666568717A73676769685D5C6268696B6A67676564656D70",
      INIT_13 => X"525253565759595E605E5F656B776D6765656C72676971726E6F767A786F6A69",
      INIT_14 => X"302F302D2D2D2E3336373333343433323A40494D48494A4644454442464A4F4F",
      INIT_15 => X"403F393C3D3A3C3F3B33312F2D302E2D2E2D2E31302D2A2727292B2B2C2B2C2F",
      INIT_16 => X"908A898683838382FF807A746D696B7677767E71322D2D94F6622C2824323335",
      INIT_17 => X"736C69696F75736B6D808D908A878585858A8A878B867F828687898E90959694",
      INIT_18 => X"818275767A807A7573726A6B6C6A6967666A6B71787C7E7471797D7678777375",
      INIT_19 => X"69665C5C62676A6F6B64646263676E71696567655E5B59617076787A7C7C7C7D",
      INIT_1A => X"64656D716B6C71716D6F777A77706C686B67625B5C6468696C6968727B6F6766",
      INIT_1B => X"3C424A4B47494A4745454442464B4F4F52525354555A5B5F605F5E6168736C66",
      INIT_1C => X"2C2B2D2F312E2A27272B292A2B2A2B2E302F2E2C2C2C2D323635333334333233",
      INIT_1D => X"76757F73392B2FB1DD2632232131363842413C3E3F3A3C3F3B33312F2C2D2C2D",
      INIT_1E => X"85898C8A8C85818488898A91939797979388868481828182817E78746E6B6E78",
      INIT_1F => X"686C6B727980847872797A757A7A7274736B696A6F75736D71828E918D898484",
      INIT_20 => X"6A646666605B595F6E757A7B7C7D7D7E807F72757C837B7776726B6D6A696968",
      INIT_21 => X"6866625D60676D6F706D68737C6E666668645D5E62666A726D65656364686D72",
      INIT_22 => X"525454545357585C5E5E5C5F65706C6864626A706E6F71706D6E757B7A726D67",
      INIT_23 => X"31302D2C2B2E2F3237353433353333363E444A4947494A4746464543464C4E4F",
      INIT_24 => X"43413D3F3F3A3C3F3C33312F2C2C2C2B2C2A2C2F332F2B28282C292C2D2C2B2F",
      INIT_25 => X"9387828281817E7F7F7C76766F6C7279777776816B2A3BA9C634372522343832",
      INIT_26 => X"726B696B6E757672768490928E89848384898D8E8B8483FF8A8C8C9295989797",
      INIT_27 => X"807B71757C837C7877716B6E6B6B6B6A6C6D6B717A80877C74FF78757B7A7274",
      INIT_28 => X"67625E5F63666971716B676665676C736B6263655F5B5A5E6E757B7A7B7E7D7F",
      INIT_29 => X"656168707070706F6C6E717D80756C666566636163697071716E68737D706666",
      INIT_2A => X"3F4449484546484746464544474D4D4E515555555355575B5D5D585D636D706B",
      INIT_2B => X"2B292C3233302C2A2A2B2B2D2E2D2D3032302D2C2C2F30313735343436353539",
      INIT_2C => X"777473A4D22B5172B23530251E35353543403D3F3E3D3C3E3C33312F2D2C2C2A",
      INIT_2D => X"868A8F8F8A8686848B8C8E8F989998959286808082817C7C7D7C77776F6D767B",
      INIT_2E => X"6D6D6A707980867B747B7A787B797373716C6A6B6D7779757984FF9190888481",
      INIT_2F => X"696161635D5A595F6F777B7A7A7E7D7F817A72757B817C7A77726E6F706F6E6B",
      INIT_30 => X"6669676264697071706D67737D74686664605E5F6367686E716E676765686C72",
      INIT_31 => X"4F5656575657585D5D5D575C636B716C64636873706F6F706C6D707E84776B65",
      INIT_32 => X"32312E2D2C2F3031373534353735353B3E41464644444646454645464A4D4C4B",
      INIT_33 => X"423E3C3E3C3F3D3D3B33312F2D2C2C2A2B292C3534312D2B2C2B2D2F302F2F31",
      INIT_34 => X"8F847D7F827F79797D7F7C776E6D787B76747B9A4828463A883830241C323B36",
      INIT_35 => X"706D6B6B6F7A7E7879848C9093898482878B8F8E8A8B89858A8A8E8D99999792",
      INIT_36 => X"82797375787C7D7B78747272706F6E6C6E6C6BFF777E8076747F817B7A767373",
      INIT_37 => X"615D5D5E636A696C6F6C656563686E6F666261625E5A5D66747B7C7D7B7D7D7F",
      INIT_38 => X"616266716F6C6E716C6D727F82796D666467646163686F706F6B67737E7A6D66",
      INIT_39 => X"3D3F434543424346454745474E4E4C4A4E5656585956575C5F5E585C626A706B",
      INIT_3A => X"2C2A2E3835322E2C2F2B2E2E2F2E303131312F2D2B2C2E31363434353734353A",
      INIT_3B => X"797A7A752D2D342D632F30211F35382A423D3C3C3B3F3E3C3933312F2C2B2A2B",
      INIT_3C => X"898B8D8D8B8C8A87898A8E8E979594908C827C7E807C76777D81807970707779",
      INIT_3D => X"716D6D73767C7C767782857D78757273716F6C6B717C807B7A868C91958B8484",
      INIT_3E => X"656461605F5D606C767D7D807D7D7C7D827A747777797E7D77757776706E6D6F",
      INIT_3F => X"64635E5C5F676F716E696975807D7369625F5F60656C6C6D716B676663666C6C",
      INIT_40 => X"4D5354595B56575C605D585C62686D696261666C6D6B6F736D6D727E7F7B7166",
      INIT_41 => X"312F2F2D2C2C2E31353533343734373A3D3E41434242444746474549514F4C4C",
      INIT_42 => X"443E3E3C3D3D3E3A3733312F2D2C2A2D2D2B30393734312F312E302F2F2F3233",
      INIT_43 => X"89807C7D7E7974777B80FF7C737476797A7A807F2A3130313D2E33201E353843",
      INIT_44 => X"726F6C6B747F817D7C879091938E8387898A8B8E8D8A8A8A878B8F929590908E",
      INIT_45 => X"807A737777777F7E77757B7B726F6F74756F6E75757A7B797C84847D77747073",
      INIT_46 => X"64636462696F7071756D6D6C6464676A6664605E63606471767C7E837E7C7B7D",
      INIT_47 => X"6264696A6C6B6F746E6C717D7D7C766768655C585B666F716F6869788280776E",
      INIT_48 => X"3D3E40404143444848474549534F4C4D4C4F53585C595B5F5F5B575B62676A69",
      INIT_49 => X"2E2C3239383936333131313031303536322D2F2C2D2D2E31343532333635393B",
      INIT_4A => X"7B7A818A293230333430331F1E2E3476463F403C3E3B3E393433312F2E2E2B2E",
      INIT_4B => X"89898B8E8F8B8789888B9193938B8D8C887D7A7C7E7976787C80837C75767979",
      INIT_4C => X"75707177787A7C7D8085847E79757272706F6D6B777F82807E8A9292968E8484",
      INIT_4D => X"68655E5E6165697377787D86817C7A7C7F7A787A7577827A7B797D7F7B777374",
      INIT_4E => X"69665C555A6972736F6B6878807F7B6F646463656E717271766D6E6E66676669",
      INIT_4F => X"4B4F525A5A5A5A60615C545962666B6B666869696C6B7175706C6F787B7C796D",
      INIT_50 => X"322F2E2C2F3132333432323537383A3B3C3D3F40434443464546474B52504C4C",
      INIT_51 => X"48413F3D3E393B3A3533323030302F2F3030343B3A3B36353633303232313534",
      INIT_52 => X"877B797B7E7A77777A80837C75777B7A7B7B818427333130392F302218513298",
      INIT_53 => X"6F6F71707A808483808A9294988F888489888A8B8C8C8689898A8F8E90898A89",
      INIT_54 => X"7F7B7C7C76798279807E8081817C7573767373777B7C7D808386867E7A767371",
      INIT_55 => X"6565646973727371736B6C6C6366656668665B5F5E6A6D7377747B86827C7A7D",
      INIT_56 => X"696A68696A6A7176726E71787A7D7A7069645C565B6B7374706D69777D7D7C6F",
      INIT_57 => X"3C3C3E3F464442444447494D504F4C4B4B50525C5A595960615C545A60646C6D",
      INIT_58 => X"2F30363D3B3C373739342F323231333030302E2C3033333433303338383B3A3B",
      INIT_59 => X"7B7C7F692833302F3A2C3024177D62A547403E3D3C38383B363332323131302D",
      INIT_5A => X"89878987878B8A8A89898B878E8A8785847B7A007D797574797F847D76777A79",
      INIT_5B => X"787775787C7D008283FF877E79777371707173767D8286848388909597908C8A",
      INIT_5C => X"6865585E5F6C6E7376737983817D7B7E7F7D7E7D7B7C7D7C82818683827B7473",
      INIT_5D => X"6A635D5A5C697272706D6B777D7A7C6F6868686F77717473736E706D60626564",
      INIT_5E => X"4C4F515A5A575D615F59555C5F616C6B6A6A6768686A70767474757B7D7F796E",
      INIT_5F => X"2F2F2F2D2F32323232303538383B3A3B3C3E3E414944414445484A4D4F4D4C4B",
      INIT_60 => X"48413E3D3B3838393534323233312E2B2E30383D3B3C3A3939342E3131313330",
      INIT_61 => X"837D7C7C7C7A7573787F847F777779797B79703C2A332D34362D3223346ACDB6",
      INIT_62 => X"717274788084878485868D969691918E8886888589898B89878989828A898282",
      INIT_63 => X"7E7E8180807D7B8084858C88857C7775797A76787B7E7D838488887E78787370",
      INIT_64 => X"696A6A737A71767477747770616368676B64565E616D6B7377777B7F7D7D797E",
      INIT_65 => X"6A696766676A71757679797F807E78706D64605F606A7171716E6D787D777B6E",
      INIT_66 => X"3D413F434B44414446494D4E4E4C4C4A4D4E515656565E625E57565A5E646967",
      INIT_67 => X"3032393E3B3C3D3A39332E30303032312E2E302E2E31313131303639393C3A3A",
      INIT_68 => X"7B7E682A2B342C2E332D2F40704BF2C648423F3E3B3937383534333234302D2D",
      INIT_69 => X"888586888D8789888589880088867F81837F7E7E7C7C7674797F85817878797A",
      INIT_6A => X"7A7A78787A807E858589877D77777370727676798184888586FF8B9595919291",
      INIT_6B => X"6C615961646A6771787C7F7D7A7A767C7D808485837F7C8583868E8C887E7977",
      INIT_6C => X"72676563646D7071736F6E7A7C75796E686A6A747A7478767B787A6F62666969",
      INIT_6D => X"4C4F505251555C605D55565B5D6564656A696666686C7274777C7D81817C7A77",
      INIT_6E => X"302D312E2D30302F3032373A3A3D3A3B3F4342454D454244474B4F4E4D4D4D4B",
      INIT_6F => X"4944403E3E3936363535353334302D2F31343B403D3E3E3B3B342F2F30303433",
      INIT_70 => X"828081807D7C76FF7B80858179797A7DFF7E612F2B352A3839322857A129D9FD",
      INIT_71 => X"737C7C7E8083888686898A91958F90908986878A8C8888888789878184817D7F",
      INIT_72 => X"7D81858683837D8682868D8E887F7B77797A787A80817F85888C887CFFFF7270",
      INIT_73 => X"67696B747A787A777A77786A6062656967615F6566666670787E817B7A7A747C",
      INIT_74 => X"6A6A6766676D7170767C8081817B7A7A746A6966676F717174716F7D7C73766F",
      INIT_75 => X"414646484B474545484E504E4D4F4C4C4B504F5152575A5F5D53575E5B5D5E66",
      INIT_76 => X"2F333C403E413C3B3D34302F303033322F2D312F2D3030313133363B3D3E3B3C",
      INIT_77 => X"7B7E532E2B352B33392D2C428A29D8F84A46403E413936353535353332302E2D",
      INIT_78 => X"8B88898A888C898A8A86858082817D7D808080807C7A76767D7F848100797B7E",
      INIT_79 => X"787B777D878280858B8F897A74757171747A7C7F7F828987868B888E958D8E8F",
      INIT_7A => X"6762646666656970767B7F7C7D7D767E7F82858382877D8482868A8D88817D77",
      INIT_7B => X"736C6B6669707273747372807C72736F68696D747B7A7A797B78786A5F5E646B",
      INIT_7C => X"4C534F535657595E5C55595C595C5F686A696866666C6E6E747A7F807F7C7A78",
      INIT_7D => X"2C2E312F2D3030323234363B3D3D3D3D4146474A4A4846474A504F4D4D4E4B4C",
      INIT_7E => X"4B47403E41393536363637333130302E30353D3F3F413A3A3C3431303030312F",
      INIT_7F => X"7F807F807C7976777D7D80807B7A7A7E7B834D302D352B2B332E29377749F6F8",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "NO_CHANGE",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => douta_array(7 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88\,
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena_array(0),
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => ena,
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized1\ is
  port (
    douta_array : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized1\ : entity is "blk_mem_gen_prim_wrapper_init";
end \blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized1\;

architecture STRUCTURE of \blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized1\ is
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute CLOCK_DOMAINS : string;
  attribute CLOCK_DOMAINS of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "COMMON";
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"75797C7E7E818AFF878A86FF94FF8C8F8D898A8B878E898A8A85857F82847E7D",
      INIT_01 => X"808284808188808381858B8A86837E78797A787E898381848B8F877873747071",
      INIT_02 => X"6A6A6E727B7B7A7A7B78776A6160666B696667656565686F77797C7B807F797F",
      INIT_03 => X"69686765666B6B6D72787D7E7E7E7D7974706D696B717374757479847B726F6E",
      INIT_04 => X"4045474B4B4845484E514E4D4C4A4A4C4D5450555555595C5B575E5B5A5F6268",
      INIT_05 => X"32373D3F404039393B33303131302E2C2B2F302F2E3031333234373B3C3C3E3E",
      INIT_06 => X"7A7E46302C352762303229338C84FCD24B48413E3E3836373636373432302F30",
      INIT_07 => X"8E8B8B8C8C8D878988868680008880FFFF817E7F7A79787A7D7A7D7E7B00797D",
      INIT_08 => X"7A78797C85848182898C847673717073757C7F7C00818B8B8989848D94008C90",
      INIT_09 => X"686868646664646E787B7D7A7E817A7E8282837E8188868581858C878483807B",
      INIT_0A => X"7575706D6F74747675757F877B736C6B6D6C6F70797B7B7C7876746762606567",
      INIT_0B => X"50555354514F5758585862615E60646566666664686D6B6D70767B7B7C81807C",
      INIT_0C => X"2C302F302E3131333234383B3B3B403E3F42464A4C48444851524E4D4C45484B",
      INIT_0D => X"4B49423E3A3836383636383433312E2F31373B3F403D3A3939302F3132302F2C",
      INIT_0E => X"82817B7A7A7B7A7D7E7C7D007A7A7A7E7B753D2E2D36258C7D3F2732A78EA6B5",
      INIT_0F => X"757C7D7B7E818B8B8A87868D918C8D908F8C8D8F8D8B89888988857F83888280",
      INIT_10 => X"8282817E80868A8582878A86838285817B76787C84848182898E817573737072",
      INIT_11 => X"726E6D6F767A7B7E7775716360616664656B68646463616D767C7F7A7F807C7E",
      INIT_12 => X"63656765686C6B6C7176787B7C80837F7476736F71727477757784887A726C6E",
      INIT_13 => X"3E42464A4D45444A51524F4C4B43474A525654544F4A5458595962625D5F6363",
      INIT_14 => X"31363D403E3C3A383732323331302F2D2C302F2F2F303133323537393B3C3E3D",
      INIT_15 => X"7C74383442322474E9642336A85941AB4B47403D383736383737363333312E2F",
      INIT_16 => X"918D8F928C8D8D8A8D89827E85878281818078767C7E7B7F7F7E7C7D7B7B7C7F",
      INIT_17 => X"7C787A7E858482FF8D907E76737571727678797B7F828A8C8885868C8F8C8F00",
      INIT_18 => X"636D69656363616D747C7D7A82807F7F81827F7F7F8589848489898783848882",
      INIT_19 => X"7475757072707577767C87887B73717679716D6E747A7C7F7A78706360646764",
      INIT_1A => X"54585456504A5359595A615F5A5E62646466686667696A6B7175777C7D7C827E",
      INIT_1B => X"2D30302F302F3133333737383D3D3A3D3F43474B4C43454C5051514E4B454A4B",
      INIT_1C => X"4A423C3C39363737383933333430303032363E423B3D3B373634353430312E2F",
      INIT_1D => X"807F79787F807E82837E797D7B7B7B7D7B753446622C264AEF8421499C25418C",
      INIT_1E => X"777B7B7C7E818A89878684898F8B9192938D8E93918F8E8A8C897F7E88898380",
      INIT_1F => X"7E807E7E7E81828383868B85828A88807C7F7E7F818284898E8B7D7573747673",
      INIT_20 => X"7D736D6D74797D7F7A796F6461656465666C68676665626B777B7A7D8281807E",
      INIT_21 => X"62666767686A6A6B7175767B7D797E7C767777747474767A7C828A897E76747C",
      INIT_22 => X"4042474B4844454D505051504A464E4F56595958514B5257535B645F5A5E6263",
      INIT_23 => X"32363B3E3B3C3B383735343431302F2F2E303231302F31323336383C3D3E3D3E",
      INIT_24 => X"7B6B2F4B5C313137C64E2669A127367147423C3B393637373839353436323030",
      INIT_25 => X"958D8D9495908E898D8A7D7F8A8B8580817F7A0082838384837F7A7E7B7C7B7C",
      INIT_26 => X"88847B81888586888C867A7471737670747A7D7C7D818986858884868B8A9395",
      INIT_27 => X"6A6C696968676467777D7B7F8280807D7C7D7C7C7B7E7E8083868B837D839291",
      INIT_28 => X"76777776767775797F8489877F77737D7D746E6B727A7E7D7A786C615F636265",
      INIT_29 => X"54555B59514C5355505C655F5A5E6261606668686A6C6B6B7273747A7C7A7E7E",
      INIT_2A => X"2F313433302F313233363A3D3C3F3E3F4141474B4545464E5151524F48464F50",
      INIT_2B => X"45403B3A39363737393B37373833313033373A3B3B3C3B3A3835333432302F30",
      INIT_2C => X"827E7A7B84868685807F7E7F7B7C7C7C7F6BA274672B2742CE5220317C342F4A",
      INIT_2D => X"74777A797E83848284898885868B949B97008F95988E8C898B897D7F8A8B8884",
      INIT_2E => X"7B7C7B7B787A7E7C848B88857F8585928E83798483848383868278736D727972",
      INIT_2F => X"7D77716A6F797E787975665F5E6161676C6B6A6B6B6A6769757A7E818381827D",
      INIT_30 => X"60666A6A6B6C6A6B717172787A7A7C7D73757776777A767B80868887827A747C",
      INIT_31 => X"404348494445464F5252514B47454F5052535958514F5555535F635F5C5D6060",
      INIT_32 => X"34373B393A3B3A3B3A36333332302F3030323534302F313233363A3A3A3F3E3E",
      INIT_33 => X"814B9CE75A222A55ED482A2D6B2D342F413D3A3938363737393C393839363231",
      INIT_34 => X"978F91959B8E898789878080888B8A87837D7A7B848788847F80807F007D7C7B",
      INIT_35 => X"908D82818B837C7C7F81787269727E7A787679788085807F848B8A85858A929D",
      INIT_36 => X"6D6B6C6D6D6C6B6F74787D808482827E7C7D7B7A76787E7F868F8985827F8997",
      INIT_37 => X"73777B78797B7B7E84888A8A8780777D7F7B74696B777F787B73636161636369",
      INIT_38 => X"5455585853515757566162605C5D5D5E62676C6C6B6B6A6B6F6F707678777879",
      INIT_39 => X"303435323030313333373A373A3D3C3C40484B484544485152524F4A47444C51",
      INIT_3A => X"3E3B3837373637383A3D3B3A3A36323334383C39393B3A3C3A36343332302F30",
      INIT_3B => X"837C7A7D8487888480817F7E7D7D7A7B824E6EFFB146258ABF3F28205A31392C",
      INIT_3C => X"79777A0081857D7E858B89868689909C989093969C91868787868482888B8D88",
      INIT_3D => X"7E7F7B7A77767A8688928D85838492825942408081807C77788179726A737F7F",
      INIT_3E => X"7E7C746868737E7B7C6F62606062636A6E6C6D6F6F6E6F6F757D7C808581817F",
      INIT_3F => X"63686C6D6A6C6B6C6F70717678777879757A7F7D7C7B7D7F8487888989837979",
      INIT_40 => X"424D4C474544495252504F4C47434B4F5255595A55535957566363615D5D5D5E",
      INIT_41 => X"35373C3A3A3C3A3C3B37353432303032323535323131323434383B373B3C3C3C",
      INIT_42 => X"844847EDF69424815E3A28212F33322D3C3A3736373637383B3D3C3B3A373334",
      INIT_43 => X"999293949B93868887868685898C8D8A857F7D808587888581817E7D7F7E7B7D",
      INIT_44 => X"2C2A1962827A7B7477827B746F747E7F79787B7D83827C7E868B88868689919A",
      INIT_45 => X"706E6F727271736E767E7E8285818181807F7B7A77767A898B928E87868D6B3D",
      INIT_46 => X"757A7E7D7E7C7C7E83848285868176747C7B7368666E7B7A7769625E5E60636D",
      INIT_47 => X"4E555A5C56535958566363615E5D5E5E63686C6D6A6D6D6F70737476787A7B79",
      INIT_48 => X"343636343332343536393B373C3D3F3F46504D4947444A5352514F4E47434B4A",
      INIT_49 => X"3B3A3635363637383B3D3C3B3A39353535363A3B3A3D3A3C3B37363431313133",
      INIT_4A => X"89857F828587888581817F7C7F7E7D82863D4CEEE9762B4E2D3729271932312B",
      INIT_4B => X"7A787B7E847E7D7E868A8886838B969A9B93918F9995868A87FF87898A8D8D8C",
      INIT_4C => X"807F7B7A77777D878E938B8A897B321A29FF170064FF77FFFF837D7675747E7F",
      INIT_4D => X"7C7A7168666C77757163615D5E5F616F706F7173747477747B7A8A8A82808182",
      INIT_4E => X"62666A6B6B6D6F72727577777A7A7B78727577777E7D7C7E8584808284817574",
      INIT_4F => X"4B514E4B46444B5452554F4F47444C484E565C5C55515958586162605E5D5F5E",
      INIT_50 => X"3535383B3C3E3A3C3B373734303133353636383834333537373939363A3F4243",
      INIT_51 => X"833676FEA41A302F313429271F2E372A3C393634363637383C3C3D3B3B3B3737",
      INIT_52 => X"9C00918E9693878A8888878A8D8C8D8E8C888184868888848383817D807E7E83",
      INIT_53 => X"312518252A4671777AFF7F76787580807C787B80837C7F80008A8987808A989C",
      INIT_54 => X"7272737475777D755A506B82847E808281807A7A777881848D9287898848182A",
      INIT_55 => X"6E6F70757D7F7E8187868082858074747E7B7169676A716D6A5D6161605F6271",
      INIT_56 => X"4E5A5E5C555158565A6060615F5E5F5D61646A6D6C6F7174727679777A787977",
      INIT_57 => X"383739392F2D2F2F35373637384044475050504C45444D555258504845444D49",
      INIT_58 => X"3C3A3634353537383B3D3D3C3C3C39373636363A3C3E3A3B3A38373530313437",
      INIT_59 => X"8C888385878787828987837E817D7B7F7B2E9BEB73222F37273028261D2D342B",
      INIT_5A => X"FF787D83807E81858B8C89888088949E9E959492948E86868B88008C8D8B8E8F",
      INIT_5B => X"83817C7976798187888B82877718242C231F18110E2C69787C83837A79778080",
      INIT_5C => X"7B74686766666667635C6065615D667577767573777980550B051151837D7F83",
      INIT_5D => X"60636C716E727474737578787979797C736D6F777C7E81868587808185796F71",
      INIT_5E => X"534E524B4545505655574F4A504B4E4B4C5D605F595359545B5F5E6262615C5C",
      INIT_5F => X"383837393C3C393A393837353333333537383D3B3837393A3533353B383F444A",
      INIT_60 => X"74348D868821343A2A3226252036322B3A3B3635353536383B3E3C3C3B3E3839",
      INIT_61 => X"9C999393969086858888898C8D8D90928F8A8586878687848987837F817F7D7E",
      INIT_62 => X"161E271818235A7C7F84857C7A7980807C787D81820082878C8D8986818C9299",
      INIT_63 => X"797473737A796F160C11110B54897F8787827E7977797F84848882884D162B2B",
      INIT_64 => X"7D747274797C838787888283827875746D593B5C626464625C586166635F6975",
      INIT_65 => X"4B5C60615C565C585D605F5F5F5E5E5E61676E6D74716F72767A7979787C7E82",
      INIT_66 => X"34374450888F949C49393938393F43494F4F5148424453535651518C8563514F",
      INIT_67 => X"3A3B3735353536393C3E3C3D3D3C383A383838393C3B3838383739363535332F",
      INIT_68 => X"908C8786878787868A888381827F7D7A6D33346578232F31253228241B2B2D2D",
      INIT_69 => X"7C007F81848285898C8E8A84818B8F959A9D93939891868486888A8D8E909293",
      INIT_6A => X"84837E7A78797E807F828783281D2B16283B4434151F4F7C828687817C7B7F80",
      INIT_6B => X"533D31464D52695E5957656965646E777C7878737886230E141119111D74867E",
      INIT_6C => X"62697272686E78777172787A797A7E83786C6A74797E858A8B8A85827D77757A",
      INIT_6D => X"4C504E454146554F515756824F464654515B6262605B605C5E62615E5C5C5F60",
      INIT_6E => X"3939383A3B3A373837383A38383632383938456F93C2B3AA923335333C3F4248",
      INIT_6F => X"612B274977222E3527352A271A3241233A3A37353535363A3B3E3D3D3D3B3A3A",
      INIT_70 => X"9A9D93929890880085888B8F90929293918C8885858687888B888483FF7F7A78",
      INIT_71 => X"8591703C15214A80848688847D7C7D7E7A7F8282838388888A908B8382888B94",
      INIT_72 => X"7D7B7C788354111413131419123B888483817D7A7A797F7F7D828B75152B1A49",
      INIT_73 => X"797071757A7F878C8F8C84807B7772693F2F272429405F605658666866667179",
      INIT_74 => X"505B6263625F645E5E62625E5C5D60626369727777777775787775787B787D83",
      INIT_75 => X"325270768AA5C8BDA34F31363E3F42474B4E4A45444B535452373C66524A514D",
      INIT_76 => X"3A3A37353535373B3C3E3D3D3C3C3C3B393A39393A3A3839383739383A383636",
      INIT_77 => X"928D88848486878A8A888483847E7679572F2734422830372431272A202B7642",
      INIT_78 => X"7881848180828C888A928C83828588959A999490958F8A8585888C8F93929194",
      INIT_79 => X"85817D7B7A7A807F7E868A5E151B54A8CBC7A0632C1E4589858688867D7C7B7A",
      INIT_7A => X"3C2B232F2E3C415E525762676769737C7C7879777F2F111015151313171B7B88",
      INIT_7B => X"646A707775767176827777777B7A80847C767975787D878F938D82807C7D6C46",
      INIT_7C => X"4C4B4645454E5359501F35667A524745415B6264646165605D62625F5D5E6163",
      INIT_7D => X"3A3A3A39393A393A393738393B3934324C5E5C6A8996AFC099643A3D3D404347",
      INIT_7E => X"4F292E3033283134243624271F238B9B393936353535383C3C3D3D3D3B3D3E3C",
      INIT_7F => X"9A94938D928D8B87FF888C8F93929095958E87828286878A8A888585847D757B",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "NO_CHANGE",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => douta_array(7 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88\,
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena_array(0),
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => ena,
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized10\ is
  port (
    douta_array : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized10\ : entity is "blk_mem_gen_prim_wrapper_init";
end \blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized10\;

architecture STRUCTURE of \blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized10\ is
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute CLOCK_DOMAINS : string;
  attribute CLOCK_DOMAINS of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "COMMON";
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"6E560D0950A8A49DAEB096A4231E1C2222B8D8B7C5C0C9A93C34748B7976B7CA",
      INIT_01 => X"1D1A30A2BAA1ABACC3AD621614172421568FB4C6D1DBD5DFE2D7C8A96E25467B",
      INIT_02 => X"1738353C504E38242236232B33353E79B0D4E4E9AF6A734A4D645E484E75B1D6",
      INIT_03 => X"3F4F4A2A28122548A73C31251017151226181723211E312F2C2E322A2E292832",
      INIT_04 => X"17303B070D161D262A2B342F2A332E2E15161D1626233366164E1E5AB1CA451F",
      INIT_05 => X"0D1311120A080E182D1E171E1C23201D2224281F2312112029334F726E311C24",
      INIT_06 => X"261D0C1B919BB5BAB4C0C1B9992D0F1519210D44A2C7DEE8EDF1EBE7E5D5AC25",
      INIT_07 => X"1BAAFFFFF9F7F6F94E3F987B4C7CB1D1A281988CA35017242A2D2D2B22262416",
      INIT_08 => X"518EB0CDD7DFDBDEDCD4C4AB6B233B573450120B5BA9B3A2A7B3A59D201E1C20",
      INIT_09 => X"AFD3E0E2A35F764B456056496483A9D51D1A3BAFB1A9A6A9B0B1541112172227",
      INIT_0A => X"271A1C241D232F2B2E322F2B2E2A2A28173D36364C563F1E24301E23322A4880",
      INIT_0B => X"2020201D25242F6238301A6BC5E7662E3C4D3C151824273098403127111B1810",
      INIT_0C => X"2220221D2A0D0E2843575E796C382727181138181F2723252A2C322B2B332E29",
      INIT_0D => X"1A230A4BA5C4DCF2F0F2EFEDE7D1A6270C120F130D070A171D20191C23211C1D",
      INIT_0E => X"B26859A4A5541B23292D262522211F1D1E190B1E9C887F7F9AC1B1A691221115",
      INIT_0F => X"1F370F096899A0D2AF89D09C201E1D211A60CAC5C1B5B9D3624DA07484A4AFDF",
      INIT_10 => X"1C1D42C198C195A89BA45113141522284E8FB0CFDEE6EBE9DFD7C3AE6520295D",
      INIT_11 => X"0D2C3329446446291B1E2D1F302E5D8AAFD0DCDC9862714C415A4950757597DA",
      INIT_12 => X"50451B0A5855182996443129121D1B14251D20251C242E32342F282A2E292B19",
      INIT_13 => X"0F09202327272123292C2F292E343232221B1D24262425227244137BC9EC9050",
      INIT_14 => X"0C110E120C0708171B221B19261F1E20231C1C232B091C4E849D947F7A582F1B",
      INIT_15 => X"19160A2298CEE9E5C582A9C79E2211151A1D0966AA98B0DFF1F2F4DCCBC7A92C",
      INIT_16 => X"1F13595E665C5F6E634F96B2E2B5B8D4B8A76394C3571A222C2F33322E264125",
      INIT_17 => X"4E93B2BED8E5EFF0EAD9C9B062211D6D371A0A0550A0B06FA9CD7D811A1E1D23",
      INIT_18 => X"B3CDD9D78F6D6A4D435C3F54714F85E01B1C4C92C68EBC8AA39A381A16152320",
      INIT_19 => X"1E1D202421294E52312B282D2F262D19111F271A3F584A23282A3F252F3E7597",
      INIT_1A => X"25232321262323264529208BCDEDB94A573C1521C89B1E1C8C482E2B151A1A16",
      INIT_1B => X"221C1B2E32194388C7D6DBD197601F14140B132223262525282D2D282D33302E",
      INIT_1C => X"19160C799B4C2D72CEF7E7945D8FA6310D110F100A0808171937272324222023",
      INIT_1D => X"C2D6D9A8C15E151F25596E616672B22918150A24905D5C6596F1A669B4280E15",
      INIT_1E => X"43430A0B59465DCF857EDC7022201F232122451F0E1F12444F5CB0B8C5B9B2CE",
      INIT_1F => X"1A193AB896BC98B68AC83317171621174F96AB9DBEDEE3E8EFD6CDB15F252410",
      INIT_20 => X"0F201C1F355F4333333E4C3E304D80ADBBD1DED28D696D57405143656D3578C5",
      INIT_21 => X"205192BCEAA92E1B704A322C171E16161E262025363069922A31282D2C283113",
      INIT_22 => X"11130E222C2927252A2A2C283033312E25231B20262222212018349ACEE7E65F",
      INIT_23 => X"0A0F0C0B0C0D0E121A3C23201B713F24211E182E2D2774ACCED5D5D7CF9B3218",
      INIT_24 => X"19110827B9DEF1F3BE65C2DE8A2113121D1E17877A8FA761ACE5CF815B55A137",
      INIT_25 => X"221C4592B746687C6767B8CDC8BFB7CCC0D0C5C0B759273224616A5F44555B3E",
      INIT_26 => X"5A94937451AFD7DADAD7CDB05621242320300B0D181C1F1FAC9C67671F1F1E20",
      INIT_27 => X"CADFD5D28A665945444A48607733779C1E1E1A80AFAFA2A4A5842A1B15121F19",
      INIT_28 => X"1B231E274A3D216E462E292C272B250B141E1924382C3B506E846646303A84B8",
      INIT_29 => X"2526151D242121201F173AA3D1E7EEE5CEDFEEEADEA724186848312909091105",
      INIT_2A => X"1E1F1920373D88B7D2D3DEE0DBC9712414170C212D272222272C2E2A3133312D",
      INIT_2B => X"2D3A218A7EBDD9B0ADDDC3A4D1A38A390A0E0B110D03142019291D46253A4524",
      INIT_2C => X"C2DAD7D7BE5A6E65215846457D4C5D431610082F83687070A4E38A84C2201210",
      INIT_2D => X"201B0F0C1D1D2222287FD24F1D1E1E1E231A407ADB437AB29275AAD3DAC7BED0",
      INIT_2E => X"1C1D242AA88DAB88B2B0101516151F1D608F7A886C82CAD7CDBBADA24B181F21",
      INIT_2F => X"1211122B605F839FAD9E7A503A277ABCCDE5DCE5705C685B5047445979455B71",
      INIT_30 => X"FCFEFAE8D3AA22107E6D2A2E4C5E6777421A2F2748592C8F622B292C26251E12",
      INIT_31 => X"1C19091E2E262124282D2C293132302C2926111D20212020211748ADD4E9EEFD",
      INIT_32 => X"08130B10255F6E281B1F1A4C21407C1E1A1D1C1C4A4F90B8D4D6E8E7E3D59A30",
      INIT_33 => X"19110937BFCBD2CDB685B8BC962412103A412C979995769499E1AE99C6BB9A3A",
      INIT_34 => X"1F19482DA88D91A69C73A8DAEBC5B7CCC2D8D7D9B8577869205496AB93AF8C42",
      INIT_35 => X"608A867D707BC2E0B260507E4F1E1F2021140D0E2120262424356A31221E1F1F",
      INIT_36 => X"DAE9E0E34A4B71594A4B344F6A4E35531C1D292940AD86B1958D0F1C1513151D",
      INIT_37 => X"2F22422437706262492C292A26211D151E292669AAC0D1D8D2AD8A51482374B9",
      INIT_38 => X"2D20121E1E201F1F21175BB7D6E4E9F3FDFBF5E7D3AD28195D934B293C5A4F54",
      INIT_39 => X"1E171C1E535292B5D0D8EDEAE5D3AE4023170B1A2E2624292C29292732312F2C",
      INIT_3A => X"40482E9BA1744C969DE0A47E749EA7454F17324548384B2A20251D44423C661F",
      INIT_3B => X"C4DAD8D9AD7AB3741E4A7ABB98A7684E181111358574747E9FAEA29C8F1A120F",
      INIT_3C => X"1F180A101F1F26282C1F252525201F211C1A46194DAE927CA06BAFDDEABFBBCB",
      INIT_3D => X"1F1E272F2363A792AF71101F0F1B6E1E6590894C6592BEE18A61675D441C2221",
      INIT_3E => X"507779B9DAF3F2E9DBBF9A4B492679C2E3E4DCCE31354F33354921424B3B2540",
      INIT_3F => X"F7FAF2E7D3A82B28296152232054161828274623368E85685B2C292725211B23",
      INIT_40 => X"1F130C152C26252B2D26242632302E2D2D1A171E1D1F1D1E1F1669BFD5DDE8EF",
      INIT_41 => X"75193D4841674A33232B1C3C7F544C211C15171C444A96B3CBD9EEE9E2D4BB51",
      INIT_42 => X"180E1B2928110F1C4F9291A09811110E436A2A99AA978CB8B0DAB08A5585AF4E",
      INIT_43 => X"1E1B3F241274674EA56FB3DDE3B8BDC9C1E1E2DBA69EE2861D42555E9D6D3159",
      INIT_44 => X"64A79B5A73B0B7D77F5D7F64351A21241F180B0E1D2027292626252B27201D21",
      INIT_45 => X"DFDAD9B525221E11243D15322B202B34211F272D2F1E7D90AB61101B0E28B24F",
      INIT_46 => X"431F35224FAF8CB9902628242423183784B7D1E0E4F3F2ECDAC8A5493B2579CE",
      INIT_47 => X"281A1A1D1D1E1C1C1C166BC5D3D7E5EDF4F7EEE7D39C272E171A2F2945804A40",
      INIT_48 => X"181714182A449AB2C9DAEDE9DFD7C460170F0B112A2724292A232127312F2E2D",
      INIT_49 => X"44923197B8C3CACDBAD1C2B78E98B6506A15365942E17B3A2226185798877328",
      INIT_4A => X"BBE1ECDAA2A3E28F1F36681B8058215D180C22201824292A1A1678B17712110E",
      INIT_4B => X"1F120E0D202329292727272C2A20191C20193D261F35333CA479B1DCE0B1BBCA",
      INIT_4C => X"20202A2E2A281A90994812181137A99E6FB9C0A9A0BCB3CB9B3B5977371B1F22",
      INIT_4D => X"8DB5D8E0F3F4F2F0DDC5A94E291F69CCDCDAE4941F191110192E13251D1C2E30",
      INIT_4E => X"F8EFEBECD3952629232B24307391C85D411B212468AF8CB7811F2825261F1934",
      INIT_4F => X"180F080F292724292822212B312F2E2D241E1A1B1E1E1A1C1B1768CAD4D6DDEB",
      INIT_50 => X"890E51D38B993935231D1B8F7899A32F1C1B161A1A4498AECBDFECEAE2D2C371",
      INIT_51 => X"19102424242424232B30142D4013110E419F4E8DB9B9BED4B6CAC7D4CEC0B856",
      INIT_52 => X"1E1841264E47374F9D78B0DBDBAEBFD2BED8EAD39E9EDC8D1F265E2B45512361",
      INIT_53 => X"91B5D2D5CEB0B7C7B46D6470471D211E1F130C0C2124252D2C2426212A231716",
      INIT_54 => X"DCE2E8661E1311100D211A2024272E311F212C2E29302524A82F15190F4DB0C0",
      INIT_55 => X"461A24256387768A6F2B2927261D1D2F8FC0D6E8E8F1EFE5DED2AA4D1B1E6CD4",
      INIT_56 => X"2621191A1C1C191B1C186BCBD7D9E3F3EDF0ECE9D29532191B2329246EC2B52E",
      INIT_57 => X"1619191E1A458CAACFE3E9E9E4D1C382240D090F2727252C2722202D302D2F2D",
      INIT_58 => X"38A26E94BECBC9C7B3C8C1CABABBB77494122B92A03E2A3F22192A707C9B9814",
      INIT_59 => X"C0CFE6D29CB6DA811D2362376A604757240F1E241E1F28302A2827231616110E",
      INIT_5A => X"1D190A0D1F222327252B2626202418121E1740264956654A8975ACD1C7A3C3D1",
      INIT_5B => X"1F232B29302A2422100E14140E53C7AC88B6CBD6DEB1BDC6ACC3AB8E71441D1E",
      INIT_5C => X"81C1D9DCDFE7EEE7D2CAB146131D50C1617F90260F0E0B070E111E262827332D",
      INIT_5D => X"F3EEECE9CD983F0C232A27256B8A2E2E41242527696229743933272822271D25",
      INIT_5E => X"2E0C0D122625232C24211F2D2F2E2F2E2E231B1B1B1C181A1E1B74CBDBDDE3EF",
      INIT_5F => X"820D174B7F113A2F1E1C24732A5853281A1618151D4186ADD3DCE5E6E3D7BD7B",
      INIT_60 => X"32081220252428282E2B28221C16120F30BD7787C1D2D2D0BAC2BED7CDD2B196",
      INIT_61 => X"2718353A2A2618188F829FC4B67E96B3A9C0DDCD92B8E15F1E2155364F504E4B",
      INIT_62 => X"8AB2CCCFD4B3BAC4AFCED2BD825B19231C1A0E0D1F2329262E26262622211D14",
      INIT_63 => X"202B230C131D170E081A23272B2F343122242A2D2A2D29242616181B0856BE9D",
      INIT_64 => X"402A22245A8C23452D28252418191A1C74BFD0D0DEE6EAE5D7CCB335121D4196",
      INIT_65 => X"2A24191C1C1A191B191C71CADCE0E4F1F5ECF2EACE9763161C2826274F42233D",
      INIT_66 => X"181917101B4084B6D6E4E8E3EDDAC18A35110A1B2523232C2421222F2C2D2D2E",
      INIT_67 => X"28BF7D8CC1DADDD7B1C6BED4DFD9ADA37E141719384951271D1D258B26432C28",
      INIT_68 => X"ADBAC9C88DC0C7431F22459BA1997D9A350E1123242329292E2B28241C1A100F",
      INIT_69 => X"1C150D0D1C22282428232D2E221F1B16211D287F7E787663957C96BAB0926B85",
      INIT_6A => X"2428292E2C2B2825191118190953C28F85B7CACDCCBDBABFABC9BFB89468191E",
      INIT_6B => X"7FB8CFD5E2ECEBEAD7CCB13706153769181F10192225201D1220242B33303430",
      INIT_6C => X"F2F4F0ECD2A96B401B252A2D35576948381F23272D41696F2B2728211C101117",
      INIT_6D => X"2E1206132520242A2421232E2A2E2C2D2A24181B1B1B1B1C181F6DC0E1E6EFF5",
      INIT_6E => X"850C304A423B4B23191E203D424E1D1E1C19150D15488ABEC9E4EBEAD5D3C6A0",
      INIT_6F => X"1C121322232228292D2B28251D17110D1BB4808DC3DDE4D0AECDC2D7DFDFAAB7",
      INIT_70 => X"181819292D2C292277858BA6B0A87F91BABFBFBD8FC3BF2B222341754E51535B",
      INIT_71 => X"89B3C4D4DCCABBBEB2C9BCA6A87B181D1D140C0D1D23282526242A2C23201C19",
      INIT_72 => X"1A231D1E242922241D25262F342F343022292A2C2B2B282412101816064ECB9C",
      INIT_73 => X"301921272620565935282A1E1B14101C8CB1D7E7ECEDEEE7E2D2B5480F0F3846",
      INIT_74 => X"2A23171A1A1B1B1C1D3074A6A8CCE9F0F3F0E3E5D4B36654211F262A547C7F6A",
      INIT_75 => X"1C17120D144C94C1C9D8E4E3DAD9C4A12F170B19261D23272421232E292F2C2E",
      INIT_76 => X"179E778AC3D9E5CBBAE0C6D7E5E1A9AF7D13312E385C601F221F201E40532119",
      INIT_77 => X"BBB5AFB688D2AC2124252D3125272A2318111421222027292B2B28261E15130D",
      INIT_78 => X"1D140A0E1F2325262826222624221D1A1816110C0E0F0F065C9286A5A9ABA9AB",
      INIT_79 => X"212A2B2A292925210F1119120441CE9F8AB4C8E3E3BFBDC1AFD1C29DAC87161D",
      INIT_7A => X"8EB9CBB8E1EFF0E7DCE0B65D0F0A313623262120252722231F272832312E3530",
      INIT_7B => X"DDA69DBDD6BA616F571D2328485B575B271E1D262C272A2D362B271616170F29",
      INIT_7C => X"471C1028251D22252221242C292F2C2E2A2319191A19191A1E3E6F7C7B7ED1EA",
      INIT_7D => X"6B1D3C3C4254442130202021283627191913110D12469EBEC0CAD1D2C8C3B9A6",
      INIT_7E => X"1E12161F212026292A2A29261E15110F158E7789BFD0E5BE99D9B6D4EBDDACA7",
      INIT_7F => X"1C16111A1A17170F489589AEA0B4C9C6BDAFA6AF8EE3891E242823232A28251F",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "NO_CHANGE",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => douta_array(7 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88\,
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena_array(0),
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => ena,
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized11\ is
  port (
    douta_array : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized11\ : entity is "blk_mem_gen_prim_wrapper_init";
end \blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized11\;

architecture STRUCTURE of \blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized11\ is
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute CLOCK_DOMAINS : string;
  attribute CLOCK_DOMAINS of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "COMMON";
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"8CB7CEE7D6B1BEC5A9DACB9FA888161D1C120A0E2023232528271D2125211B1A",
      INIT_01 => X"2F291F262923222220232735302D3532202A2C2B2824201E101219100431C79E",
      INIT_02 => X"1D251F252629292A2B2E220D161407368FAF9C68BEEFE9D5A8CEB468020C212D",
      INIT_03 => X"2A231B191A1717181B3E596F7D3FB3EDB95D7395CAC6627D80212829151F2A25",
      INIT_04 => X"1910110C0F40959889BDC1C2868291AB6D1B0E2B211F23242021252B292D2C2D",
      INIT_05 => X"0E867E88B8C7E3BA6AA697CBE4D9ABAC5D22485B46190F22301E1E1D1B192318",
      INIT_06 => X"BCACACAB9AE8611C2428293127282A261A14171D2121262A282A2A241D150D0E",
      INIT_07 => X"1B120C0E2024232327261B202520191B1B1812171814110E2C788EB794AECCD2",
      INIT_08 => X"1F262B2C281F1A1B1313190E0623B89F90B8D0DDC5AEC1CAA9D7D0A3B07F171E",
      INIT_09 => X"95827B6EA1DFD89D6891B0670D171A20302524272724232525212436322D3534",
      INIT_0A => X"B17A9B97A6C9655C622228251C1C1E1D1D242124292E2F302B2D200F191F093F",
      INIT_0B => X"8A1F0D1F1C2125241F20262B2A2B2D2E2A231C1A1B1717181F3C508E755C9DF2",
      INIT_0C => X"50202806081A241F211C201E1E251A141C12130C10456B5852A6C6B45E505D96",
      INIT_0D => X"1712181D2222272A282A2B231A150E0C09747888B4C3DAC673728BC0D7D4A2A9",
      INIT_0E => X"181812101514180D0E3C8CC97681BAC0A193BBAF95E03D1D2127282929272722",
      INIT_0F => X"8DB8D2D3C399BEC8A5C9CEA1C470161D1A110D0F2124232226251D21251F191B",
      INIT_10 => X"372228232D2F36292623242C2C2D34351F242A2B2820191A1414180C071DA993",
      INIT_11 => X"2022212826232D31282D201716443B458D82CEABA7D4CB847B86917135171B20",
      INIT_12 => X"29221E1A1B18181A1F446B775B88A4ECBE83338999BF5B668D1A1F28181A2425",
      INIT_13 => X"1A17130A0F504B6B8E92CAAD8C6A71A19A2E221F182325241F2028292A2A2D2D",
      INIT_14 => X"0C5A7885B4C8CB92607992C4D5C89CB13E010F1B191F1B1F191F1E1B1F1D1917",
      INIT_15 => X"9175CEB39BCA20232024252F282526231C12181D2222272B292A2C221817160D",
      INIT_16 => X"19120D10202324222524202225201A19191812191A161112101686DD698EC7BC",
      INIT_17 => X"2124282928231C191414170B0F1A9D958CB9D1CBC96C99AF92BECBA3C555181D",
      INIT_18 => X"89A9B6B6D1DAC8BBB9C98D71821E15284C2627282F36302E2725241F252E3036",
      INIT_19 => X"BFB59186BCC25172902029251E26232723241E22272B2B2D30291C1B1352884D",
      INIT_1A => X"9428B23D14252622201F2A2A2A2B2C2D2A231F181A19191B14417FA7BED0B1DA",
      INIT_1B => X"2D0E11121A1A22211A221D1E1A221F1B1619130E0E4E685563A1BFBAA05969B3",
      INIT_1C => X"1C11181D2121272C2A2A2C231A1918110F3D8086B8C99F4E477D5691CCC09BA2",
      INIT_1D => X"161A1719191313130C167CCBB1ADF3FBCFC1D7AFAB821A232123201D2A1F2625",
      INIT_1E => X"95B6C4BEC0B16B7086B8C2A9AF391B1D18130B11202224222525222325201918",
      INIT_1F => X"36254C2F4E9C28342B2322182B312E35232826282A25211A1413150C111194B0",
      INIT_20 => X"2222202629292D2C2C29171A153E9A59A78C447DBBD1C4B461589E80818E3423",
      INIT_21 => X"2A231E171918181A153F9CD2C4BFB4D0C4BACABFCCC659AB871C24251B1F2326",
      INIT_22 => X"1516102128447B5F70A4BFB9BE619BBA843E9C3915262A2021202B29292C2C2D",
      INIT_23 => X"1313508DBBC380444D764F67ADC3A09A170C101619201F211C1F1E1B1E201D18",
      INIT_24 => X"B1C9D5B6721C1B2420242626252925221A12171E201F262C2C2A2C241C15100E",
      INIT_25 => X"181509112122232326272323261F1715131815151A1A140F0E106EC7BCA2C9CA",
      INIT_26 => X"252B262B2B2423191514150C100972AF8CB9C3C5BCB69292ADB3B8A79C291B1D",
      INIT_27 => X"AE8D6298C8CDC7CE6C709E82755445223222573A337144352E27241C2C2E2F37",
      INIT_28 => X"C4BEC7DAE1C07FBD7B1B2424192122251F201F2628282D2B2A201D1A143AA16A",
      INIT_29 => X"83339D491326291E201F2B29292C2B2D29231B19181B1614163CA6DECDC0B4D3",
      INIT_2A => X"0D0C0E1618181E1D1D201D1B1F1E1C14181B1130243E9196ACBABCB9BEBBC7BC",
      INIT_2B => X"1610171E222027292B2929241915100E1109238ABAC58164588F6261A1C6A883",
      INIT_2C => X"141917161617120E0E0C5DB4BFA8CAD2BDCFCBB1420F1B231F24262B20242520",
      INIT_2D => X"8CB9C5C0B9BFBFBDAAACB4A78E231B1D161108122324272626251F21241F1615",
      INIT_2E => X"32214353207C7E302F2923202B2E2B3823292A272924201A1514140B0F0A4AAC",
      INIT_2F => X"201F202425272A2C281C201B1231A264B2A1A5BBC6C6BECEA49BA7928F524624",
      INIT_30 => X"29221A1B191814171647A9D8DBD8B3D2C4D5CFE7E0B999C7621D25241A222124",
      INIT_31 => X"1B1B0E3A2E3CA9C4CCB1B7B8BCD1CCC37D45C34B1525261C20202A29282C2A2D",
      INIT_32 => X"100B1486B8C86A4D609258608ACAA4450B0E0D1618181D181B201C1B1D1D1B14",
      INIT_33 => X"BED3C1A72E151A231F232529242022211510171D231F27292928292418141111",
      INIT_34 => X"160F09132424292625251F21231F1616151818171415110E0E0B529DBDAFC9CD",
      INIT_35 => X"2628282527211F1B1410130D110C31A990C2C8C0BFCEDDD2B0A9B1A0861C1C1E",
      INIT_36 => X"B4B8BBC7C5C2C0CBC3AEC0A0965F40262C26376A2B6C7E2F2D2C2425292F2E35",
      INIT_37 => X"CAE0DFEADBB5A9DC4C1E25251A212024221E21242324282C241F1F1B1029A260",
      INIT_38 => X"7967DB431725231B1F212A29282C2A2D29221B1B1A1B15181459AAD2E4E2B4D6",
      INIT_39 => X"0F0C0D17181C1C1A171E1C1C1B1E1A161A150B46543CB6CACEA6B7B6C1C3C9CE",
      INIT_3A => X"1611181E221F27292728292418121112100D117DB2C77E5F7FA2534C7ECA9719",
      INIT_3B => X"14181815131311100D0C4B8CB8B6BEBAC2D2B69B281718231F222628291F1F22",
      INIT_3C => X"97C7D4B2A9B2CCC4AFACB1A272151E1D170F0A13242328252527212224211616",
      INIT_3D => X"25283974694B5C362D2D262B282E382E2A2823242422211B150D101114101C8A",
      INIT_3E => X"221B1F242224282A20211E1B0E2CAE6EAECABACFC7C6CBD4CABED6A78A543726",
      INIT_3F => X"29221B191A1C1715115BA7CFE9D8B6DCD0E1E6EAE0B0B5EF451E24261A201F24",
      INIT_40 => X"18120A4E8140B5C7CEA6B8B5C5CAD5CE8680D13A1925211B1F242929282C2A2D",
      INIT_41 => X"100D0D6FABC3BE9FACC87D5A9BC48C16110A0E17191C1D1E161D1C1D1B1E1818",
      INIT_42 => X"CECCA98D29171722212128282A201D221712181E221F27292628292318131111",
      INIT_43 => X"170E0B1323232625242721202121161614171714121211100D0F4580B2BDBBBC",
      INIT_44 => X"2B2822202226241C160D0F1114160D589AC7DF9E76A2B8B290A2BBAD52131E1C",
      INIT_45 => X"A3D7CEDEBBCBC6D1D6D1DDB397632C261F243581B39482402F2A2A2F292D3926",
      INIT_46 => X"CCECEDEDE3A8B5E6431F25271B1F1E2522181E23222529271F201D170C30C17E",
      INIT_47 => X"9A9BC12D1B26211C1F262829292C2A2D2922191818111215114BA0CDF0D0B8D6",
      INIT_48 => X"090D0F161A1B1D1C161C1C1D1C1D1719151309479E4DAEDBD39BBAB1C3D7E1C4",
      INIT_49 => X"1713181D222028282828282117151010100E0D5DA6BDD8A9C1D5BAA9CFBD8315",
      INIT_4A => X"13161714131211100C114278A9BDC6CFCCC39E80301717212522292927241E20",
      INIT_4B => X"8FCBDFAC65CFDABF6F89CCB135151D1B180D0B142322252523251F1F1E1E1514",
      INIT_4C => X"212C3F9F8DACB94B2C2A2C322C2C2821272825222128251C17100D0F1315113C",
      INIT_4D => X"22171E2221272923211E1D130D29C99099DBDBD8C4D2BFD5D4E2DFAF87392A25",
      INIT_4E => X"29221818191C1419113A9ECBEFC6BBCEC4D7F4EBD89FB2CB362125271C1E1E25",
      INIT_4F => X"15130830A668A3D4D4A5BEB0C7D4E2C694C7C31B1C26221E1E272829282C292D",
      INIT_50 => X"110D104A9FB1CDC5BEC0B5BDD3B46F0E0A0D0F131A1C1C14171D1B1B1D1C1B1A",
      INIT_51 => X"D2AF9A752E181820292328292627201E1613171E232229292A29282118151010",
      INIT_52 => X"180C0C142321242622231F1F1C1C161313151715151311100C104468A1B7CCD0",
      INIT_53 => X"242727282424231A16120D101513103E7EC7E1D59B9DEADB6CA2D5A823151B1B",
      INIT_54 => X"91D2DDE6B7CDC2D1E5E3C6A3B9582724212747B099C4C83F282831342D2B2120",
      INIT_55 => X"C7BBE8DFD29EB3C5272224271A1E1E2722191F202026281E221F1C140E1AB48F",
      INIT_56 => X"8FDAB31A1C26211F1E292629282C292D2921191A1C2F181B14329ACCE7B5BCCC",
      INIT_57 => X"0E0911131A1C20171A1E1A1A1D1B1F1D15120E1CA87F9ADACF9BC4B4CADCE1C8",
      INIT_58 => X"1611161D222229292C2A2A231B130F13110D163A92ACC5CCC3B4BBCEBAAF5615",
      INIT_59 => X"14161817161411100D0F4B53A1B6C9CCB9B2977029191A20261E20272828231E",
      INIT_5A => X"71BDD3CDB3BDBCAA94C7D4A519141C1C170D0C1423222427232221211C1A1613",
      INIT_5B => X"242756A9678D99482A2A343529282621242624272726201513100D1415160D4F",
      INIT_5C => X"20191F212125251D21211D19120F908884CDDDD8C2E5D1D1E6DFCC9B614C241F",
      INIT_5D => X"2921181C1A1C141B163093C6E1A6C8D9C8CDD0DAD2A1B6BC1F2223261A1E1E28",
      INIT_5E => X"13131014958698D7D2A1CEB4C4DEE1C98DCE9D141E241F2020292728282C292D",
      INIT_5F => X"100D1A327DA3B6D4D8C3CBCAB1AB4110060A1215181B231C1C1D1A191B1B201B",
      INIT_60 => X"BFAC7B75261A1C21261D1B26292824201510141D212027282A2A2A241D140F12",
      INIT_61 => X"150E0A1424232327252421211B1A1514151719171715110F0D11584395BACAC7",
      INIT_62 => X"25242123282A1E14130E0D151418115C68BADDCEBCC7D6BCA2BECE9A12131C1D",
      INIT_63 => X"77C6DFCA8AC8A5CDE3DFC0983B5B1C1B25234F78267959562832333525252422",
      INIT_64 => X"69BAC4CFCAA3BAA31A2724261A1E1E291D191E242226211C20221E20170A8591",
      INIT_65 => X"8FD38C141F231C20222A2627272C282D2921171B17171C1A162E8CC2D8749BA4",
      INIT_66 => X"0A091117171B20171B1D1A18181B1E1711140C09757C99D3C79AD4B0B2D7DBC1",
      INIT_67 => X"140E141D201F2728282929231D160F100F0D1D306A9AAACCD1C8D5CCA9912911",
      INIT_68 => X"161719171715110E0D13643A7DBED1D9C09D5B7F231B1E222C221E2627292422",
      INIT_69 => X"629FD1D0C0D0DBCAA4C1CB8111131B1E130F0B142423232727262020191A1416",
      INIT_6A => X"1F2248992A543B4329353037262523252424202329281E14150E0B1315150F64",
      INIT_6B => X"1F141C2427271C1C221C151A1708779973BFDCC57D7E83BEE5DEAB8C784C1D1F",
      INIT_6C => X"2720171A16181D18172285BCBC5640534281B3CAC5A2C68B19272426191C1B28",
      INIT_6D => X"13100B065E7C92CFB684C898B0C8D6BA8CD77C1522221B1C22292728292C292C",
      INIT_6E => X"110D203859919EBFC2C5CCC2A07E1A1509091218191B1C171C1B1B1B181D1C17",
      INIT_6F => X"BC7D52881E1A1F2229222224252826231410121E1F202729272828221C161110",
      INIT_70 => X"12100B152423222626261F1F18181515151717161615120E0C176D425BB9D6E1",
      INIT_71 => X"2324212728241E15140C0C1613140F686586C2D1C0CBCAC4ABC7C5660F161A1D",
      INIT_72 => X"74B9D3CBA27A97C4DED69F7D5F252122202639714E663D2E2B332F3427272326",
      INIT_73 => X"465383CAC6A8A06319222326171A1A2623121B242B251A1E231B13131308569B",
      INIT_74 => X"88D7641523211B19232827282B2B292C261E171A16191817171881BF9344263E",
      INIT_75 => X"08091318191A1E181C1A1D1C191F1B16140E0E08528088C5AD669B76B9BCC8B9",
      INIT_76 => X"1511101F1D222628282728211B151111110C2246468891B9C3C7C2B593711A15",
      INIT_77 => X"141716151514130D0D1D735039A6CFD0AA5B618E1A1B2021251F232326272823",
      INIT_78 => X"7171B5D3C5C5C1BDB2C0B64612181B1C13100A1623232226252520211C171514",
      INIT_79 => X"24282A1A4D754B2A2A33302F282721262325242826221F17130B0C1713141271",
      INIT_7A => X"24151E2229201B2124201A15100D2E7D72B3CBCABCB5BFD3CECA9F6C0712231F",
      INIT_7B => X"271C171A16181516171781C46F354D5D474651CBC9B053311D1F2226181C1D24",
      INIT_7C => X"13100F09438583B9B3546363A6B8BBB58DD64417211F1D19242727272B2B292D",
      INIT_7D => X"110E2455357583B8D4DAC3A98461211308091217181820171C1B1E1B1B1F1B14",
      INIT_7E => X"7E477C91191D2020251E2124262526221510101F1C212526262526211B151010",
      INIT_7F => X"13100816252323272624222420181414141716151514120C1121755D2A75B8B1",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "NO_CHANGE",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => douta_array(7 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88\,
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena_array(0),
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => ena,
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized12\ is
  port (
    douta_array : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized12\ : entity is "blk_mem_gen_prim_wrapper_init";
end \blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized12\;

architecture STRUCTURE of \blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized12\ is
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute CLOCK_DOMAINS : string;
  attribute CLOCK_DOMAINS of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "COMMON";
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"2627262825231F1A140C0D151714147C845CA6D0CDC7C2C1B6B89C2818181A1C",
      INIT_01 => X"6CB1C5BBB6C9C6C8C4C2A2501720241C26222B3A2A27502B2934302F28262127",
      INIT_02 => X"4F4946C8CCAD2E1623202126181C1F2322181E1E261A1D24211F1D1510120F35",
      INIT_03 => X"9AD22619201E1E1A252627272C2A292E271A171A1718141617137FBA58395164",
      INIT_04 => X"0809111819171D181D1B1D181A1C1A1312100E092D8A83B8AC57556572ACBEAC",
      INIT_05 => X"1610111F1B222425252425211B140F11110F2866305470B3D8EACA9972592112",
      INIT_06 => X"141716151514110F1822766D303382824A4997911B1E2021251E212526252422",
      INIT_07 => X"98548EC3D0C7C0C4BBBB7F1C161A1B1D140F07162724252627221F2221181415",
      INIT_08 => X"2526272730302D2B28362D3124252127262828282424201B130E0E131613157F",
      INIT_09 => X"1F191D1C241A21241E1D1E17120F0E1270ACBBBBB9C9C8BEBFBCA53B0F1A241B",
      INIT_0A => X"281A171A17191516171279B548363B6651443CBDCEA1331824222226191E2023",
      INIT_0B => X"100D0D0C1E888BB569478F585B79B3B394B81E1920202019262527282D2A292D",
      INIT_0C => X"110F2D733F3A52ACC2CAC1905A612213080A12191C18171A1D1A191618191814",
      INIT_0D => X"465CA68C1E1F21212620222425252321170F11201B232325252424211C140E11",
      INIT_0E => X"150F07172723242527211D202119141514171715151411151D2579783D29242F",
      INIT_0F => X"232727262525211710100F1316171884A9626FB1C9C2C3C0C0A66F28111B1B1D",
      INIT_10 => X"71A7BB978699A1B6BAB69D3C1B1B1B1A23262E2A292B342D2A322B3121242328",
      INIT_11 => X"904533C2CD99391C1F2223251B2021241F1C20202622242220201E18100C1517",
      INIT_12 => X"6935161C2023211A252327282D2A292B281B171A1719191817106FA9302966AE",
      INIT_13 => X"080A11181C1816191B1C1A15181815140F0D0F10145992A64B4A885F516AB2B7",
      INIT_14 => X"180F12201B242325252423201B130E1111112E7C5833346DAEC2B26C40742411",
      INIT_15 => X"151717151513111B202D83844B303E4C4577B58822202222251F232225262422",
      INIT_16 => X"B6795694C1C2D1BEBB856C29161B1A1C150F08162523222527202023261A1415",
      INIT_17 => X"2628252A2F2E332D2D2E2F332723232921262826282620100D120F131B1E2393",
      INIT_18 => X"222022202526232122221B141011131369A3CE69B1C2A756AEBD9C331124191C",
      INIT_19 => X"271B161A16181C1A18115BA5495FB3FBD96B5CB7CA8B3D1A1E2222251C202025",
      INIT_1A => X"0F0B0E100C1A8A8343348466413591B95614181A2024221B242327292D2A292B",
      INIT_1B => X"11122D85723C342D6A977E3E40841F10080B0E151B181918191F1D1819181315",
      INIT_1C => X"598FC08723212322231D212125262523190F151E1B2523242423232019120E11",
      INIT_1D => X"140E0715252422252621222526191515151817151613121F21378C8D5E3F333E",
      INIT_1E => X"21272C282A261F0C0D140E111D1D339BBB925769B9D1DBC9B76B7626181C1C1A",
      INIT_1F => X"669BCAA1B1D1B987C1BE9C2A15211C1F272529282A33322F2B2B34342C212529",
      INIT_20 => X"B0B4BDC7BF7B46191F2323251D201E252321211E2125211E1F20181010161317",
      INIT_21 => X"500F171A1F23211B2424272A2C2B282C271A161916181D1B191247A39EA58ABD",
      INIT_22 => X"080B0E121A1B1D1919221C1819181214110A0A0B1205847A2780B7C0AA578CB4",
      INIT_23 => X"190F171E1A2422232322232018110F1112122B8C8855443927363C315C8D1C10",
      INIT_24 => X"1519171515131723214195987362586282A0C28724222423241D1F2224262523",
      INIT_25 => X"BCAB70509ACBD3C8A6598B29161B1C19130D0612232320232321212423191615",
      INIT_26 => X"252529292C313331262B31322920282921292F2C2B261C0A10150E121F163F9C",
      INIT_27 => X"201E1D1E22261F1A171F1A0F0E1214145A93C5C0B0CBC8B7CFB2952718201E23",
      INIT_28 => X"2619161A16171C1C1A1336A1CEBC9FB8C6DDE6CEB3734C1E212223261D201B23",
      INIT_29 => X"130C0A09100B72AF74B6EBF1CFA5B4A94B12161A1E21201C2426272A2C2B292D",
      INIT_2A => X"12112A9198664E5545282F3C74921C10080B0F101C201D1C1B21171719171212",
      INIT_2B => X"9FAFC58524212424271E1F2324242422180F171E1A2421222221232017100F11",
      INIT_2C => X"120A050F1B1C172220202324211918151518171515131D2822499DA886858C92",
      INIT_2D => X"2029322F2A251A0D15170E1220104DA1C1BB86546AAEC8B77364972714181B19",
      INIT_2E => X"4B90BCC1B4BCC2BFCEA78B221A1F21232328272A2F303430232E302E23202929",
      INIT_2F => X"E7DDE3C9A76A5327202123261D1D1B231E1A1C202326221F171A1B110D111411",
      INIT_30 => X"491217191E20211C2425262A2C2B292C2619161A18161A1D1B15258FD3AFC6DB",
      INIT_31 => X"080A0F111A1F1C1C1C21161719181310130E0B0B0E0C5ED1BAABC3C0B6D4CF9D",
      INIT_32 => X"1610191C162321222123241F18100F1114102E92A17857606E50444C88931E11",
      INIT_33 => X"1618171615162529234FA5B29596AAB2ABBAC78A27232425271E1F2123232321",
      INIT_34 => X"C3C69C664D6C8E8150859922161A1B1A1209050C0F12111516171E2421181816",
      INIT_35 => X"2227262A2E33352C253230291D21292820292C2F2921170D16180E1522105AA5",
      INIT_36 => X"1D191E22242526271D1319150D151414388AADC1BAB2BAC4C1A17F1A1B1C2722",
      INIT_37 => X"2719161A1915181C1B171870CBA7B2CBD1D6E0C194665C2F232023251B191B22",
      INIT_38 => X"12100C0D12074BC0BF95949AAED7C7954A1017191E21211B2522242B2C2A282C",
      INIT_39 => X"17123792A68D69646C6959609B911F11070A1012161B1C1B1B201B1A18181510",
      INIT_3A => X"B2BFC8982C252225251F1F1F2122222114101A1A152223232225241E18110F10",
      INIT_3B => X"110A060B090E130C0E0D19242016181717181516141D2B272352AAB59E9CB7C2",
      INIT_3C => X"202824292116140D18170E19221462A6C3CDB47D543A4A4059A29A1D181C1C1B",
      INIT_3D => X"257BA1B9C5B6C4CEAF9A6618171A2D24232626292E34372B2D312B25161D2828",
      INIT_3E => X"BDD6D8B97979602F2B2124241A191C211E1B2020232525261E16171B10161717",
      INIT_3F => X"4A1316191E20201B2522252B2D2A272B2619161A1916171A1A191251BFB3999F",
      INIT_40 => X"070B0F14181D1C1B1C201E191519170F11110E10110C37AFCAA5CAD4BED6BA8E",
      INIT_41 => X"15111A1B181F22212120201C16120F1017193F96AB9A7E7170706E81A78E1C11",
      INIT_42 => X"1717151616262A272352ADBAA4A6C9CDB9C3C7A4352321242520202021222321",
      INIT_43 => X"C3CECB9B6C50443A76B2991C181B1C1B120C070D12151C1B15131F251D151817",
      INIT_44 => X"2025252A2D353324312C2F1B131B272720242523100B13121B180E1C21195FA9",
      INIT_45 => X"1E1B222023252625201A161C111618151F6190ABC3C7C8BEA99554141F182620",
      INIT_46 => X"2518161A1A1715171A1B1231A7C2B6BBC9D7CFAF64966430352523251A181D21",
      INIT_47 => X"10100F11110D259FBFB8BBCDCAD6B7864D15151A1E1F1F1C2421262A2C28272C",
      INIT_48 => X"171C4498AFA791858485869AB48B1A11080D0E15181D1C1B1B1E211B14171A0E",
      INIT_49 => X"BEC7C8AE3D232123252020201F21232114111B1B0E1421222524231813120F10",
      INIT_4A => X"130D070C181A22221F21252519141916161615131C2A29262451AEBEAAADD4D6",
      INIT_4B => X"2325261F0D0D0E121A180F1E201F58A8C1CFD4B992594F7690B98C19191A1C1B",
      INIT_4C => X"284B8FA5C2CFD1C0A485461A22181C1E2126252A2E342B2631262E16121A2627",
      INIT_4D => X"CDD3C5A062B2672E392E22281A161E211C1A2122242725242120171812121712",
      INIT_4E => X"5911181B1E201D1D2421282A2B27282C2516171A1A1915161B1C161E87C5C3CF",
      INIT_4F => X"070E0C13161D1B1B1A1A201C14121A100E100E0F120D1B8BC2BCC7C2CAD6B489",
      INIT_50 => X"14121C1D150B0C1820241F1114110F12171A429BB1AC9C999B9A97A5B8851A13",
      INIT_51 => X"1518151223292827264CB1C1B1ACD5D8BACBC7B141242323241F1F201E21221F",
      INIT_52 => X"BED1D5CABDBBADA1A3C186161C1B1C1B140C050A1A1A22222328272615141A16",
      INIT_53 => X"25272528322F22303227231A0E1925261C1D1A1E19130C101816131F21244BA2",
      INIT_54 => X"1C1C2023242625232121191512101513303D7A9EBCD4CFB99C675722141A1D21",
      INIT_55 => X"2316171A1A1A17161A1B151764BBC3D3D8D1BC806DC26A2E383625271B151F21",
      INIT_56 => X"0D100E0E130D197DC2C0BABFD3CFB090690F181B1E201D1E232128292A26272B",
      INIT_57 => X"171A439CB2B0A6A7A7A7A4AEBA801A16070D0C12151C1B191A191E1A16121913",
      INIT_58 => X"B2CEC4B542262425231D1E1F1D1F221F14121D1D1D110B0D12150E0C160F1014",
      INIT_59 => X"150D0509191821222221232514141A1616191415262728282744B5C3B9A6D8D8",
      INIT_5A => X"1F211B1F20130F0F1716192021253D99BDD1DDD4CED0D0B2ACC07F161D1C1D1B",
      INIT_5B => X"35444894B9DCCCA985546F25121C1F2425272629332825353029251B0B192426",
      INIT_5C => X"D6D4B1618ACC702E36392E2418151E201D1F212224242523221E1C16130F1314",
      INIT_5D => X"740E171B1D201C1F222227282927262A2316171A1A1A17151717141F45AEBDCD",
      INIT_5E => X"080E0D12151B1B191B1A1D16171318150E11100E120F1674B8C9CDCDD3C9AF8D",
      INIT_5F => X"14121C1B1C1B1B130E0B0912150D1116181B459EB5B7AFB5B9B8ACB4BB7E191A",
      INIT_60 => X"1717141E262829292739B6C7C2A4DCD8B0D4BFBC3F282728241D1D1E1C1E221E",
      INIT_61 => X"BFD0E3D6D3DAD6BAB3BC73151E1D1D1B160E060A19181F24231F1F2415151916",
      INIT_62 => X"2325262D2D232E31292A2C1A0C1721262528211A1D16100C13161E212025328F",
      INIT_63 => X"2021222123222522221E1D1913101317365D2A7CB4D2C49D5A5B77271F1E1E23",
      INIT_64 => X"2217181A1A1818151515132A3B97C0D1D3D29657AED2742E3639342415151D1F",
      INIT_65 => X"0F101010110F1261B0C9C8CDDAC3A88C7A0E151A1E211C202124272728262628",
      INIT_66 => X"191D44A1B7BDB6BECCC8B1B8BD7E1A1E0E0D0E1214191B181A1B1B1617141815",
      INIT_67 => X"B9D8BEBE3728282A261E1D1D1C1D221D14121B1B201F1E1D160F1119120C1216",
      INIT_68 => X"170E070B1A1B1F2325241E201515181717161924282A2B2B282DA8CCCBA7D0CE",
      INIT_69 => X"22232016191B100A0D1721221E252982C0D0E1D5D2DEDEB4BDC16A151D1C1D1C",
      INIT_6A => X"32782E4A9EBDB07E387D7D272C1F2022252326322524342B252A2B1C13132026",
      INIT_6B => X"D0C76E5FC8D26F2D3637362913161D1D212021212421252122221D1A120F131B",
      INIT_6C => X"800E15181E211C2021252726272625282218181A191618151715142B4875C0CB",
      INIT_6D => X"150D0E1012181B17171B1B19151218140F0D0E11110E1549A2BDC4C7D3BE9798",
      INIT_6E => X"1312191B211F1D211F171A1B110C1415191D3FA5B8C0B9C0D3CFB1BCBE821D21",
      INIT_6F => X"161524272B2B2C2B2A2294D2D3AEB6BBC7D8C1BA2D29282A281F1D1D1C1C211D",
      INIT_70 => X"BFD2E1D7CEDBDEADC6C25E141B1D1D1C180C060A1A1D1F222225201D16151817",
      INIT_71 => X"252428302128322A2627211F1B101E2621201F17171A130C0B17242220262476",
      INIT_72 => X"201F2223262224222125201B120F15212C854D1D68897C4A3FA189262F202222",
      INIT_73 => X"2317181A19151616161616255F50ABBEC6A84F7AD4D0662C3736372D10171C1E",
      INIT_74 => X"110B0E11110C1B3B87B8D0C9C3B27EAA851015181D211B1F2125262628272527",
      INIT_75 => X"181D35A3B9C2BCBDD4CDB1C1BE831F2418120B1011161C1715191C1D16101615",
      INIT_76 => X"D3D7C4B2262A292B29221E1E1D1C221C1211191A1E1F1F1F201C1D1813121515",
      INIT_77 => X"180B05091A1D1E222023221C17161817141A2C272C2C2B2B2A1E7AD3D9BA9CAE",
      INIT_78 => X"2322221D181615100D1A252121272269BED2E0DBCDD3CCAFC9BE5313191B1D1C",
      INIT_79 => X"2B8772242130312D66B1902730281F2221262A23212D2C2928261B1D22111E26",
      INIT_7A => X"AC6F4EA8DBD35E2C3637392E0E191C2120222627252222241F22241E14131927",
      INIT_7B => X"881614191D201A1D23222528292726252516171A1917151814191A21713A7AB0",
      INIT_7C => X"161E0D1312141C1A1719211E1A101315120A0F11130C203A68BDCCCEC5946DB9",
      INIT_7D => X"11101B1B1F211F1E201E1D18181F1616191E2198BDC8C0B9D7C7B7C5BD801F25",
      INIT_7E => X"14252C26292B2A2A292155CEDECD9BB2D7D6C6A7222C2B2B28271E1F1D1D231B",
      INIT_7F => X"C0CEDCDDD3CCBAB4D0C04C15151A1B1C170E07081C1B1D212324241C18171815",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "NO_CHANGE",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => douta_array(7 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88\,
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena_array(0),
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => ena,
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized13\ is
  port (
    douta_array : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized13\ : entity is "blk_mem_gen_prim_wrapper_init";
end \blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized13\;

architecture STRUCTURE of \blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized13\ is
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute CLOCK_DOMAINS : string;
  attribute CLOCK_DOMAINS of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "COMMON";
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"1E272813212A292927251D2520121F271D1F20241E1914101420232221272255",
      INIT_01 => X"1E212524222120252120201C15121E2A2B88854F1D1D1C4C86BE962836352524",
      INIT_02 => X"2216191918191914161E1E2179502D6966406AC2D7D8542A3538353212171C20",
      INIT_03 => X"130D0E12130E1F4750B2B6C9BF6E82BF901A15191D231C1D2522252829272625",
      INIT_04 => X"1A22168FBECAC6B6D3BBB7C8BD762122162120121516191A19181E1B1B141516",
      INIT_05 => X"D7D9CA97222C2B2B2727201D1C1E231C12111B1B1F211F1D1F1E1B1F211F1815",
      INIT_06 => X"170E05091A1D1C212323231D171617111E292A252A2A2A2B292530C5DDD5BCBD",
      INIT_07 => X"2221221F201B16102122232321272345BECEDEE7D6CBBBBED7B94118141C1B1B",
      INIT_08 => X"28878F6F704A778F9BC89B2D35342621212E1D1A2429272A2723202820131F27",
      INIT_09 => X"204392D3D9D8462A3537343820181B201B1E242524241F25241F1C1C1511222D",
      INIT_0A => X"9A20151A1A211C1D242325282927262621151919191715141B23221E7D6F2423",
      INIT_0B => X"1622261A10141B1A1B181C1A1C17171714100D121310205E3EA0ABC09D5DA0C2",
      INIT_0C => X"120F1A1B1F211E1C1E1F1F24231F1B151923105FC7C9CABDCAAAC1C7BD681C20",
      INIT_0D => X"272E29262B2A2B2C2A25268ADFDDBEBCD7D2CB90232C2B2C2726241D1A1D221D",
      INIT_0E => X"B5CCDBDED4CEBFC5D4B93D1A141B1D1C190F0908181F1C212422232018161816",
      INIT_0F => X"23292F1A2828282A2622232623141F27242223201D1F1720282424242126252E",
      INIT_10 => X"1A1E242525261F2326211C1A1213242C2487A47FB9CFC799AACA9E2F3332291E",
      INIT_11 => X"2214191C1B15131B2226211A7C8534183B7DB0D5DBD03C2B35343337301E1B1E",
      INIT_12 => X"13110C1113101E643A6AABA86871BAC29E24161C1B1F1A1C2323252828272626",
      INIT_13 => X"181F1A31C1D0CFC2A7A6BECBBF4E1A221720222312131E181B181A1D1D151515",
      INIT_14 => X"DAD0DA5C242C2B2D2826271D1A1C221D120E191A1E211F1D1E20232420201E17",
      INIT_15 => X"1A0F0C07161F1C1F24222322191415212B2C2B262B2A2A2B2A262853DCD0B7B8",
      INIT_16 => X"252122211C1E1D2E282524262126252395CFD7DED9D2C4CCD9A9281C15181F1E",
      INIT_17 => X"2084AD89B2DDD19CB2CBA231343632212025331C292829292522222225151E26",
      INIT_18 => X"A3B0C2DBDEC6332E3734323236291C1C1B1F24232325212126221E181218252B",
      INIT_19 => X"A029191E1E1F1A1D22222528272626262414181C19181826252621177C905B6B",
      INIT_1A => X"17211F221E151C191A181B1E1E15141412100D10130F1E68512E525B5792C6C2",
      INIT_1B => X"130D17181D221F1D1E21222322211F18181F231BA0CECBC5A18EB4C2B62C1F24",
      INIT_1C => X"2C2B2D272A2B292A2A272732AEC7A9B0D9D4A92D292C2B2D2A2627211B1B211C",
      INIT_1D => X"64D1CFDFD6D0CAD5CF9C1A1D161821201C110A07161E1D1E232323241B12162B",
      INIT_1E => X"23261F242628282824211F2325151C2326212120201A252C2926252723262523",
      INIT_1F => X"1D2024222224221F24231E16171F282B1F81AB8F98CBB099BAC8A2323538382C",
      INIT_20 => X"2413181B161A2229242522177D9B7CB1D9C9CEDEE0BD2D2E373534333634211B",
      INIT_21 => X"110E0E10120F1C6C6A25233665ACCAC1A22A1B1B1F1F1B1F2222252826262625",
      INIT_22 => X"192322115ED1CAB2AB7AAABB9912252319231E1D241A181A1A181B1D1D161313",
      INIT_23 => X"D9D464232D2C2C2E2B2627261F1B201C130D16171D211F1E1F22212224201D19",
      INIT_24 => X"1B140606161C1F1E222422231D1421312E2C2D272A2B29282927272B5CCEAAB2",
      INIT_25 => X"2622211E1A1A2A282A272529242725243BBDD2DAD0CECDD6D27C1622171A2020",
      INIT_26 => X"1C7CB0978DC0AC9CBFC69E35353436362E251A262428282524211E2423141A1F",
      INIT_27 => X"DED0D5DCE0B2282E3635353536392A1F1E2024242426232020231E181E222B2C",
      INIT_28 => X"A2271F1B1D1D1B22222225282626262521131819151C2625252524197DA98DC7",
      INIT_29 => X"1C221E1C221D181B1A19191A1D181313120E0F1012101A6B78463C5288BCCEBF",
      INIT_2A => X"130D15181D211F201F23222223201D1C1926221325B4CD929D87A6BD6C0B2622",
      INIT_2B => X"2E2D2D272A2C2928292A2A302BB2B9B2EDB237272A2C2C2E2C252629241E201C",
      INIT_2C => X"2889D8D9D2CECED9CE4417251B1B1D201A170806141C201F212322221E1A2C33",
      INIT_2D => X"392A2523252A2725232120242113181C2522211E13212A292927272B26272524",
      INIT_2E => X"1E202325252523221C231E1E241F2B2D1A75B6A590B0B8A5C4C59D3835333639",
      INIT_2F => X"1D141919191F26222727241879B68FBDDDD2D4DBE1A526303632323535373327",
      INIT_30 => X"14100F111112186A846C7A90AFC2D1C09F2123221E1B1B222122252826262624",
      INIT_31 => X"1A26261B1261BF8A7FA3B1B636142523201E201A1D1C1C19191B18191D181214",
      INIT_32 => X"D3692B29292D2C2E2C23272C2721211C130F16191D2120211F23202321211D20",
      INIT_33 => X"1A1B1405131D21211F222120201E2D312C2F2D282A2D2A282A2A29342E66BAB8",
      INIT_34 => X"2221201C1529292A2626282B282726232649C7DDD3CACEE699181721231A1B22",
      INIT_35 => X"176CB2B597A0A8ABCAC89D38363637373C3C2B25252C2825232122222014161B",
      INIT_36 => X"DACCCFDFE2992632352F2C3034333830201F2223232322231A232023261D2A2D",
      INIT_37 => X"981D262A221D1A221F222528262525231913181A202426252A28241973BE88AC",
      INIT_38 => X"201B24181C1D2018181A181A1C17121415111013101416709A8AB6C4C5C3D0C5",
      INIT_39 => X"1310171A1D2120211F231C2321231D231A23281E16107D907EAEC1870E1D2727",
      INIT_3A => X"28312C29282E2B2A2B282630362A87B4602A2E292F2D2E2F2C22282D2A24211C",
      INIT_3B => X"262489DCD0C8D3D63D1B1720271519231C1B1F08111E20221F20211F1B1B2A2D",
      INIT_3C => X"3D3B39261F282624231F1E1E1C131520201F1C18212C2A282526292B2A282724",
      INIT_3D => X"2B202323252421231C1C252823202831185FB8C49AA8B6B1C9CA913637373139",
      INIT_3E => X"1612181F20252927292724216EC2979FCCC4D2DCE4892730342F282E33383837",
      INIT_3F => X"150E101411151B6EA399C4D2CDCBD0C88920232B291D1C232323262722232424",
      INIT_40 => X"1B212A231A150D407EB5A526101C262E161C221B1F1D1E1D16171B1B1C1B1312",
      INIT_41 => X"32342F2B252B30322C212B2E2B26221B1310171B201E23181A231D231F231A23",
      INIT_42 => X"1B1222160D1C1C212120221F1221312E25332929242D2E2E2C2B2A2D382F2A43",
      INIT_43 => X"1B1B18172B2C282725262B2B2A2B2725252832C1D9D4DC67181F19211E0E1621",
      INIT_44 => X"1B46B2C7AEB1C4BDD5C9792B39382E343E393A3223222625201D1D1C1C17141E",
      INIT_45 => X"CABBDDE2E57F273437322D2B2E37393832202123242423231F1F262622252E2F",
      INIT_46 => X"781F25272722202221232727242424231512192226262A272928232373BFA78A",
      INIT_47 => X"0F22221A1F1E20201F1C1D191C1A1413161012120F142866A797C1D7C7C7CFC9",
      INIT_48 => X"140F161A1B2020181A221C24222422251E2726231C1A14152140151118222B20",
      INIT_49 => X"2731272A2725262C2F29262C393033333B36251D3034281B191F272B2B2B2618",
      INIT_4A => X"2E2B2A38719B6F1422221C1A10151A1E1D13212414181C20221E1F178381182C",
      INIT_4B => X"3C393B3C2D2223241F1B19161A1A131C1917151E2C2A282928282A2C2E272428",
      INIT_4C => X"37262023242424232327292622262C2C1F2CA6C9B6C7C7BEC7CE6A2C3D3B3334",
      INIT_4D => X"15131D252A272B282929252776BEB7839DBDD6D8E376283339322C2831383A38",
      INIT_4E => X"151113111015385CA394C5D9CAC8CCC764202826262423212124272825262422",
      INIT_4F => X"211B24261D1E1D17121213191A242410182521191E1C1E1D211B1A181C1B1614",
      INIT_50 => X"3F2E20181D1C150F1C22252B2C2E291A131015191A1F1F191B231D242525241E",
      INIT_51 => X"21151C241B171E1F201E1E214E968229262E27292A22272A2823152C372D3836",
      INIT_52 => X"140F13272D28292A28272A2F2B2926272B2828252A2C232624241D1511181D1C",
      INIT_53 => X"211E98C5C3C7C2C2CDC66D1D323B31343A38393E372B1F22201C1612181A1119",
      INIT_54 => X"7CC0D6DDE5672A3038332A2935393B383630222224242323282F2C24242C2D2E",
      INIT_55 => X"53222827262426222325272827262423141A23292B282C292A2A252B79BDC08F",
      INIT_56 => X"232621191F191A191D1919181C1D1814141212111317475B9C91B8D0C5CDCCC5",
      INIT_57 => X"111012191B1E201C1B242023242325171F242327201C1D191714151D1C211610",
      INIT_58 => X"222B282A2E251E1A141223203730333C3925201B0C11151B2B26252D2C2E2920",
      INIT_59 => X"27282C26261F1E2626251D181F1B1F1C23171B1D20191E1E1E1C1A2C83828E3E",
      INIT_5A => X"3B38383B3D342220211D161115171019150E172D2C27292827272B2E2C2C2726",
      INIT_5B => X"36372621232422232A2F2A22232D2D30221370C6C5BEC2C3CCC9610B17242434",
      INIT_5C => X"1521262D2A272C292A2A262C7EB8C79F8EC4D9E0E24E2B313533292A353A3B38",
      INIT_5D => X"1212111417175A609999A7D0C5D1CDC244232729282226222526282727262422",
      INIT_5E => X"15231B25271B24201F1E201E1A1B101B2427221A211A1C18191A1918191D1813",
      INIT_5F => X"32231C1C161C20262E2425302C2D2828120E10171E1F211F1D25232222202A1B",
      INIT_60 => X"23171B1C231D1D1F1D191432ACA89C711F29282C312B24221E161D1B3A3A2F3A",
      INIT_61 => X"1A15232E29272928282C2D27312A27282B29262B2A26272526221C20241F1E1C",
      INIT_62 => X"271236B9D2C0C2C9CDCF460B060B1B343A3837393D392E20201B13111416101A",
      INIT_63 => X"B1CAD8DFCC322E323431262C353A3B3938372B22222421242B2D2824262C2930",
      INIT_64 => X"362427282A212422252626252626231F1525252E2B272A2A2B2A262982B5CCAF",
      INIT_65 => X"2327221B231B1D19191D1A17161C1913121211181814696695A79ECFCBD4D1BC",
      INIT_66 => X"170D0F17202321211F252221211F2D2112110F192E1E201E2120201D1C171425",
      INIT_67 => X"2027262C2E2C282A2923141F314335393120191D262626282823242F2B2C282D",
      INIT_68 => X"2A29272A29292627251E1C2423201C1A2118192024211C1E1E18145FAFC5B274",
      INIT_69 => X"3938383A3B3A3B251F170F10131B101C1D1E2D2C2528282A2C2D31222E2C282A",
      INIT_6A => X"3B372F22222421272D2D27262D302A2F2D1A0F82EAC8C2D8D9B42D160A0D2237",
      INIT_6B => X"1828252E2B27292B2B2A25257EB3CEBEBFCED8E69C223133342E212C36393B3A",
      INIT_6C => X"1212141C18126C6E8AB3A0C1D0D4D1AC2A2328262C222423242625242423221C",
      INIT_6D => X"1C0C0A0D2D2518181C1C14191F171C2525241F1B231C1C191B1C1A17161B1813",
      INIT_6E => X"311A1B21272527292727242C2A2B292E200E10161F2422232125212021212A23",
      INIT_6F => X"2019172023221D1D1E181F89B0B6AB43252724292A282828262A192223444041",
      INIT_70 => X"1C222F2C2329292C2E283124212F272B24292E282B292327261C1C2323201A1A",
      INIT_71 => X"2E22132FD1D2CEE3D36B261B1D2730393939373A3B393F2E20160D1317221120",
      INIT_72 => X"BACCDEE55C2232313428212D37383A3A3D3A34232124232A2E2E22212930322F",
      INIT_73 => X"222628252C212626242524232322211C1E2A272B2B27272C2C29252471B3D1CA",
      INIT_74 => X"27221B1A231F1D1B1C1B1C1A191B191412121A1F18125F7C7BB6A7B1CED3CD95",
      INIT_75 => X"291112191E1C252421252021222124222823150B202A221D1A191A1820182025",
      INIT_76 => X"292627272A282F2E2B2B1E20214241492A1A232623242A2B2A28232A2A2A292C",
      INIT_77 => X"29282B2B2E2A2927271C1E2225201C1B211A181D20211D191C182E7AB5B3902D",
      INIT_78 => X"3A3B35393E3B3C3620150F191E2913201A272D2F23292C2C2C252E2A14262427",
      INIT_79 => X"3C3E38242123242D2F2D1B150B1E2E2F2C2E160D51DDD7C0832C261F292B3236",
      INIT_7A => X"222B2A292A27262C2D29252563B3D3D1C1CAE0B42E28342F3323262F34353A3A",
      INIT_7B => X"13121E2118134C8C71B6B8BBD0D3C98121282A272B202A2A252524222121201F",
      INIT_7C => X"252323141227231E1D18191D1E1A232B23241A1A2223211F1F1D221C1E1D1A15",
      INIT_7D => X"1B2328262B2927232524212A2A282A2B2C15141B1D18292624262222221E2427",
      INIT_7E => X"23181E221F1E1F1419164DA0B0B7772A25272B2B302D2D2C292B281E21403C3B",
      INIT_7F => X"1D2D2B34232A2F2B2A2A2C2D14111C223B2924242F312728281D21262322201E",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "NO_CHANGE",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => douta_array(7 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88\,
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena_array(0),
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => ena,
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized14\ is
  port (
    douta_array : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized14\ : entity is "blk_mem_gen_prim_wrapper_init";
end \blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized14\;

architecture STRUCTURE of \blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized14\ is
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute CLOCK_DOMAINS : string;
  attribute CLOCK_DOMAINS of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "COMMON";
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"312D1B1810313D0E182114222A2D3036393835383D3C383D210F0F1A21291420",
      INIT_01 => X"C6CFE55E2D2634342D1F29303734383A3F3C3B2821212A2C2D2E1C0805060C23",
      INIT_02 => X"202927252B2429292728241F2022211E252A2A292C2B222B262A242548B9D0D4",
      INIT_03 => X"26241815242423201F1F181B151B1814111B1E201D142E8D75B2B9AEBDD1C06D",
      INIT_04 => X"2D1D110E2171212821282122222025212824231D0C2321201B19141D1D282128",
      INIT_05 => X"28282B2D312C2B2A2E2B281B2A3C41391F2726262F2B2A2B2C271F232A272A2C",
      INIT_06 => X"1F32282B272822242320232626241B22231C1E1F231D201917176D79B6B55B27",
      INIT_07 => X"383D36383D3D393E270E151E222616221E292B2F2B2629272C2B2C2E2118080B",
      INIT_08 => X"3B3D3131261E2B2C2D2E20100A09090C1D261F1A14111010161B1E262B2D3034",
      INIT_09 => X"1F2C29282B2B22292826252628A3DDE2E1DA82372D2F323528242F2E2F34373B",
      INIT_0A => X"181D1F201C171A7084ADC6BEB9CECA63222627272B2428272829261E1E221D1E",
      INIT_0B => X"202826240A1928241F19181C1A252526262218172223232120201B1C171D1818",
      INIT_0C => X"2022232C1F332D292A27202428262C2C2B1E1025A78A29282229222021251F20",
      INIT_0D => X"211D1E1D231F221F1414A2CA75A3452929282D282F28292D2C2A281A253D4729",
      INIT_0E => X"1F2B2F312D252A292D292B2C21201B0F0B30352F2E292627221E232926251A20",
      INIT_0F => X"0D202316160D131A231C282A2C2E3035383C35383C3C393C30101C2122241925",
      INIT_10 => X"B7754733262F343222282E2D2F35373B3D3C322F1B232E2C2D30271C16171209",
      INIT_11 => X"242725282B23272529282820201E1E1D212D2727292A2324282F272B244DAEE0",
      INIT_12 => X"2B2119181F23242221201F1D171A191C1E1E1F1F1C181C2C8EB0CDC6C1D9E050",
      INIT_13 => X"291F1784718C27252329221F22272622272823221711252523191C1C1B232A23",
      INIT_14 => X"28272D2F2E2D2F2A2D292B27183A4A24202A2A54693437282828212527262D2B",
      INIT_15 => X"0820402E2F282727231D252021291A1E211F201D2123222010399A83B6A62F29",
      INIT_16 => X"393935383B3C3A393517212322241920212A2F2F30282B2D2D282B2C24242720",
      INIT_17 => X"3C3633331F232F2C2B302C2520241E1A0F1D28141615161C2A222C2C2E303136",
      INIT_18 => X"212925262829281C232526252A2C5570593A30372B2933292128272A3136383A",
      INIT_19 => X"1F20201F1C191F1752ACE8DEE8CF7E2C282B22282B23272528242A261F1A1F1B",
      INIT_1A => X"282321211C101F2422181E19272B291D2726181A1E2324251E1F1F1F16161A1D",
      INIT_1B => X"1F332F57982F2E2B272A222626262D2A262025827E8E21252426211F23232427",
      INIT_1C => X"2321231F1E23221D123EC4B49E91292926252B302D2E2E2C2E2B2F2816334526",
      INIT_1D => X"232A2E2E322C2D2F2D282B2B2824272B150F3A322C252625241F252226261C1F",
      INIT_1E => X"1D1A30171822172027252E2C2E313136393B3835393C3A37391F222323221514",
      INIT_1F => X"2E32393C2B272A21252524282D3236353533342D251E2F2C282E2C2824282826",
      INIT_20 => X"2B2D20282B2328262622292B1F1C180E1A2724252A282C181C21262A29312C2B",
      INIT_21 => X"3B2A181C202426261B1F1E1F16151C1E1E21211F1E1A201D1B60B5B7A26D231D",
      INIT_22 => X"271D3376A6892127242520212223212524232325200E1B231C191F182F342C67",
      INIT_23 => X"25252A2F2F2C2F261F212A2415263B23203234386B5E272A272B222726292C2A",
      INIT_24 => X"240A293A2A2425252224252B2F241E20242224211C222019156AAAC2B2722A29",
      INIT_25 => X"363C3A34363B3839392322232522130A282C3030342A2D2D2D282B2B2A23272B",
      INIT_26 => X"332C3038211E2E2B252C2B2925252A272A1832201827252A21272F2B2E313334",
      INIT_27 => X"4C2923242B2A2D1F17332631263233393A38443A26271A222A252727282D322F",
      INIT_28 => X"1F21211E201B211D1B113F4B240D1B282C29202A2A2328282324282C231D1535",
      INIT_29 => X"25252528250F1723181C211A2D3931A55B241C1D212627251B201D1D19181E1F",
      INIT_2A => X"212A3B203CA22928282C2228272B2A2A291D358D9D8321252526202321252322",
      INIT_2B => X"232123211B211C1B10929093DC5A282A25272B2F2B282F3142342733251D311D",
      INIT_2C => X"292D3332332A2C2C2E2A2C2B2A2329282910183C2D24262822272529332C1E1F",
      INIT_2D => X"2C1A2A271826332B232B2F2B2F32343333363734333A373A372624242825140A",
      INIT_2E => X"3F41392B2A1B102D2E282A2A2C292C2A363252892A222D2C242F2E2B28252A28",
      INIT_2F => X"2E21242C292327272325272A2B1A2091AA3321242C2C2B2A183B23232B30373A",
      INIT_30 => X"6F231D1E232827221D211F1B1C1F1F202021211D201C1E2126220A091C231E2B",
      INIT_31 => X"282334869C8A1F22252820251F232021231D2323221B151E191E2219293E2C50",
      INIT_32 => X"272A2C2D2D46456A9B7851625C262720202942205997252A272C2229272B292B",
      INIT_33 => X"281A0E312F2225282425314034381C1D212022211F1F1A201774E1C79544282A",
      INIT_34 => X"3635333231393638372A242529241710232A3030332F2C2B2E2B2D2A2D24272B",
      INIT_35 => X"2E93FCFC6B1D2E2E242F2F2C2A282C2C2C20202B1C272525262F2D2E31313535",
      INIT_36 => X"684B24252D2D292D1E22222B2D2D3B3D3A363E322F0E1E2D2F2A2A2E31282827",
      INIT_37 => X"2020211B1E1E2026191A22261D2725222C1D292C28242826232628282C1E2943",
      INIT_38 => X"2123211E234028171D201E1B2642271AA73E1A1F2429251F1E20211B1D212020",
      INIT_39 => X"1F2840384048202A262C2427272B282B291D4BA1A192281E2627212722292217",
      INIT_3A => X"2021222124201C1248CB5DB3E4362A2B28292E2871BBB08D5277AD90813E1B24",
      INIT_3B => X"1E252A3232312C2D2E2A2C292E25252D28220F222E20272A242252B83D36221D",
      INIT_3C => X"2E281D31223228281F302B2F333135393E40332C30383433372D2324271E1412",
      INIT_3D => X"383C382C2416212F2F292B2B2D2B282279C1B5F6A7212E2F2428282528292D29",
      INIT_3E => X"281E2F2A2723262424232A2A26281675A73726252D2C2B29233521282B2D3237",
      INIT_3F => X"A7551C202429231C1F1C211B1D1F211F1D1F211A1D1F1F1F2221211E27212127",
      INIT_40 => X"2722548DAC9D2821252422282026A9B8B5B67273B2AF4A161D201B1D26442A54",
      INIT_41 => X"28262C2A5A2D2223463422213A43171F222040946EA25824252C2626262B2A2C",
      INIT_42 => X"2925161F28282D31212B4E7B6328271F2026242429221C191C4FD8A99F312B2C",
      INIT_43 => X"3B3B383239343135372C2326261C17122026273D322B2D2F2E292A27302A2A28",
      INIT_44 => X"6C6594D38F2C2B2E262A27292C2A302A2E2B21332A282720242F2A313A35353A",
      INIT_45 => X"AC332A252B2C2B2C2338202A2B2D3032333736341C1E233030272B2B2B282728",
      INIT_46 => X"1F22211D1622202223232023221E181B10272D2B282626272324292B26234284",
      INIT_47 => X"432A62813A2F4B151D201C1D2440534B403F20242527211B1F211F20211F221F",
      INIT_48 => X"211C74A4A2BF7B20242E2724292B282C2B255AA7A99032192624232921277853",
      INIT_49 => X"2024262426221D1B152934848D25252C27282A2655301F188E751B223C411B27",
      INIT_4A => X"24162431322C2B2C2E2D27292E302A292D231C172124282B252E2933B53C2A1E",
      INIT_4B => X"2D2C292C292426222A2F3F333B3D373A3A3A3A35353032373A31252422161211",
      INIT_4C => X"363735331722212F31262B2C2C26272A565F82D888302529232B2C2C2A282B26",
      INIT_4D => X"1C1F292C2627252623272A292A2D3586A13128262B2C2B2B273228272C2C3437",
      INIT_4E => X"745F23252425211F1C231C201E1E1F1F1F23221F14201F2620241E1E201E2511",
      INIT_4F => X"272B5E6D64A6381923232629242660193C636630316F5613221F1C1E233E8E8B",
      INIT_50 => X"262828264E414E549287495446461827201E94AE99D77725252D29242C29282B",
      INIT_51 => X"19140D0F21221F262B35233FAA4D24202025282325201F1A14271F313926232B",
      INIT_52 => X"393C3B36302C34343935252321130D1119672829332D2C2C2F26272A281D1919",
      INIT_53 => X"4A736CBA772E2129232C2D2B28292E2B302C2A213027262428325F8A2E3E3738",
      INIT_54 => X"912A28272B2C2B2B282D30252C2A34393939372B1625212E30262B2C2C25272B",
      INIT_55 => X"2021222217171E1F2322201A21212D1D306A322B2427242624292B28282A328E",
      INIT_56 => X"AFAD7585B4935C13211E1D1F1F63B28FAC992927272320201F251C1E1B1D2322",
      INIT_57 => X"20207AA388A26523262B29252C27272A292D8CA0ACAE391A1F23282725277188",
      INIT_58 => X"22262821231F201A152A2A1D242B2229262728274A44B7C6B3B7C0A144481625",
      INIT_59 => X"839A2A24332F2C2C2D252B2E364B6A6B6669771D1F201D2728522B4859492E24",
      INIT_5A => X"302E2B20302C26273C315D9D40383836373B3B372F2C352E3635232123150E10",
      INIT_5B => X"3939381F1826212E30262B2C2A25292D427E5C9C532A222C282E2A2B29292D2C",
      INIT_5C => X"38913D292429242525282A2827263494912526272B2C2B2C272B36252C2A3138",
      INIT_5D => X"C1B629292A231E1E24221E1B1D1D2521202122231F141B172620221F1F252F29",
      INIT_5E => X"2A36889DB3B23B1A1F212A26242973B5F2D48CE8F45A62151D1D1F21217BAE8A",
      INIT_5F => X"262628264A38CCFAD9D9FCA63D461824212069835175482C252A2B262927282A",
      INIT_60 => X"747791311E21212B284F5B7366783F262526281F2220201A162A2B272A2D2226",
      INIT_61 => X"363B3B383130372C3A35211E25191410A69F2E2030302B2C2C245B797B857873",
      INIT_62 => X"3C8155AA5126242D2A2D2A2F2B272A292E2E2F282B3024275A303A5F82303834",
      INIT_63 => X"992322272C2C2B2C292A3B252C2C2E38393933171E25222D2F272B2D2A242B2F",
      INIT_64 => X"21222321221A141B252023251C2532362D595024252C2626272728292A2A2A8E",
      INIT_65 => X"BDDFABE69B2565181C1C1F222573A186B29D24282A241E1E261D1E18211C211C",
      INIT_66 => X"2121726C155D303B232B2B26262A272A2B3F84838ABA3C1C1F20292624296153",
      INIT_67 => X"2425241F2222201918292D25232E2425272529244C2E6BD6ECE3CC5A3D471922",
      INIT_68 => X"81A5381F2D30292B2B2182968B6E44352928433C1D22232C2A3B91A0BABE4426",
      INIT_69 => X"302B2C252D32242058442562B82B3436373A3A393035372D3F372117221B1912",
      INIT_6A => X"3A382A162224252C2E282B2C29232E2F34804DC1982E202B282C2E302B2A3331",
      INIT_6B => X"1D377C22252D2727282729282B2B2578902322252B2C2B2B2A273A222E2D2F39",
      INIT_6C => X"7B63252429242122201D1B1A211B211E2323221F1D1D132B1E2220241F212E55",
      INIT_6D => X"2D43C6DBDDB4391D1F1F27282327662431A4C8BE302F5D18221D2021206A9C43",
      INIT_6E => X"2824292548361E7BE3E16122434A1A2022235D6F3038393A232B2925262C272B",
      INIT_6F => X"26274B431B1D21232252A48CC4C140272322211E22241F1819282928292D2824",
      INIT_70 => X"393738382D35382F3E3624111B1A1815C0B7401A2930282A2A22611E1B1D7863",
      INIT_71 => X"2B7C52AED1421D2A282E2F282A292F2E2F2F2826272C23264C66326E83363437",
      INIT_72 => X"802C24232A2C2B2C2B2734212F2C2F3A3835201A2623272B2F282C2B26242F31",
      INIT_73 => X"1F22272A21182C2E1C222121222321612F7BA52A222C292729292A2C2826285C",
      INIT_74 => X"2E36C7442B2C5B1B271C202526476D1E6D441C252B2223261E221A211E192421",
      INIT_75 => X"24273A6C79854B26242A2723292A262C295C6D5863B13A1E211D242A25286F2F",
      INIT_76 => X"2220201E23251E161927282B21282B222922282742372C206F60262B42451C20",
      INIT_77 => X"BCB54616252E292B2A236E392824897F353F434D191D1D222565D69CD5AE4D27",
      INIT_78 => X"2F3E7272222D212C36717F4A562D3237393535372D34342F36342A0C161B1217",
      INIT_79 => X"36311E1E2723292A2E292B2A242630302E745393FA53182A2B2F2D2A211C1B1E",
      INIT_7A => X"91395B2D232D2A27272A282D2A301BA1AA212421282C2B2C29292C212C2C2D38",
      INIT_7B => X"3936252A2A1F242320241C231D171F1A1C181C254C745E22201F2320212B2151",
      INIT_7C => X"265DE3DAD5D0371F201D1F272625642821315E2B2B26601F2B1C1F262542BB3A",
      INIT_7D => X"2722252541364D4F77683F3C41401D2026292F1F374B3727252725242627272B",
      INIT_7E => X"DED449501A201D242074A2587462562A2020201B22221D141926252228282E24",
      INIT_7F => X"373333373033323233352F0B17200D17B5B8481A1F2A292D292161528CB59B97",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "NO_CHANGE",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => douta_array(7 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88\,
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena_array(0),
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => ena,
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized15\ is
  port (
    douta_array : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized15\ : entity is "blk_mem_gen_prim_wrapper_init";
end \blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized15\;

architecture STRUCTURE of \blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized15\ is
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute CLOCK_DOMAINS : string;
  attribute CLOCK_DOMAINS of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "COMMON";
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"2E6F5388FF9116282B2C2D3C678DAAB9B8B49C7A1B2D212C2A6AB298A4712C35",
      INIT_01 => X"85212620272C2B2A2B282521292D2E3B392B1B2126252A282E292B2A23273033",
      INIT_02 => X"3A56525D5D2958272120201C243224739A8C711E262E2A26252A252B282A2261",
      INIT_03 => X"858569777D635525341C1F27262C2F468341232C251D231E1F1B1E1F1F192120",
      INIT_04 => X"28272D2F31352D2A2824242620262A2B245A8389A1CD3B1F1F201C2324276552",
      INIT_05 => X"221C211A23211F131826262321252E23252322224534A8AB9C699F9C3846181E",
      INIT_06 => X"BCB945201826292E2D215E43DDF5D3D6F2D535521D211F24205D9F285D6B3429",
      INIT_07 => X"4B4550731E28232A268E9687B1922A343834343632332E3130343413141B101F",
      INIT_08 => X"38241A2328272C292E272B28232930322F57C5BF6D5D1E282B2D32A4A57B5C5F",
      INIT_09 => X"989F933E262B2C27252A282A272A1E7B8F1F271F272C2A292B292222292E2E39",
      INIT_0A => X"7F45262A202022181D18261E22161E2D52404F3A5AC39F1C2421221C253526A3",
      INIT_0B => X"1B85CBB8AC632623201C1B1B222B595F966653627F565C22261F232722262136",
      INIT_0C => X"2224291E483F7D8C8E74716C6955152028282D2D2B302927243624222126292D",
      INIT_0D => X"E95F31511C271E242148AF3E393E322B1E1E1F1F25221B131C252A272628302B",
      INIT_0E => X"3637343331322B302F34371A14140F20B8B54326142826302A1F5939A2FCEBE7",
      INIT_0F => X"3046A36D28311F26262D3C7B444E676A6D897E6F2122262C36A2A4A5C88E2B39",
      INIT_10 => X"8422271F262C29292C2A2320262F2C3734211C2429272D2A2E272B2723293030",
      INIT_11 => X"539FB4699EFD67242C1C201A2C29299980AFB95F222E2E28262A2A2A272B205F",
      INIT_12 => X"AEA1938AA1AE7A183335242622262B2B423126261A1F1E171D1A261F22141E2D",
      INIT_13 => X"28272D29292F2627242F25232027272C2982705F4C251D2324171E1B25257E92",
      INIT_14 => X"1B201C2322251F121B252C27252A2F2B2622291D5A8F6A6A67586D77823E1D22",
      INIT_15 => X"C8B151261826252D2921533842A4FDFB9C2636571E202022212E8F5272533127",
      INIT_16 => X"D5F58D712220272E3A9F9996AE7C31383537322F2E3129302F333822160E0B1A",
      INIT_17 => X"30201F2429262D2A2C282B272329312E3139422032291D22232D3B5B58959C9C",
      INIT_18 => X"4B82B15D202D2C27262A2A2A272A1F517B262620262B27292C28251B222F2A35",
      INIT_19 => X"2120251F161C191B1D1F211F21131F2C3FA4F9CDE2AA1A3234211C1831213182",
      INIT_1A => X"2C44120F0E201D1F27161E1B261E8A9E858287958188531C3138202525262929",
      INIT_1B => X"2423242042744C443831515A4F26222327262D2A292D2626242125242028252B",
      INIT_1C => X"3F26305E201E222025264B3E7C6634241B1F1B241E28240F1A262C2722272E2A",
      INIT_1D => X"35362F2D2B3027302E333829170F0C15999F5E221D23252A271F503E23369FB3",
      INIT_1E => X"322F2830342B1C1F232B347DDEEEAB9DF2CB427326212A2D30965F4579604433",
      INIT_1F => X"81272722252A27282A26271A1E2F29342B1F212429262E292B292B2724292F2E",
      INIT_20 => X"312FA0DDBC3E1B3C3A2A191830202F8B38338C4D2326272727292A2A272B1D63",
      INIT_21 => X"2E12264B2D0815271A24212525262828291E2618181B191F1A24202020121F2F",
      INIT_22 => X"27272C2B292D2726202224212328282A1E1521232623211A27191B18201C4E58",
      INIT_23 => X"1C1F1A211D2821101A282B2A26232D302B25252219131E201F2519161B271F22",
      INIT_24 => X"83AD6421211F232B271A53433A38465B4162436120241E22272E22233B463727",
      INIT_25 => X"D95B347528222B2E338D622D773C513833352F2F2A2E26312F33372D17141010",
      INIT_26 => X"271F222429262E292B2A2A26242A2D2F322F302F302B1A1F23263A5AA3CCD1B8",
      INIT_27 => X"5C30734B2621262727282A2A272B22436F242925252A26272924281F1C2F2932",
      INIT_28 => X"2A2123151C18212119281D201F121F2E371C1D85561A28463C24171A2A212088",
      INIT_29 => X"221F1F231F1E2A181F1F19161A21121325281D1928332D231C22272424282928",
      INIT_2A => X"48222B222C262A2C2B2B2C2D3027212328292C2B2A2E29261E27261F28282E27",
      INIT_2B => X"94C5715F22201925232A2B28312C33291F1E181C1D2318141E2929292B222B37",
      INIT_2C => X"383631312A2C25313132362F18141211D6D96C20231B222C2C1C544D6DA5A487",
      INIT_2D => X"33312C2C3B321A1F25243D4B2887D2BF5922367726212D2E2D80B8373A292B32",
      INIT_2E => X"3E242A29252926272A2527231A2C2A30262022252A272E292A2A2A25232B2C30",
      INIT_2F => X"3C283D5564691E3E312518192C252E2F2E4E2B282A22252628282A2A282C2142",
      INIT_30 => X"24262326222623242323252625292B2C24201C151718251C21251A201E121C32",
      INIT_31 => X"2A2A2C2C2B2C28271F2427212C29312125212320271D251F18231A171D292227",
      INIT_32 => X"211C14171D201118202623232B252B2F43232621212E302B28292C2424282224",
      INIT_33 => X"76936B1C281A21272C1A506DD4CF9582666E4852211C24292226312C27282727",
      INIT_34 => X"2B363D7028222C31323730668B40343832312D2C2A2A292F3132353218111214",
      INIT_35 => X"252122252A282E292A2A2925232C2C2F312E2B3334261D1E25273B4D2C218CC2",
      INIT_36 => X"227B462F2822222629282929282C261D1F272A2B252926272B2927251A272C2E",
      INIT_37 => X"2C1F1A1214201E19292021211C131C32323A6B71574C36793B22191E28212224",
      INIT_38 => X"251D1D242717222819211A15211923262B2A20262C2C2A26201A1F2A25292B2D",
      INIT_39 => X"1F28222720282A2B2D2F282D322B202A2C282B2D2B2A2725202422252D2C2C1C",
      INIT_3A => X"ACBAC29018242627272E25272D2623281E1B0E141C20131A2023232128252B26",
      INIT_3B => X"332C2B2A28272D2E3030353819101113F1F3741D2E1E1F1E2A19404952567D8E",
      INIT_3C => X"312C2E29372F1F1E24263E5128253F56252F35742A212B323533354269382D32",
      INIT_3D => X"20242A2B242826282A2928271D242C2B252223252A2A2E292B292824242A2D2F",
      INIT_3E => X"312F527E9795815F271E192023272A20283B44232723202629292829282C251F",
      INIT_3F => X"27242B24202828281E2726262428292924201E1217201820261F242019151D2D",
      INIT_40 => X"2C272B2D2B2A272420291B282C2D271D2722222228241C291F1B1A1224212523",
      INIT_41 => X"1D1A0F161D22141B2024262328252A262525222222252D2C29282927282E1F28",
      INIT_42 => X"85846D1E2C241E17231F35BFB79B766E573534322C211C2223292F312C292629",
      INIT_43 => X"C95534712B232C303435393835383235342A2F302827312E302E363E19120F12",
      INIT_44 => X"24232424292B2E292C29282425292E2E322D2D2C33291F202626395031576670",
      INIT_45 => X"2B26362A2825222629292729292C261D2025292A232828292828282C1F212B29",
      INIT_46 => X"261E1F15151A19262223211F181515407C7367463639352D231A192327252923",
      INIT_47 => X"2A211E1E24231A2526161D112421242623272926252629291A23252324272628",
      INIT_48 => X"252623261F232B2A292B2B282A2A1F272B282B2D2B2C29252426192A2D2C2521",
      INIT_49 => X"271E1B212920273023252D2C2C2625281F1914192024131C20262425282B2A20",
      INIT_4A => X"312B34302728332D302F343B1F1C150EC3DD7020272B1C1718201D3F423B302E",
      INIT_4B => X"2F2C2C2E312A1E1D27253C4D369C9761A24534772C3A2C3335363936252F3537",
      INIT_4C => X"1F24282924281F1D2D29292B20222E2825242A27282A2F282B2B282326292E2E",
      INIT_4D => X"4B433A251D1F1D2123161C26272427242B282C282826212627282727282D251C",
      INIT_4E => X"24262425262529281C1E232524262626261A1C1516191D2523231F1E1816142C",
      INIT_4F => X"2A292B2D2B2B2A2626241A2B2B2B2325291F1D2022241D19231D1B1224222127",
      INIT_50 => X"2019171A261E151D22262624282D2A22262723262023292C2A2A2B2929282C24",
      INIT_51 => X"A6B172252230211518181C111A1A1F21232828292625252E2427292A29242427",
      INIT_52 => X"87878B80283C3036363637312A2E33332C2C362D272B352B3130333924211C0E",
      INIT_53 => X"272529292B2B2D282A2C2822262A2E2F2E2A2C2D322D1C1C23263F47358F9573",
      INIT_54 => X"2828292725251F2626282725292D251B1D22272923273B351B1B2229251F2C28",
      INIT_55 => X"23181C131A1820222421221D181717191314192530302C2722171E2325242824",
      INIT_56 => X"281F1F242523231B1F2018112325202625242423242427261D1F232724252725",
      INIT_57 => X"2A2723242122272C2B282C2A2A292E212B2A2C2B2A2C292526231B2C2A2A2026",
      INIT_58 => X"27292B2A27251C242528292A292325272019181A2418161D24262724272A2A28",
      INIT_59 => X"2B2E362C2A2E3729312E343B2520201396A86227203026141D1220262C292A2A",
      INIT_5A => X"2E2A2C2E322D1A1F1D273D7868778295A1B2AA61272A34353635352D2C363231",
      INIT_5B => X"1D21282922237392534C3322231A26282A28282529332C29292B2622272A2F2E",
      INIT_5C => X"212728282928262723191F22262327242728292A23231C262A282626292C2519",
      INIT_5D => X"25242423252426241B2224272426282523181E131B182123241F231C1718171F",
      INIT_5E => X"2B2A2C2A282D272324201D2C2E291C272A211F2426222526221E1B1022292123",
      INIT_5F => X"1F17191A1D18161D2226262424252D292D2924222222242B2B282B2B2D26221E",
      INIT_60 => X"B1B73E29202B27151D141C232826272929292A2827221920242829292A232727",
      INIT_61 => X"281B1121302E32353732322E2E3634302C3035292D333827322D353C261F251A",
      INIT_62 => X"292A2F2B29363229282A2521272A302F2E2A2C2F332C1A2218263CC0AE9C734D",
      INIT_63 => X"2A2E2925231F1C272A282526292B25181D212829211E7FC6D7C57F402C1E2429",
      INIT_64 => X"22161D17191C24262221241C1719182022232526282826272417232F24242724",
      INIT_65 => X"2A222023232923222A2620121F2A211F26252323242425241B23242624262725",
      INIT_66 => X"302A25212324202A2C282A2B2A25201B2A292C2827292A24231F202B2F251B27",
      INIT_67 => X"2A2929272823171E23272927252027271E161A1C1B19171D2127242423212B28",
      INIT_68 => X"2C3133272D353526342C353C271E251F65181E30212728181C1A1C2329272929",
      INIT_69 => X"2E292C31342B1A251327332C120E212B2B2F333127352F33363031303133342D",
      INIT_6A => X"1C2327291F2655272460BBD58B2920262627285C531A2D282729231F262B302F",
      INIT_6B => X"1E21262A29282726241A24292923272526292D27261E1F28272724262A292519",
      INIT_6C => X"26272123242425241B232324222425252114191E172324232126221B171A151D",
      INIT_6D => X"27282A27262B3024221E23292C201E2927222021222823252E2F24161C28221C",
      INIT_6E => X"1D171D1D1D1C191C2128262626202526302C252323261F282B28292C2828231A",
      INIT_6F => X"2526272D2424291D1A211E222828292A2B2929272825191E2125282821202826",
      INIT_70 => X"3030322A302D302F312E302C333530272B3130242E363026342B353B2A1D2222",
      INIT_71 => X"2B3D225B621C362726281F1D262B302F2D292D32332B1A27161B2B28252E2C2B",
      INIT_72 => X"2629252D2224202928262526292925181A242727211C53A5A6501C35BCAD211F",
      INIT_73 => X"1F14181C1B251F1D252A211C181A131D1D27252525242524221A223B2C222624",
      INIT_74 => X"26211F21201D232C1D1E241A1924251C22282124232425241D21212522242524",
      INIT_75 => X"2D2C2423202822282C2A292C2B29211D282A2726263D3E29271D262A2A1E212C",
      INIT_76 => X"2B29282627211921222628282325292419181D1D1D1E1D1B232827272A211F26",
      INIT_77 => X"2D302C2432392F27332A353B2B1C20222328262B2823272317211B2026262729",
      INIT_78 => X"2B2A2E32322A19281A1926282C2A2D302D2B2D312B242D2D2F2E2E2B32342F26",
      INIT_79 => X"1825272623204C88F8A8398728291E1D263C2B267C312A2825281C1F262D2F2F",
      INIT_7A => X"1F2421222424242323193062262426242B2B273320231F292B26262629292518",
      INIT_7B => X"1D272423232424241F202026232526231E161A1923211E242C29211B1A19121E",
      INIT_7C => X"292C262629252622231B272C281E222D251F1F201D1B232321191E1B17232720",
      INIT_7D => X"141A1F1E1B1E201A252829272C241F2A2B2A23211D2726292D2A282B2A282120",
      INIT_7E => X"2B2E292A2B232526171F1C222627282A2A29272627201D262528292423262A20",
      INIT_7F => X"2F3231302827292C2D2D2D2E31322F2B2F30292633372E29322B353B2E1B2021",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "NO_CHANGE",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => douta_array(7 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88\,
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena_array(0),
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => ena,
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized16\ is
  port (
    douta_array : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized16\ : entity is "blk_mem_gen_prim_wrapper_init";
end \blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized16\;

architecture STRUCTURE of \blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized16\ is
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute CLOCK_DOMAINS : string;
  attribute CLOCK_DOMAINS of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "COMMON";
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"284130149C53262725281B20282E2E2E2A2B2E32312A18271D162D2B282A2D2D",
      INIT_01 => X"27273E37202120292A252726292A251A1A27282423205D43EEAF63DDBD5B161B",
      INIT_02 => X"1D1A1A1C261E222A2E27201A1C19121B1E23252726252624231842C32C222625",
      INIT_03 => X"221E21211A202221422A1D19162326231B2225232224232320201F2624252623",
      INIT_04 => X"2A28241E1C252827292A292A2727231F2A2B262727222428251A262D251F222C",
      INIT_05 => X"2929272726212028262728262125271C131A1F1D1B1F211B262728282A28212A",
      INIT_06 => X"2D3027292E2F282A332B363C311A212026252A282C2123241A1E1D22282B2A29",
      INIT_07 => X"2A2C2F32322A16262116282D2B2B2C2C2F2E2F2F2D2A2B2C2D2C2C2E2E342D2C",
      INIT_08 => X"1F2A2A2223246D23A3DDB8FEFF6517192A364A25653A232824291B222B2F2E2F",
      INIT_09 => X"1A22262626242624241B30B22822262326304928221E222928252826292A241D",
      INIT_0A => X"1E1E242322252221201E1D23232425221C1C17242624242229261D191D1A1216",
      INIT_0B => X"29292629262226282318252D2320232C1D1E22231B202521562F201815232325",
      INIT_0C => X"161C1F1E1E1F1F1C27262828272C23272A26271E1D252722242B2A282928231B",
      INIT_0D => X"262623272C2022221D1D1B1D272B2A292729272826232022242428341F272218",
      INIT_0E => X"2E2D2D2E2D2B2E2A2C2D2D2D3034292D2C32282B2E29222C2E2D373C321A2020",
      INIT_0F => X"2B2A524D454F302623281B232A2D2E2E2B2B2F32322616252418212A2E292B2D",
      INIT_10 => X"253B3820201D222927252926292A251D20292A2523276A1E4CEFE6F7B33C341A",
      INIT_11 => X"1C1C172724261C1B23261C1B1F1A1517141C222426252625251E1F7124232425",
      INIT_12 => X"1B1E2224221F25243F28211A14212324201A23242526222020211E2222222624",
      INIT_13 => X"2A25281E1E262722202A2A2A2A28221B27282928262125242218222A1F20262B",
      INIT_14 => X"2728262824231D1D2223283120292119181C1F1C20201F1C25252527242C2426",
      INIT_15 => X"2D332A2A2824212E292F373B311A1E212A2D23232B21211E211B1A1B20292928",
      INIT_16 => X"2B2A2E3134231823251A20242B292B2C2D312D2E292C2F2A2A2D2E2D33312930",
      INIT_17 => X"1D26282822255C281CA6CFB13F2E571C2C2941837B9E412624271A23282B2E2D",
      INIT_18 => X"12191E242929262423211F7427232426263723271D1B232927262827292A271A",
      INIT_19 => X"201A20252726232020212121232225251D1D1925271E131E23241B1F2119171C",
      INIT_1A => X"26272B2923222523221920261D21272A1D1E2022262221262223201C141D2421",
      INIT_1B => X"181A1F18211F1E1D22252326252C25282825281A1F2627251D2729292927221E",
      INIT_1C => X"292D2B252923211923181B1F1A2729282927262822221B1C212328242329221B",
      INIT_1D => X"2C2F2D2F2B2A302C2C2E2D2E2F2C2F312D31291F121F23322A30383B321A1E20",
      INIT_1E => X"2D2B48A0AFBA3B2727261A22292C2E2C2B2C302E37261A26271C2123292B2A29",
      INIT_1F => X"2B2722261D1A242928252727292A261B1C2729262123575D3A53A43322355F1D",
      INIT_20 => X"1F2016242A17192125231A212118131D181D1F21272C262321221BA428222721",
      INIT_21 => X"20202121232523232824211C151B2020231D18272525231F1F1B211F24231F24",
      INIT_22 => X"262526141E2626261D2227262A2723212726292C1E242522201822231D212728",
      INIT_23 => X"2A28282722241C1D21232627282B1D1C18181E1B20201B1D25262329282E2728",
      INIT_24 => X"2D3127130F2325342932393B341A1E1F2A292C352A282419211618211D212929",
      INIT_25 => X"2A2C313138231B28291E2321272C2B292C2E2C2F2D28322E2D2C2C2B2A273332",
      INIT_26 => X"1B282B271E2658B29E735225223F5E212F297273A3BA3A2324271A212A2D2E2C",
      INIT_27 => X"171F20202226272E23211A942E242127241D25241E1A252929252628292A261B",
      INIT_28 => X"22221E252327221F1F1A231E22212B2A1F17162A2016222727221A242117121B",
      INIT_29 => X"27292A25242625211E1923211F2129262420201F212724222925221C171A1E1E",
      INIT_2A => X"17131D1C21201B1C26262625252C2728242625121D25252622202D2929262423",
      INIT_2B => X"2F27282F3D2D2118251816221E1B28292826272622231B1D2122242427261A1F",
      INIT_2C => X"2D2D2C2E2E272F2C2B2B2D2B272833302C2F2715202A293529343A3B351A1D1E",
      INIT_2D => X"2E2390A89E7F632720281A22292D2D2B2B2C3033331F1A282B1F242123292C2B",
      INIT_2E => X"1920241F1D1C262829242529292B251A1C282C291F31610E54A691A45E3C5B22",
      INIT_2F => X"1A1D1828161D282A281F1F261F181417141D221E1B262A1E2624171D25222A1A",
      INIT_30 => X"2720221F212725212628211D18181E1C21221D1923261F1E201E211B22221F25",
      INIT_31 => X"232723131E232427231E29272727232628273065232725221D18231F1F232A25",
      INIT_32 => X"2724262524211B1B21212323281E1721140E191D1F1E1A1E242527232927262A",
      INIT_33 => X"2D2C29212A292F3329343A3B351C1C1E2B2A292B35362716241C1320221A2229",
      INIT_34 => X"2B2B2E32302119252B1C232320252D2B2C2E2D2E2B272D2C2C2B2F2D2930332F",
      INIT_35 => X"1E262A291F2DC5C098492C61A347531F2F296E556E643C3222261925272C2D2A",
      INIT_36 => X"171A2524211B271F2424181E1F24202C1C24201C1B1C25262724252A292B251A",
      INIT_37 => X"211E26472023201F21201D1C25202F24171F171E18222826251E24241E1A181A",
      INIT_38 => X"2829394A1F2724241C18211E1F242927281E2220232525222129201F1917201B",
      INIT_39 => X"110E181F1E1E1B1F242825262F262628242723131F2225272421262725262325",
      INIT_3A => X"232E2E30232E2F171D1F111E241E1B272926262425201E1A202122262B231721",
      INIT_3B => X"2A2F2E2E2A272B2B2D2E302A2734332F2E2C27232D27332F2A363A3C341E1B1E",
      INIT_3C => X"2C247D2B3647292B25251825262B2D2B2B2B2E3430211A252A18212420222C28",
      INIT_3D => X"1F22211D191A25262524252B282B26191F25292822293F577D9ABC875A233B22",
      INIT_3E => X"181A171919222B2623202A231E1A151A1C172623241B87421F241D1D2221502B",
      INIT_3F => X"281E2323242225221F29201F1B17211B2122193822222020221E191B22282127",
      INIT_40 => X"252722111E23252626272A2A2626222528254B34272624241C19201E1F262928",
      INIT_41 => X"262824252721201B1F2122282C2A1921101119211D1E1C20242C252828262627",
      INIT_42 => X"3030251F2C28342D2C393A3C33211A1E22302C2D20212A1A1B20101E23221A1E",
      INIT_43 => X"2C2B30362F1F192525141F2323222B28292E2E302A272C2D2F2F2F2826313230",
      INIT_44 => X"1D23282921240F1936587B8B9E8E2A2729247755263E292224261923252B2D2B",
      INIT_45 => X"1C152422231F567B31251B201E395B1F1F1F251E191A25252324262B272B2619",
      INIT_46 => X"2027191C22231F21211C1A1B21273E2C191C181A17242B2723252B231F19131A",
      INIT_47 => X"27293B24282523241A19221F1F262A28281D2424252228232027221D1D16211B",
      INIT_48 => X"10161B211B1E1D21242C26251F262724252521131E2324262724252228262125",
      INIT_49 => X"252E29271B22241F1A22111C21241D1A242721262721201D1F22232727261C20",
      INIT_4A => X"292D2E322B26302F2F2F2C29293031302E302621292A352B303A3A3C3323191E",
      INIT_4B => X"2B274E5862522E2425251A22252A2C2B2C2D3232301F18261F101D242724292E",
      INIT_4C => X"1F1F251F1A1D25252224272B272B27191B21292921242521181218478A9E2427",
      INIT_4D => X"1D1A18181B282727262A28252018181D1A1621212323125E2E221A211F3B361C",
      INIT_4E => X"291E242525242C242425251C1E141F1B1F25230E21251F22211C1E1C22225226",
      INIT_4F => X"252322192023232627241D202826202526282220272621231819241F1F252C28",
      INIT_50 => X"2524232626201E1D1E232328231A201E121A1D1F1B201D232327252222242524",
      INIT_51 => X"2D302824262E352B333B3A3C30251A1E252B2D26192925211624111B20232122",
      INIT_52 => X"2B2F332E2F2017251A121D22282625312A2A2C312B272F2E2D2E282B2D2F302F",
      INIT_53 => X"1A222B2A2326241E22292818112B20242B2727278057312926241A21252A2D2C",
      INIT_54 => X"1A181F2123252015171B1F1E231D1B221E1E211F1A2026262225282B262C271A",
      INIT_55 => X"202125141C242022211D211C2120351C1F1316131E292325282C272721191C21",
      INIT_56 => X"26221E2628282222171A232021262B28291F242526242C232525291D1F151D1C",
      INIT_57 => X"121B1D1D1D221E252322232026232523252323202122232527271C2127272025",
      INIT_58 => X"23292F251B2A29241226111B1E2224273121252525201D1C1E2224272114231E",
      INIT_59 => X"2B282A2F28282B2A2A2E28282F2F2F2E2D2F241D2632322C35393B3A2C261A1C",
      INIT_5A => X"29282120282F322628221C22252A2E2C292F33302E1F1722181A1B1F27271E2B",
      INIT_5B => X"1F1A201F1820262522252728242C251A1B232A292224221E24262426271C1E23",
      INIT_5C => X"1D1416161E28252529292A271E1B17201B161E232223241E1A191B241C142222",
      INIT_5D => X"28202121272328212025281E21161B1B21202422181F21211E1C211A21221122",
      INIT_5E => X"24231E221F21232526271E17252922252622232827262121191D202122282828",
      INIT_5F => X"3F2323252622201920212423201A221E121C1D1D212320292522221D21242624",
      INIT_60 => X"2D2E21172932332F343A3B382D291A1D272A2B221E262827122513191C21241C",
      INIT_61 => X"2931302B2D2018211A191D1F262825202B2A2A2D27202B2B273130252F312F2E",
      INIT_62 => X"1C222B272223201F2327242425201E2128282324292B292528231E2425292D2B",
      INIT_63 => X"1C161F22222223221F1F1B231C182425201B1F21161F252422252728232B251B",
      INIT_64 => X"202222211D20201F1E1E221A212116211E1615152128212829292A26201B1B21",
      INIT_65 => X"2521252725262122171D202122282A27281D1E1F252327252421261C1F18171A",
      INIT_66 => X"121D1F1C202220242624222122222427281D161D2222232526251F1A1E262324",
      INIT_67 => X"2C2B2B2C282B27271322131B1E202322333B222523232018202024211E201F1D",
      INIT_68 => X"292C2A2B26202B27282D26272F322F2D2C2C1E172D34353236383C342D2D191C",
      INIT_69 => X"272823242A29272728252023242B2D2A2A322C2B2E1F1A211C1A1F1F252A271E",
      INIT_6A => X"221E1E21161E252323242826232B261B1C222B2523231C1E2127232424211E1D",
      INIT_6B => X"1B1516162325232928292A25211A1F211E1420222222222523241B231A1B2526",
      INIT_6C => X"261A1B1D232525232723231D1E1A13191F23202222201F1E1E1D21191E1F1B1D",
      INIT_6D => X"241C1A1D22222324262724211925222424212626242521221620202023272C2A",
      INIT_6E => X"223E1F26202421182120231F1E231F1C141E1F1B212120151D24222221222023",
      INIT_6F => X"2A2A1F1C2C3333333B373A302E2F1A1A26292C1F21262427161E141B1D1E2623",
      INIT_70 => X"2C312B2F311E1A211D1A1F21262B28202229292928262E2827221C2D2E2F2D2C",
      INIT_71 => X"1C212B2324241B1C2025242325201E1B2529231F29272A2827261E21232D2E29",
      INIT_72 => X"21131F232322232423221B23191B212322201E21141E252124242925232B261B",
      INIT_73 => X"1F232021221F1F1D1D1B1E171E1E1E1A171216172223272726282A25201C2221",
      INIT_74 => X"24212526272421221621212123282C2C231A1B1C22252421292524221D1D1119",
      INIT_75 => X"131E1E1B221F210F0C1D2423201E1E21211F26211E202224252726251C272024",
      INIT_76 => X"24262C1A23272325191A161A191E23241F221F261E24231A221F221F1D1F211E",
      INIT_77 => X"1A2128282B2A2F2B271E242E2F2E2A2A292921222A3230343B38382D31311B1A",
      INIT_78 => X"2429241D27262A2A27261B21222A2D292D2E2B31311E19221C1A1C23272A2A20",
      INIT_79 => X"21211D20131E242025252824232B261B1D21292325251B1920232523261E1D19",
      INIT_7A => X"141215182123292625282A261E1C222122131D2422232322231E1C23191A1E1F",
      INIT_7B => X"1E1D1E1E23242523282424261C1F0F191F2120201F1E1E1E1E191E181D1D2018",
      INIT_7C => X"23242B231C1F2224252422222127202324252727282321211622222124292A2E",
      INIT_7D => X"261219271F24241D221F221B1D191F1E14201B1C221E221B0810181513161D24",
      INIT_7E => X"28281F252C363337383A352B33341F1B2B282B20272724231D15171817212323",
      INIT_7F => X"2F2C2B2F301D18231B1A1B23282A2924171E27282D2E2D2B26222E2C2F2E2828",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "NO_CHANGE",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => douta_array(7 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88\,
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena_array(0),
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => ena,
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized17\ is
  port (
    douta_array : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    ram_ena : in STD_LOGIC;
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized17\ : entity is "blk_mem_gen_prim_wrapper_init";
end \blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized17\;

architecture STRUCTURE of \blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized17\ is
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute CLOCK_DOMAINS : string;
  attribute CLOCK_DOMAINS of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "COMMON";
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"1D21272325241C171F222524271D1D1A222826212326292B27241B2222242A2B",
      INIT_01 => X"22121B2422232321211C1D24191C1E1E1F211D1F131E232025262723252B261A",
      INIT_02 => X"1E1F211E1A1C1D1E1E1A1E1A1D1C20191314161A20242525252729271E1C2220",
      INIT_03 => X"242729292621211D1824222125292A2D1A1F212023242523272424261B1F1019",
      INIT_04 => X"14201C1F211E21230E09100F0F161F2225282A1F1F1F20242523201F24242322",
      INIT_05 => X"2D292921272525231F1119161725252224131A262024251F222020171D15191B",
      INIT_06 => X"1C2426282D302B2826282D2A2F2D252627261F23303B3839363B302A36351F1D",
      INIT_07 => X"212727272329292A27211B22211F292E2F2B2D2F2F1C18221D1A19222729282A",
      INIT_08 => X"1E201D1F131D232025262723272B261A1D21262423221D161D232524251C1D1D",
      INIT_09 => X"1315161B21252225252628291F1C222122121B2321212221201D1F241A1C1F1D",
      INIT_0A => X"1820232122232421262524251C1E11171C20221E191C1D201E1C20191E1C1E1B",
      INIT_0B => X"252A281B221F2024252623202323252223262A282321211A1A24242225292C2A",
      INIT_0C => X"1B1D22232024241E22201E171C141318131D1D20211E1E24180E151A1D202321",
      INIT_0D => X"27251F22313C38383A382A2A39351B1D28282921292827242110191718262621",
      INIT_0E => X"2F2C2F322F1A18211E1B19202726272C252C27292B302C28262A2A2B2F2B2225",
      INIT_0F => X"1D222625211F20161B242423231D1D1F21272828252A2926281E1D2120202A2E",
      INIT_10 => X"23111C211F201F22201F1F25191C211E1C201E21131A222026272624272B261A",
      INIT_11 => X"1B21221E191D1D231F1E20171E1D1D1B1115171A242523252526282A211C2124",
      INIT_12 => X"22242827212122181C242522252A3026181F23202122232327232524201D1116",
      INIT_13 => X"11181D1F201E1D25221718242A292625262C261A211F2123242725221F252424",
      INIT_14 => X"282828242B2A28262311181717222421192527222023221B22211D1B18151115",
      INIT_15 => X"2B2A2929292A2D2C25292D2C2F282124272322222D3535383E34282B3B33181B",
      INIT_16 => X"2127272625282A23281C1D201D232C2E2E2D303530191820201B191E2626252A",
      INIT_17 => X"1B1E1F211519212126272623282B261A1E222625201B1F1919252422221F1E22",
      INIT_18 => X"0F14171C262226242626272A231B222524131D201E1E1E201F201F271A1A2120",
      INIT_19 => X"1B1E222020242227261E2624231D11141922221E1A1E1D23201F1F161D1D1B1B",
      INIT_1A => X"2B27221B1F1F2223242624241F28232622212527222121161F242624252A3123",
      INIT_1B => X"212725221F23221A22221E1F1814111410141C1D1E1E1C2A281E0F1A24292A2D",
      INIT_1C => X"252424222527333E3B2E292F3B3319192E2A25262823282A24131919161F2221",
      INIT_1D => X"292C31322D191A23211B17192529252A2B27262626272C2B2628292B2C252023",
      INIT_1E => X"1D2223252116161D1722242325201C202227282621282A25251B1D1F19242B2B",
      INIT_1F => X"261B1E22201D1D1D1C1F1F281E191F211A191F1E191B1F2324282422282A2619",
      INIT_20 => X"151D231E171C1C20201F23171B1918190F141322262122232527262A201A2225",
      INIT_21 => X"2622262622211F1521252626232A2E1E1F20201F202823252320252324201316",
      INIT_22 => X"10161E1E1B1D18262B281F11202B292A29161A1D201D1F222425272624292626",
      INIT_23 => X"282B242D2C25262C26101919172324222226221F1F24231C202121221E110D12",
      INIT_24 => X"2826252727242B292727292B2C2621242523221F18182336362A282F3B341A1A",
      INIT_25 => X"1F2927222328272623191D1E19282C2D2C2E32322C191A21231D171825282427",
      INIT_26 => X"20191A1D18191E22242522282B2B261A181A232A211C1716162024232220191D",
      INIT_27 => X"11141A232127272825232429201A2123261E1A21211D1C1B1D1F1B1E1E1A1C22",
      INIT_28 => X"1E24232020231C1D212425201F1F1313121C1E1E1A1E1D201F1F23181C1C1D17",
      INIT_29 => X"2519151C1F1D1F2224242625242723252522252222211F142324252520292A1D",
      INIT_2A => X"201F1E1D1F24231A201E211F1B120F110E181B1E1F1F18222A29302119282C29",
      INIT_2B => X"2522201F13111C30312629323C331A1A252A272C2D26282D2912181817232424",
      INIT_2C => X"2F3031322C181B1E231F16182526242527272527272329272928292B2C262325",
      INIT_2D => X"191A232B23241A12141E252320221A1D1E2827212327252720181B1D1A292C2F",
      INIT_2E => X"251B1820201E1B1A1E1E1C1B1F1D19232419181C17171E23262521292C2A271A",
      INIT_2F => X"101B1B1D1D1D1F201E1F21181B1D201713111D262422232522212528211A2122",
      INIT_30 => X"2422242123211F15252223221E2A271E1C2323201B1B18202123221F1C1E1310",
      INIT_31 => X"0E1A1C1F1B1B131D2728282C272729262521171C1E1D1F222323252424252023",
      INIT_32 => X"2629282B2D25232725131918182223222223212121252319201D201B1610100F",
      INIT_33 => X"282B2526242228272A282A2B2B27242525221F1E14171E2E2E252C363D311918",
      INIT_34 => X"20272721212423271C191A1C1D272A30303031312C171A1E231F161826262426",
      INIT_35 => X"231B171B16171E23272322292B29281B1B1A1F2525241B10121D25231F221C20",
      INIT_36 => X"120E1F282723272A24212527221A21222414191F1F1E1A191F1D1F201F1E1722",
      INIT_37 => X"1822221F1C1B1A221E1D22221F1F150F121B191C1C1C1E201E1E21191B1C1F1A",
      INIT_38 => X"27271C1C1D1D1F2223232525232520222422242723201F142723201D1F2C261D",
      INIT_39 => X"232724232224231B211D1F181310100C121C1E1E1E1F17182426262D2C2C2C28",
      INIT_3A => X"2622201E171D242F2A272F3A3E2F17172B29262A2B221F212215181719222321",
      INIT_3B => X"333132312B17181F221F161825252427292E26222120262A2A292A2C2B282425",
      INIT_3C => X"1C181E2026221B0F111E252320211C2221282620202223251A1A1A1A20292930",
      INIT_3D => X"24101A1F1E1E1A19211B22251E1E181E211F191B16161E232720252A2B29291D",
      INIT_3E => X"141A1A1B1B1C1D201F1E201B1B1A1C1C100E21252324292C2A242125231A2223",
      INIT_3F => X"2423242923201F1328251E1B222C25201221201B21201F25212025252421180F",
      INIT_40 => X"171A1C1D20211714232527272728262628271E1D1C1D1F212324252623262221",
      INIT_41 => X"2F29252B291F1F1F2117171619212222212324211F23241D2221201D1914120C",
      INIT_42 => X"292D25202020262D292A2B2C2B2824252623231D1821292F2628313A3C2F1718",
      INIT_43 => X"202A261F202125221A1C1A19222F2C30343333312B161721201F171925252326",
      INIT_44 => X"2021191A15152023262025242C2A291E1D191E2024241F11111E242321201B21",
      INIT_45 => X"0E132022212124272B262224231A2223241319201E1E1A1B201B23221E1E181C",
      INIT_46 => X"101F1A131D1F252B2625242320211A0F14181A1D1C1D1D201F1E201B1C1A1A1B",
      INIT_47 => X"2A251F1D1C1D1E2123252526232724222423242623201F122320191C242A2724",
      INIT_48 => X"202124201E23251F222320211E19130E1B17141C1E1E151323252624211D1C21",
      INIT_49 => X"2522241A1A262E2E252B33393A3018193029252C2820211F2219161519212222",
      INIT_4A => X"333335302A1516211F1F181826262224282923212121262C282C2D2D2B282225",
      INIT_4B => X"1A1B1B1E20272415131E222422201A201F2A241F2120261F1B1C1A1A21332F30",
      INIT_4C => X"231918201D1D1B1E1F1D221C1D1F1B1B202219191516212425231F16282B281D",
      INIT_4D => X"13171A1D1C1F1E201F1D201C1D1C19180D191C1F221F202124252724221A2224",
      INIT_4E => X"2423242122211E111917151F232529281216110D1119262824201F1D18201C0F",
      INIT_4F => X"1B120E191E1F1711222525221B191A212A251E1D1C1C1E212225242623272523",
      INIT_50 => X"2D29272C25222320211915141A21222222262521202325202124201F201B1411",
      INIT_51 => X"2726202425212729282D2D2D2B272124252124171E2A2F2C272E3639392F1718",
      INIT_52 => X"20282422211F251C1C1B1A1D1B2E2D2E3031332F2A1516211F21191626262124",
      INIT_53 => X"20211C19131520252424160A1E2B291D111513131B252318121E212421211D23",
      INIT_54 => X"0D1E171A1F2022241F20292522192224211D191F1D1C1C201E1F241B1D221C1C",
      INIT_55 => X"160A0A100D141E1D1C1B1F1D191F1C0E11181A1C19201F201E1C211D1B1C1916",
      INIT_56 => X"25241E1D1D1C1D2022242325242824232524252222221D101212182120232A2C",
      INIT_57 => X"2328241F2323251F2123201B1F1C1414180F10181B211D0D20252A1E14212326",
      INIT_58 => X"242125151F2C302C2A323A3A3A2D16172B2727272123221F201A14141A212121",
      INIT_59 => X"2D2E312F291516201E231A142427212427241F2827212825272E2E2E2B272023",
      INIT_5A => X"060508061A1E1E16101E20241F212026232324251F1E221A1E1A1A1E17272A2C",
      INIT_5B => X"1E1C1D1C1B1B1D201D20261F1E241D1D1E1F1F1812152126211F0E0915282B20",
      INIT_5C => X"111B1B1B171F20201C1B211D181C19170E1F141314171C22211D232522192024",
      INIT_5D => X"2623262622211D11141320211E252A2E1B050B1D1815151D24272424201E1B0E",
      INIT_5E => X"140D16170B1618081E2526181A2423211D221C1D1E1C1D212223222425272224",
      INIT_5F => X"2B2626221C232422211B14141A21212221231F1C2323241E2020201A211E1314",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "NO_CHANGE",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => douta_array(7 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88\,
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ram_ena,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => ena,
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized2\ is
  port (
    douta_array : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized2\ : entity is "blk_mem_gen_prim_wrapper_init";
end \blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized2\;

architecture STRUCTURE of \blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized2\ is
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute CLOCK_DOMAINS : string;
  attribute CLOCK_DOMAINS of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "COMMON";
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"D6CBBD9C4C1F3B89878789867C7C7800778283807E818E8B8D948D8484848692",
      INIT_01 => X"7A7576786C151113181519171715638886837E7B7A7C82807F878A470D40A8D5",
      INIT_02 => X"7A767877787C868F969082807E835F2D3F261C3832362E5455575E65696C757E",
      INIT_03 => X"33576667656465605D63625F5D5E6465656B717662696B5367787A767A7C8284",
      INIT_04 => X"625250727976939C98663E403E4143474C494444454D51543D152C597E5D423F",
      INIT_05 => X"393736353535393C3D3E3D3C3B3F3E3C3B3B3B39383A3B3B3A3837393B382F34",
      INIT_06 => X"958E87828285878A88888585837D757B46282E3133253132315023271A2374E9",
      INIT_07 => X"768181807D81908E8F948D868686868F9891908B8E8C8C8788888C8E91909095",
      INIT_08 => X"8584807B797E84827F868B350E7FCED9D2CBC6B76925307D8A8889837B7C7772",
      INIT_09 => X"38212437312A2E455A595D646B70777D7A76767D4A0F16131617161916114989",
      INIT_0A => X"676B736B5C5D645751677C77797C80817B78787B7B7F848F9894878180864923",
      INIT_0B => X"4B484342454A4F5130122346665E3C3D2D4A6A69656567615E6364615E606767",
      INIT_0C => X"3B3B3B39383A3B3B3A383738393830365A3A4D735C6091898D673E3E40434347",
      INIT_0D => X"3D2C28302D253131416B1F2E1D2653FB3735343535353B3C3D3E3D3C3C3F3E3C",
      INIT_0E => X"9591FF888B8C8B8787888C8C8E8D9093938C88828385888986878585837C7477",
      INIT_0F => X"D8D7CAB97E272C708D8A8A817A7C7871778381807E82909190928D898785868E",
      INIT_10 => X"7B77777D2A13191014191515160D308886847F7B787F858381868A2623A5CED9",
      INIT_11 => X"7D7E7D7F7D80828E99988E828086341D271F37312A2631365B595D646C747A7C",
      INIT_12 => X"2C376868646768625F65666460636A696A6C705259525E765445757B7B7C7E7D",
      INIT_13 => X"5335505C4D6698927970463D414544474948434245484D5D3A2D4757554E3A3A",
      INIT_14 => X"3634333435353B3C3D3E3D3C3F3D3E3D3B3B3B3938393B3A383738373739373B",
      INIT_15 => X"8F8A88838486888984868584827B737137282C333624352D4872193F442447F0",
      INIT_16 => X"78FF82837F838F918F8F8C8A8985868E93918A888B8D8A8787888B8C8C8C9191",
      INIT_17 => X"85827E7B77808683828886153DB7D7DDDADDD2C690232D68908B8B7F7B7A7870",
      INIT_18 => X"232236241D2B2B2E57565B656E787B7B7B7778731C0D10151C181E1A15141978",
      INIT_19 => X"6D6D613742465955412A687C7E7C7E7C7A7C7D7E7C7E828E9A9B9383827F2714",
      INIT_1A => X"4749444245484E6F5674A19B5B3E40352B2A6166626768636066676764676D6A",
      INIT_1B => X"3B3C3C3937383A3A38383937363938477447674E5A7093977771573F40454547",
      INIT_1C => X"31292A333226322B68781A50B4265CF83633323435363B3B3D3E3D3C413C3D3D",
      INIT_1D => X"938E8B898A8B8586878A8C8E8A8C90928F8A8A858688878982848486827D736B",
      INIT_1E => X"E2E4D5C5992729518F8C8A82807774737A80FF8381848B8D8D8D8D888B8B8B8F",
      INIT_1F => X"78767B620C1517161B20191820150E688482827C787E88848289821453C3D7DE",
      INIT_20 => X"79797B7C7C80848F999D928686611D1754381C1427261E2A545B5C67727A7A7A",
      INIT_21 => X"32285A645E6265645F65686666696E6A6E7134293A51413516215C767E797C7B",
      INIT_22 => X"87526465687BA0A9786768404445444447494344454754666B9EBDD38F3C3537",
      INIT_23 => X"3832323434393A3C3E3D3C3C403D3A3B393A3C3B3A393B3D3E393A393837314D",
      INIT_24 => X"8F89888783878886007F8488817A766E2C29302E2F21312A906D1D41C6248BFF",
      INIT_25 => X"7C7F8282878D908F8D898A8E8989918F8D8B888A89888687888D8C8B878D9393",
      INIT_26 => X"8280847E78808A86828E7F1365C5D9E1E7E5D3FFA52B2347918788817E777472",
      INIT_27 => X"8A51171A2B26202044635B637A827C7B7B78795319231A34311A27191E1A0B5C",
      INIT_28 => X"6E6844284356638266272476797F807F7F81808081817F8C98978E8586461C29",
      INIT_29 => X"454742434448505579A6B6D8C14B3631392946645E6265635F676B6B6A6D7273",
      INIT_2A => X"3A3B3D3A39393B3C3C3939383935325D7E61758D6F7CA3B2835F734741444443",
      INIT_2B => X"2F2C2C32352D312C99CE2430AC30BAD7333235353639393D3D3E3E3D3E3D3B3D",
      INIT_2C => X"8B88878B88868989898D8C88888F94938EFF8889838588838184857F827C7865",
      INIT_2D => X"EAE9D8C4A0371F3C008986827D78726F7C82858588908E8E8D898A88888D8B8A",
      INIT_2E => X"79777740173B405D74405E5648340C4C8282867E77808C88848C74157FC5D8DF",
      INIT_2F => X"7E827F7D807C7A8997938C87812B1C41926A30332820393140635E687F847A79",
      INIT_30 => X"2D243A635C6266625F6A6D6A686D71736F633C263465B2C0B66F206A7D7E8381",
      INIT_31 => X"7F7593AC87829BA18664754B4242444043464343444947397FAAB4D4CD753839",
      INIT_32 => X"303136353837383C3B3F413D3C3C3D3D3C3C3D3C383A3D3B3A3838393833385E",
      INIT_33 => X"8D89898C8585870085746F6E7A7F75632B2A2C32382E312996FE6F35C533578D",
      INIT_34 => X"7B858887878E8C8C8F8E89888D8D90888A89888B87858A8A898C8B898C909293",
      INIT_35 => X"8283857D757F8C8A858B662092C3D3DCE7E3DCC4983E1F398B8F86837D786F6A",
      INIT_36 => X"A9703C3A293D403B416263727F84797677737533224D5D759074817C614E1040",
      INIT_37 => X"745B342243ADC9CAC19C44667C7E817F7B7E7D7B7B75758597948C8A771F2152",
      INIT_38 => X"43454444464D402A7DA8B6CCD39541423A2A3A625A636761606D6F69676C6F6F",
      INIT_39 => X"3B3B3C3D393B3E3A38383738372F3D697F87B0BB9C848382765E704F41414340",
      INIT_3A => X"2827302442342F2997ED5052D8312467313133343736373B3B3F413D3B3C3C3C",
      INIT_3B => X"8889898886858A89898B8A888E9291928D898B8C87878685754E54676C787C5D",
      INIT_3C => X"E1DBDBCAFF3B2037879186837C776F6979838788898E8D8D9393888883878888",
      INIT_3D => X"7772742D2E51687D92969488705A15398183847C75818B8C898C5C329DC1CFDA",
      INIT_3E => X"7B7D7E7C7A73738297968B8B6821296CB17A5346393C38303D6466787F857C77",
      INIT_3F => X"3F2B39615A636760606F726C6C71706F7050223885C9CFD1CAB36F627A7C7D7C",
      INIT_40 => X"7D99BCC9B69D91988C676E553D41433F4244454648513B3083A4BAC5CFC2694C",
      INIT_41 => X"33323134343638393C3D403C3C3C3B3B3C3B3B3E3C3C3E3936373538362D4567",
      INIT_42 => X"8D898C8988008484572730626B6BFF57292438614F303229ABA419588F282E58",
      INIT_43 => X"798185888D8E8F9297958A86828B81858600888584878989898B89868E929292",
      INIT_44 => X"7E81827C7783898D8C90533DA2C2CED8DFDEDACF8B382732838C86827A77726C",
      INIT_45 => X"B48B635D4729302D3965697A80857D78777474272D4C6B8398A29784715C1A31",
      INIT_46 => X"6B503575B7C7D4D7D3BE8C5777797B7A7A7C807F797371809697898958252F82",
      INIT_47 => X"414244464854354090A2BCC5CDD8A946303B325E5B626660606F737172767172",
      INIT_48 => X"3C3B3B3F3E3C3E3935373536342E49567DA1BFD5D4CDCAC6B47B6E5A3E404240",
      INIT_49 => X"292437B98D3B3229B46E1A382A24333C33323235323638383C3B3E3B3C3C3A3B",
      INIT_4A => X"8483858384878787888C89838D9193918C8A8B87878683803D2100597360715F",
      INIT_4B => X"DEE3DACE8435312E828485807A787771787F868A8C8C90969A978B008D898880",
      INIT_4C => X"757675222A496D8AA1A79783685A20297B7E807A7884898C8D92513FA3C3CFD4",
      INIT_4D => X"787A7E7E7772717E949486894C253C90BAA2666E4716274E36616E7D82817D77",
      INIT_4E => X"4E642B5A5D616561606E737274777173664D6CA8BACFD6DAD4C29C506C797A79",
      INIT_4F => X"7DA0C2D6E6F3FBE3D39D765E413D42424242444448572E4B9BA4BECCD4D6D665",
      INIT_50 => X"30333436333538383B393C3B3C3B3A3A3C3B3C41413D3D3A363734343230464D",
      INIT_51 => X"8B8A8B87868482792B324F5B0060606A282A25A5FE852E2B8E82201F1F292C20",
      INIT_52 => X"767E868BFF8B8F969B998F85795E7E818283838383858586888B88838D909390",
      INIT_53 => X"7F7E7E7677848B8C8E96563EA6C5D0D1D7D9D1CD8B2D37328382837F7D7C7B74",
      INIT_54 => X"B7C27E7242213B87325F717F80837E767475761F2A496A8FA0ACA48F68562227",
      INIT_55 => X"5F408EA3B5D8D8E2D9CCA659567C7A78767A7C7C7670707B9190848C45234E9C",
      INIT_56 => X"464547454B5B2C499AA6C1D0DBDFDBC5B19330525D616462606D727073757172",
      INIT_57 => X"3D3D3E43423D3D3C37363433313044577B9EC1D1E6F8FDEBE7CA9267443C4243",
      INIT_58 => X"282B276EF4D64028626F202823253224313436373635383B3B383B3C3B3B3B3B",
      INIT_59 => X"838282838383848587888886908F90908B8A8C8A87828276240C256400656557",
      INIT_5A => X"C8B4BBCFA023343D8385817E80817C75747A83898C8E91949C9D977224113684",
      INIT_5B => X"7573761D20496D95B2AEAC8C684D1E2B84807C7374818C8B8D9C6041A5C4CFD0",
      INIT_5C => X"777D7C7C786F6F7A8F8E848F42245995BAD3C98C5C8FB2982862707B7B8C8379",
      INIT_5D => X"CBAC414C5A616362606B717075767471624D8DA0BCD9DFE2E1D5AE69457D7877",
      INIT_5E => X"7CA2BDD1E5F0EFE9E6DCB571423E414449474A474E5D304595A7C4D2DDE0E1DB",
      INIT_5F => X"323435383836373E3B383B3C3A3B3D3C3E3F3F44413D3D3C383533322F324E56",
      INIT_60 => X"898A8F8C8381856F2018213C56595D5A2D252B50EC622D2C46701E252022321F",
      INIT_61 => X"77798184898E93949CA66A160D120C59867E827D828283828886898F8F90908D",
      INIT_62 => X"827F7A7574818C8E90A06142829FCCD6984165C9B43727448681807F80817D7C",
      INIT_63 => X"B6D2E1E2D0E5CE9A315F6D767F8B8078717673181F476E97B5B7AF8A63481928",
      INIT_64 => X"594C94A5BEDAE3E9E3D5B570467A78797C7D807F797175808A878A8B3A1D649B",
      INIT_65 => X"484648464F61314097ABC0DAE4E0D9D0BCA14B4B595C605E5E6A72717675746B",
      INIT_66 => X"3C3C3A3F403F3B3A3A3432323332445774A0B7C8E1F0ECEAE5D6B486493B4345",
      INIT_67 => X"36252776DE2C2F2A2C4720231F2831213437373334333A403D393A3A38393A3C",
      INIT_68 => X"76867F7E8180828388858F949090918D898A8D8886817D5B1D14142F655C4D5B",
      INIT_69 => X"90727E9EB94E29468380837F8183807C777A80858B8F92969B00000C10110A14",
      INIT_6A => X"717771171A48638FB6B7AE846043172D827E7A7373808E8D8F986137223CB1C7",
      INIT_6B => X"7D7F7E7D787376838985868730267698BDD1E0E9E6E4CB9C3D566D7580887E77",
      INIT_6C => X"BCA657525A5B5E5F606A716E7578786D585994A7BCD9E4E9E2D7B87B50787779",
      INIT_6D => X"779BBAD0DAEEF2ECE5D4B18F4A3A40484D4C4A464F61333E93ADC1D9DCE0DCCF",
      INIT_6E => X"3539383636363B403E383A3B393939393A3A3A3D3E413E3E3B35333433344556",
      INIT_6F => X"888A8B8785817047231C16FF55503041422D269DD228362B243322201E28321D",
      INIT_70 => X"787B7F848C8F9397A2590C110F0C110636837E81807F8084888796969190918D",
      INIT_71 => X"817C7873727C8A8A8C9A663260568CC89AA3C99CB35322497E7E838082847F00",
      INIT_72 => X"C2D2E2EAECDECA9D4E506E727E817A76727A71171C44748EA8AFAA805F401330",
      INIT_73 => X"5B6094A9C3D5E0E9E2D2BA844D76767A7E817C7B79767884898483842F318193",
      INIT_74 => X"4F4F49464F61363A88ACC9D4D4E0DFCEB9A2595559595C5F626B6F6D757A7870",
      INIT_75 => X"393A3B3D3C3F3F3D3C3634353336445A7D96B5D1D7E7ECEFE2CCB5965A3B3F4B",
      INIT_76 => X"453334AA982C33282634231F1F26331C363A393633343B403E383A3C38383839",
      INIT_77 => X"107283827E7D808388899A969191928D888A8989827D5D39241F180F4349312F",
      INIT_78 => X"9D759DAEB1591F3F7D7A807F81007773787D7D848A9094939D250E0F0F0D100F",
      INIT_79 => X"737E74191C427A989EA5A7805A3D113380797675727682878B9563339C6A74CA",
      INIT_7A => X"7D807C7B7B797A868984818132398491C2D4E3ECEBDCCA9E5E546E707B7C7773",
      INIT_7B => X"BBA150575A58595C636B6F6F747A7570595893A9C5CEDAE4DFCBBB8E4B747679",
      INIT_7C => X"7F98AECEDAE7EBECE2CFB594673B434B4F4F4846506038347CA8C9D0CED6D8CF",
      INIT_7D => X"383B3A342E313A3F3E38393B3838373A3A3B3C3F3E3C3D3B3C37363533363E5C",
      INIT_7E => X"8888898B82754900211F1B17314B3626363A376C702E2D262934241F1F24311F",
      INIT_7F => X"767D7C82899194987A0D100F10110D0F0A4280807C7D8083888A99949191928D",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "NO_CHANGE",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => douta_array(7 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88\,
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena_array(0),
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => ena,
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized3\ is
  port (
    douta_array : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized3\ : entity is "blk_mem_gen_prim_wrapper_init";
end \blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized3\;

architecture STRUCTURE of \blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized3\ is
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute CLOCK_DOMAINS : string;
  attribute CLOCK_DOMAINS of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "COMMON";
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"7F77757773727B868B8E6042905677C4A1675FC1B55833657B777B7D7D7B706D",
      INIT_01 => X"C3D7E2EBE9DDC99A66596E71797A73717680781921477FA7A5A2AE8D5A3A0F36",
      INIT_02 => X"4E468FAAC2D0D9DDDDCEBA934E7675797B7E7E7E7E7B7D888784817F353C8892",
      INIT_03 => X"504F4C485160392E72A3C2D3D8D3D4CEBDA1465A5F5A5759636B71717479756E",
      INIT_04 => X"3B3D3E41423A3C3A3A3938353235355880A3ADCDDFE8EAE9E1CFB3966C3D474B",
      INIT_05 => X"273F30225C2F2F282B31241E1E23311E3A3C3B332D303A3F3E3838383738373A",
      INIT_06 => X"0B12757E7B7E8183878994939192938D88878789876A3D2E2526212322473025",
      INIT_07 => X"A79A7DC5BD59569A767479FF7A756E6C747C7A808B929398450A0D160F11100A",
      INIT_08 => X"77817B182C5E8AABB0A6B79C653D10367E76757674747782878D6258735483BC",
      INIT_09 => X"797B8081817C7F8884827F7E363E8A96C8D9E3EAEADEC79764586C7177797270",
      INIT_0A => X"BF9E3E5E635C5758626C71707479766D43398AACC6DFE1DCE0D9BE9352787678",
      INIT_0B => X"84ABAFD2E3E7E8EBE0CDB69A6D41484B5250514D535F392C6DA1C0D9E9DCDBCD",
      INIT_0C => X"3A3C3A332D31393D3D393635363737393B3D3F44453A3C3B39393A3532343252",
      INIT_0D => X"870086858A5F3D2F2E3527282C39322D2A35322B2A2A36272B31231D1E22371A",
      INIT_0E => X"747A797F8E9290821914111A1000130F0E0B61807A7F818387878F918F93938E",
      INIT_0F => X"7C76757475777379818F6264848585BBA2A9C6BCBF747C947973797B77737070",
      INIT_10 => X"CCDAE8EAEBE0C89A5D556B6C7476716F797F7B183165799CA9A9AF9A74461331",
      INIT_11 => X"423986ABCEE1E9E5E8D8C49656787679797B8183827B8287807D7D7F3943889B",
      INIT_12 => X"514F5250545E392F6CA0CBD5E6E1DED1C59C395E65605A5B636D716F737A746F",
      INIT_13 => X"3A3C404445393839383A3A35323335578BAAADD2DAE2EEEDE6DBBD8E6A47464D",
      INIT_14 => X"23252D2A21312C1F272F231E1E203D333A3C39302C30383C3C38343435363738",
      INIT_15 => X"000B30827C7F808100878B8E8D93938F87858587824D3F323541322B4C392B22",
      INIT_16 => X"A7BEDCCBB88CB0AD7B767B7B787373757878787D8E91927A0A0D101217150E0B",
      INIT_17 => X"7A80791C25203A7F96A29D87784B17327A74737274787173808A5966A1AE93B9",
      INIT_18 => X"7B7E8182817C84867E797B7E3A4883A0CAD7E8EDEBDDCA9C595A6A6A7474706F",
      INIT_19 => X"CCA3395B64625F5E666D7070737A7273483C84A2B4ACDEEEE9AEAA996678767B",
      INIT_1A => X"8EA1A6C3B4C0E3E6E6E5C1786547484F524F5253565D3A35729ECABCBED2CECB",
      INIT_1B => X"393A372F2B2F373A3B353234343638393B3E4142413836373939393634333865",
      INIT_1C => X"8783858D74393A354259443B3C3AFF2829282927252C3024302B242120203662",
      INIT_1D => X"7B77777D8C91934E0E17171517151414160E2C7F7E7F7F80898A8A898C949390",
      INIT_1E => X"796F707273767473878E5E76B5B68EB8B7C5CFCFB58BC5B774797B7C79757279",
      INIT_1F => X"C2D3DEF2EFD6C79B59636B6D7B79706E7B82791D356A4C699292562F303C1A3C",
      INIT_20 => X"493F849A7857C8EEE16F62866C77777D7D828180817B85857C787C7D344B82A4",
      INIT_21 => X"56555656585B393B789BB19F9EC9C3A7B8A03B5B68646363686D6F7373777877",
      INIT_22 => X"3E3F42403D3B393A3B3937383730376F899CA1B5C7C0DBE5C9B3C87F70434E50",
      INIT_23 => X"23252F23252B32222F35431B14202DA6383936322F333638393331343335383C",
      INIT_24 => X"120F1470817F80848889898A8F9695928785878E572F3538495F4E3F513A2620",
      INIT_25 => X"B6D1CECCA98AA3AE797A7B777675777A7C78787D828F91300C1616001C181615",
      INIT_26 => X"7D85721D3D37335E887D5F63753F19437A7071747673727C888A787EC5B696B1",
      INIT_27 => X"827F7F837F7C8683797678804B448599AAABD0D8D2CCC6A151686D6A7B79716F",
      INIT_28 => X"D8973E5369676565666E6E706F71767A543F7D807E83B9D2C986807070797982",
      INIT_29 => X"8F98A2B2EFD6C7D5B6DFBD7E644B4E51565659595A5F56417C96BDD0ABCBB7C3",
      INIT_2A => X"3539342E3033383A3B3531313335383B383C3F403F3A3A3B3937363635313777",
      INIT_2B => X"8B87878A3928383947674F4452461F1B222434271F2D3023204D641C391D2B9A",
      INIT_2C => X"7878787B7F89851611181D1B1C1C1E1414100A537F7F81858888898A8F979693",
      INIT_2D => X"76707172757072808986837EC2B696A8B4C7CBC6A38CB5A2787C7B7675767676",
      INIT_2E => X"BCA0B6D0D2BFB6A04A676C687B7C74737E816527361D454C9A7F49394F511A3E",
      INIT_2F => X"51427C89AFA2A3D7A3A8BC756F7A7B80807F7D817E7D84807876788584477F91",
      INIT_30 => X"5556595C585D7F477F9A9792ACC2B7A39F9745566B6B6969686C6C706E6F7374",
      INIT_31 => X"383C4041403B3A3A3837373635343A779CA4A9B79DB1CAD8B1B7AC7D5F4D4F52",
      INIT_32 => X"1E232F2025292E32505D6716602A287A3338342F3034393A3A3432313334373B",
      INIT_33 => X"1811083B7F7D82858787888A8F98999590878A7F20253E3B486359FF5B57281A",
      INIT_34 => X"B3C9CCBEA08EBA99787D7A75767877757579787980886C0B17192A211F22241A",
      INIT_35 => X"7C80733740496D5EA5895233314B1E4B74707173737073828C84877FBAB0A4AD",
      INIT_36 => X"7E7F7B7E7D7F837D7777758C955287A1C7909ECCB8A7AF974D6A6B6A7B7E7979",
      INIT_37 => X"70905C616B6D6B6D6B6A6A706E70707B734780917B8FA0D59A8F937E6A767A7D",
      INIT_38 => X"A7A7B1A263A8C5D5A36A788E5F4C52525456595E55629B5684A37983B0B9B68B",
      INIT_39 => X"323535312F363939393331313334373B3A3C4243403C3A3A3837383836343C88",
      INIT_3A => X"93898E6C1322424255656C656A5D3819181D2B1F28302E32A3945B1754312786",
      INIT_3B => X"767B78777F8A4C0BFF2047312828262119110A2C807B84858587888A8F999B97",
      INIT_3C => X"726E7377737175858E858780B6A3ACC0ABC4D4B99D8CB9987A7D7A74757A7B77",
      INIT_3D => X"848D97CA9384BB8D55716C6F7B7E7E7E7C7F7E495D637379A8986D6050452459",
      INIT_3E => X"9F6187955D8BAAC5AB776A7F8274777E7B7C797D7D7F837B757673999B5796A4",
      INIT_3F => X"5254595F546DA66689AE8DA9B6B5B7977F907771676E6C6E6D696A7070756D80",
      INIT_40 => X"3A3A4345403C3A39373738393633368EADA0AF9F8FBAC1CDA57B78935F4B5352",
      INIT_41 => X"16172825244D2D1EC1E14A1D332A2AB5303334322E373939373231313334373A",
      INIT_42 => X"1A110E207B7D8586850088888FFF9D9B968B8E53111B3F4F616F75686F593B18",
      INIT_43 => X"93B2D7B69A88C3977B7D7A74757B7C79787A77FF7D86330C1D290050373A2B27",
      INIT_44 => X"7E7D7B5679707B81A7A3847C71533874746C757D747178878D888580B59695AC",
      INIT_45 => X"7A79797D7C80837A737475A1A165A29951A6A2CA946FA18A5C7770757C7C7F80",
      INIT_46 => X"ADA08C84686C6B6E6E6C6C72757C6C88B78191A194ACB1BBB6928686A1767380",
      INIT_47 => X"B09BAEB8D3C9C3C2B6C4A690694B53505052585D5674AF748BBAB8C0B8B0B9B1",
      INIT_48 => X"2F303431303539393732303132333638393943453F3D3A393737393936334794",
      INIT_49 => X"988E8F3C10143455536965616D5A2D17161A2121286F291791FD53172E282EBB",
      INIT_4A => X"77797675797D280C27348774495D3B352113101271828686858687888F9C9FA0",
      INIT_4B => X"766B7782746E7A88898B857CB492656A83A9C8B29684C98D7C7C797577FF7877",
      INIT_4C => X"A2C1B6CCB8855E8E6A7B727A7D7C7F807D7C805883AEB082A19EA17E736253A3",
      INIT_4D => X"C48798B6BEC0B1B7AFBDAC9CA077728179767C807C80857770727B9E977FAFA5",
      INIT_4E => X"4C4F575C5573C28688C3CCC6B4ADB4C3C9B4968F6D6A6A6E6F7171757B8374A0",
      INIT_4F => X"393A43433E3E3B3938383938353179B1AB97BAC0D1D1BFB6BAC1AAA0784A514E",
      INIT_50 => X"121F1C1E2F802A1865FCC0212322435F2E2F3430313438393732303131323537",
      INIT_51 => X"30180F0C6685868685858787909EA3A599919130111429473A525D60685F281C",
      INIT_52 => X"ABA6AFAC9486C77F7D7B7876787AFF7676767674777B20103B579D997682454A",
      INIT_53 => X"7B7C845482AAA57C9891AFAEAD6D4B92716C7584766B7B87888A8875AD954A7C",
      INIT_54 => X"797881837E8285766F757EA0B371B1B9D0C1BECFCBB99A99867D707B7C7E807D",
      INIT_55 => X"CCB9928E6F6A6B6F6F737578808A87A6D08492C7CEC7ADACADC5BFA3B3817180",
      INIT_56 => X"8C91B1C0C2DCB5BABAAFB493694A4E4C494D555C556ED19C82C1D0D6B1B0AFBD",
      INIT_57 => X"2D30332F3233383A37323030313235383B3C43413E3D3B3A393838383534829F",
      INIT_58 => X"95948925161924384058697862642F220F1A1F395C92251580FCF13F392C3017",
      INIT_59 => X"7574757575781B0F5592B8BFB8A46067471D0F0F5E8585878685868792A1A7A6",
      INIT_5A => X"706D71857D6B7A85878A88719F8B5E86B7A999A78F8CC17A7A7B78777A787775",
      INIT_5B => X"C3C9B5CEC3D5C3A79A7D6F7A797E81797C77694C7BAC9B6DA38DABADAD62599D",
      INIT_5C => X"CE7F88C8D3D1AEACAED1CAACC083707D7B7D86858085877874777A9BC07CB5B3",
      INIT_5D => X"464A535C5669D2A280BBDACCB5B2ABB6CAB197876A6B6E717073787C828B81AC",
      INIT_5E => X"3D41433F3E3D3B3B3A383839353B877E708EC1D6DDDCADB7ADD7C28F6B494D4B",
      INIT_5F => X"14161044DA8F1F18B7FE7317652E34222E3032303335383B3932302F30313439",
      INIT_60 => X"5C20110C558585878685868793A4ABA491937C181A1725354E6C63AA6C7A2D22",
      INIT_61 => X"B8A894A68F8A8E76797977787B77757372727575736915196AA4BCCEDBD4A393",
      INIT_62 => X"7A7B6C4876A08785B792A0B79F55598D6F6E6D85836C7984898B857093797D9A",
      INIT_63 => X"7B81898581878A7C78767991BA70B0BFCDD0B4C8C2CFBEAC9F767578767B8476",
      INIT_64 => X"C1B3A588676B6F737171797E82898AA4CC8A80C6D4D0AAB4AFD1D4B1C7816F7C",
      INIT_65 => X"6481C0CCE4DBA9BEBAD6C18771474E4B4549515D5A69C39F82BCD4C7BEABA9B2",
      INIT_66 => X"2E3132323436383C3A33302F3031343B3F45453F3F3D3B3C3B38383936379C93",
      INIT_67 => X"8E9167191A131E204FAAA3CFB899401B17171025E5CE342CCED0471B661D3521",
      INIT_68 => X"73767474746A12226E9FBFCEDCD5B2AA75260F0F4B8B86868686858793A2A9AA",
      INIT_69 => X"6C6A6F83866F74828788846D936F8C9E9C7F93A4937559797B7D797B7A767573",
      INIT_6A => X"D1D1B2C0B8CECAAFA97873797B7E8277767870406B927E99C0B094B7954C5B8D",
      INIT_6B => X"C99A77C4D9D0A0C6ADD1D3ACC17D717E818789858089857D7B777684A064A9C6",
      INIT_6C => X"444A525B5762BE9B7DBED8D0ABADB4ADC4B6987E666A6E717373777B81898B9E",
      INIT_6D => X"4243413F3E3E3E3F3F3B393A363499A16778B2C3E3C1ABBFA7C0C0856E464E47",
      INIT_6E => X"1720190FCAFCA53C7986461B3B18351E2F3131323232373A373330312F31343A",
      INIT_6F => X"85320F0F448C878686878688909DA3A58D8D5A22171325565AACDABF8E9F6E35",
      INIT_70 => X"9E6A9CA49573577B75777A7C79757775767B7774756D132670A1C9CDDAD7BDA6",
      INIT_71 => X"74776F3754867362938291A1814260896B6971818873748186828668A05E699B",
      INIT_72 => X"858B86828089827D7A77757C9C65A0C3D2D2AFC2B6CFCCAEA879727C7E838375",
      INIT_73 => X"CBB5927963696E6F7273767A81898799CBA875BFE0B79CD3AFC7D2A4B67E6F7E",
      INIT_74 => X"6F72A7C0DFB2839A87B5BA886B424B44434B535A565BBDAF77B8D5CFA1AFBDB0",
      INIT_75 => X"2F31323131313537343230302F31333A42413E3F3E3F3F3B3C3B3C3A373185AC",
      INIT_76 => X"8C8A5121161731A07D99EAAB89CC9A6B1A222306B3F39E2E2A5B4D181E18341C",
      INIT_77 => X"787F7B7674721B2C71A8CCD2DCE3C6A18D390F0C428B878888878B8B8D999D9A",
      INIT_78 => X"6A6971818877747F84818B63A47170BBA488AEA49677647A75757D7C79777977",
      INIT_79 => X"D6D6AEC0BCD2C5AA9D78767F8087877474776E32417E7251606B918C6B3A647F",
      INIT_7A => X"CEA771BED2A67CBB95C0D2A1B67E6D7E878C837F8388847E797674779A6899BD",
      INIT_7B => X"434B535A5855B2B473ADD1C29F8896A5CBB194765E686E6E7172777C80878893",
      INIT_7C => X"423F3D3F3E3F3F3E3E3C3A3A372F71B5746D9FBFD0B27E7589B1B08B673F4741",
      INIT_7D => X"231B2B0799C4261A284E4A1D2115331D2F31323131323435322F30302F30323A",
      INIT_7E => X"903A0E0C448C898A8A898E918F979A958C8846131B1C3E97889CEAB2A9D1B38E",
      INIT_7F => X"9FAFB8A094756A77787A7D7B79787B7879807C767478232E79B6CAD5DEEACCA9",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "NO_CHANGE",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => douta_array(7 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88\,
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena_array(0),
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => ena,
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized4\ is
  port (
    douta_array : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized4\ : entity is "blk_mem_gen_prim_wrapper_init";
end \blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized4\;

architecture STRUCTURE of \blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized4\ is
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute CLOCK_DOMAINS : string;
  attribute CLOCK_DOMAINS of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "COMMON";
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"747770353C727072658488805836617669687081877B727C7F838E62979991C8",
      INIT_01 => X"868B827E888A868179757373866593B9D9D6AABEBCD5C2A28E797C8281898C76",
      INIT_02 => X"BFAD95715A666D6E7274797D7E868B8ED1A66FB9BAAE6A897FBFCFA1C1776F81",
      INIT_03 => X"766B96B8C1B7A782A4AFA68C603F4640434C5459595096B270A3C2B6A871779B",
      INIT_04 => X"2F32323132333434312E302F2E2F323A423D3C3E3F3E4045423C3939372F60B6",
      INIT_05 => X"8C873F0C2227484D68A6EDBB6B58B18F2B182818779716253438381C2814321C",
      INIT_06 => X"797D7C76757D2A3083ACC4D0DDDDD1AF913B100D4C8E8A8D8D8C919794969A95",
      INIT_07 => X"69676E80847D747A7E848C67859A7891A8ACB19C8E7375737475777A79797B78",
      INIT_08 => X"D6C9A8C5B7D0C197817C848482868E7A7578733C3A5F5F64927B767149385A72",
      INIT_09 => X"D0B472ACB7B598769CBAC69CC66F7386848883818E8B8B857A757272736192BA",
      INIT_0A => X"424D5458585272C46D9BA7B5B2A6A0AAAEA7926957626C6E73767A7B7B848B8A",
      INIT_0B => X"433D3B3D41403E423E3C3D3A38344EAD7B6B91AFBBB7B7B8ADAF9F8758424641",
      INIT_0C => X"351821264B931D242E26221C2215311C2F313130323436353131312E2E2F3339",
      INIT_0D => X"9547130E5A908C8F8F90929C999599948A853B143038425F9FC3E9C3AF627DAF",
      INIT_0E => X"A7AEAE9A87746E7377767C7B79787A77777A7A777780333D684C91CFD3AFA6A6",
      INIT_0F => X"7979733D375C647993816D67513E567167666D7E807C777C7F80896E709681A0",
      INIT_10 => X"86848183908D8E867B757174705E93BBCAB9ABCFB5CBBF8D79818B8683818A80",
      INIT_11 => X"A9988B63585F6B6F7477797979838786BFB670AAB4A6A692A1B9BC94BB67738A",
      INIT_12 => X"876E8EA8A9A7C8CABEA99C7F52454541414C555757545CB06A8FA7BC9CA4ABA7",
      INIT_13 => X"2E303030323538373333322E2E30353843403B3B413F444643403E393934429C",
      INIT_14 => X"87853B17312F6EB1B1CDE9D6BFB5AEB73F152031337E181F322D201F2416321D",
      INIT_15 => X"74797A7978813A3B6E727ED1C2686FA19D58110F668F8F919293929C9B92958E",
      INIT_16 => X"65646B7A7A79767B7E7E8B776093757F91B5AD998173707A7678747A7A767975",
      INIT_17 => X"C3B576A791BDB98577889189817B8183807A703E434C3353766D45514F415872",
      INIT_18 => X"A3BB80A6B5A8B1D4BDB7B59EAF606D888B827E828F8D8F867B7471726F5B9AB4",
      INIT_19 => X"404A5557565155666995B7B0ABC7BB96A2967A5D5A5D696E7276787878838682",
      INIT_1A => X"43413B3A4043433433353A39393638898C6E8DA3B7B7A3A599A39D7A4D444340",
      INIT_1B => X"6C181F3326641B232B2D201F2416331E2C2F2E2F303438383535322E2E303738",
      INIT_1C => X"98620F0F6F9091939294929999908F8A87853B132F2D7ECCD0CCE3E7D8D3DABD",
      INIT_1D => X"ABBCAA957A7779777B7E7D7C7B7477747378787977813F3E86BEA8C7C3B3B29A",
      INIT_1E => X"837B703F36534E7F8D564A60593E577164616978777771787E7F8C7D4D90828D",
      INIT_1F => X"8D837E818C8F90867D7571706B599DB0BCBA89669EB8B0817A8D94897C777C84",
      INIT_20 => X"999E6C595B5D666C70777A7A7981887F886F73B0B26C969495AAB0A092606A82",
      INIT_21 => X"81758FAAC1918DAB8A7FA87B4A4442403F47565857504F5264A5B7A0849CB39C",
      INIT_22 => X"2B2D2D2F2F3236373433302F2D2E373941403C394045331A1A2333393A373276",
      INIT_23 => X"89853C182F2A88DCDDD1E5EDECEAE0B1761B1C3117341E202F2D1E202415331E",
      INIT_24 => X"72787678757F444F9FC5ADC3C5C4D2A297651213769194949393929597908A8A",
      INIT_25 => X"6260687576777078817E858848829997B8C1A98F75804766594E73807B737774",
      INIT_26 => X"B7B6B188ACB6A97E7E91958876747982827D74453356668B9F7E736F5635546F",
      INIT_27 => X"80677BA7AB9DD1E4C58CB68A68646B7D8C8780808B9293887F7571716C5D9DB2",
      INIT_28 => X"3F465759585151565A9FC78F97B49D78A6A85F575B5F65696F797E7E7A7F837F",
      INIT_29 => X"403E3C3842382E3B3D2821383B33315C837793B4B47EC6E0B87FB57E49464340",
      INIT_2A => X"7D261A2B0F241B1F2F2E1F1D2415321A2A2D2C2F2E32343633322F2E2C2D363A",
      INIT_2B => X"9B670F0C7E91939393959492908D898787873F1930248CE3E4D2E6EEF0F3D8A6",
      INIT_2C => X"BAB9A383777E1E382E1A407D817374737778767476804A59756092C0BFA9CCB3",
      INIT_2D => X"827B76522D54669AC19082714B303B6C606267737473737C817C81864F6E9E9C",
      INIT_2E => X"848A838289929287817673736F5AA2B5AAABBDB0A8B2A77A7B8F948774737C82",
      INIT_2F => X"B9A159565A5D63696E777E7D7D83837D7E717AA4B2A28CAE908EB87C58656772",
      INIT_30 => X"83768FBABC95B0BEA2A1BD79434343413F4450575A58524C5398CCADABE9D290",
      INIT_31 => X"292A2B302F30333332302E2D2C2D323A3E3E38373D335E7A66502F2E3C343247",
      INIT_32 => X"8489421B2C1E8DE2E4D0E4E9F2F3CE9F9C351A26112519202A2E1F1E2519312F",
      INIT_33 => X"7878777379825261684B86BAB57B71ADA76112307F9193929397958F8B898884",
      INIT_34 => X"60626370727176807F7A7F805C5A97A4B6AA9B748D5C161E1D131758806F6F72",
      INIT_35 => X"9DA2C1C2A2AAA477778B908774747D82827B7A63254E617FAD788066432E2762",
      INIT_36 => X"7D7270A6B69A728978A6B37A5B61616877848282879291887C7573766C59A2B3",
      INIT_37 => X"3E434A5850382F25317ECAC7A7E0D9A3C2985755575C626A70747C7B7E84837B",
      INIT_38 => X"3E3F363A354E91AE9D9261323837353968758DB6CBB39EA993B8BD6F40404243",
      INIT_39 => X"B53C1B221622181F292C1C20281E2F4E29282A302E2E3030322E2E2D2C2D2F39",
      INIT_3A => X"B0582A717F9194939497948F898785848488452023198BDEDED5E3DDF1F1CA9B",
      INIT_3B => X"B59C8E71A02D212324251628616C6A6F747877767A825C6C929E95B3B0754797",
      INIT_3C => X"817C7D732541634F60637C573E2925555F5D606E737177837C777C7B6C4791AF",
      INIT_3D => X"6A767E83878D90877877707566589AB58888AEB38E9BA37477878A8675747C80",
      INIT_3E => X"C0925755565E646B71757B7A7C817E797D7264A5B0A9B5C1ADB3A776615A5D64",
      INIT_3F => X"41758EAECFBDB5BFA9B8B765404243433E4348522E0D07050944B8C4A2B6AC93",
      INIT_40 => X"28282A2C2B2D2D2F312C2D2D2C2C2F383F3F393B3577A7C5CEC89B5733363631",
      INIT_41 => X"83874E221D1482D7CFD2D8CFE5EBD09DAB381E221424181F2A2D201E29232C42",
      INIT_42 => X"72787A7A787F6B78A5B99CB2B1ADC2A0B1574D90898F97949496938E85858183",
      INIT_43 => X"5B5A616A707077847D757876783B83AEB38B75867F172C212122241C296E676C",
      INIT_44 => X"74638B90648EA76E7482838276757B7F817A7C81332F675A4877724E37252345",
      INIT_45 => X"7C7D599CAAA5B0B7B0AD996D6659595E636F7B8587868A817F7A7373685296BB",
      INIT_46 => X"3E424738081113100D0885BFAAB3B098BD835958575F656C70757C7A7B7E7A75",
      INIT_47 => X"3F3E3B334891B4C6CBD1C08E3F3433333B7887A5CBBFAEABA5BCAB5940434341",
      INIT_48 => X"C3421F2314281922262847262C3631202829292B2B2D2D2D2E2B2C2D2E2D3138",
      INIT_49 => X"B35364AE8A9399939194928C8483808283885821191079CDA893A4B4D5E2BFA1",
      INIT_4A => X"906E61A434191B1D19212420195A686A74797C7B747C7D89B4B696B7B3BEBFCC",
      INIT_4B => X"827C7B834F2561809591653C312924355A5961676D6F77837F7677747E3A65A0",
      INIT_4C => X"646F767B84878C8381767972775D8AB0A690C2B7659FA46B727F7D7E75787C7E",
      INIT_4D => X"B5705C5A5960676C6D747E7A797C78737A86568E9DA2AEA8AFA38E696E5F5859",
      INIT_4E => X"4A7A7FA2B9C7BDB8B7BE994F3F4241403E4242230F1319170F0842B5A597919F",
      INIT_4F => X"282A282B2D2F2E2B29292A2C302F33393D3D3D2B6C9DBBCACCC7C3B45D313235",
      INIT_50 => X"84875E22160C72C1BC90AEDDC6CAB498C1451C2019281020392862282F342F1F",
      INIT_51 => X"76797E79737B8592BFB48FBFB6C3BEC0A76899BD869A99929192908B83828082",
      INIT_52 => X"595C5B63686F777E7D797775804232735B556A7A0C1A162320261B231C3C716C",
      INIT_53 => X"B58F9EA59FBC96676F7B7A7B74777F8085848084631F577D8E815A3721302426",
      INIT_54 => X"73815D79959CBBBABD9E846B72665759626C727F87867E827E7A531F325D86BC",
      INIT_55 => X"3F4636181C0B1011110C0C72BDA099A4A8625F5A5A60676C6B727D7A7979766E",
      INIT_56 => X"3F3F3F3184A0BCD3DACAC7B6793036314A7B79AAACCBC7C4C8B48C453E3E3E3E",
      INIT_57 => X"D23A1F1A1A281A1C41816A212F362D1F2829272B2D302D2927282A2C302F333C",
      INIT_58 => X"A9638AB18E9A979093918E8A8480808283856129120966B1B9B3D0DFB7B3ACA7",
      INIT_59 => X"3E478D3E1313181D1B2C281A162E6C7276787E77787C7D96C0B191C1B0C5D1CF",
      INIT_5A => X"868482866A13497993754C2D1B321F23505D5A60646D7879787A79777E53182D",
      INIT_5B => X"616D747A8385898480763E1B33727AB4B9A3BEAA9DC18D616C79797B75768282",
      INIT_5C => X"9B5B5F58595F656A6C7179797878746C6E7B6E619094ADC3B598736D6D65585B",
      INIT_5D => X"49826CABAAC3BBB5B9AE823D3E3C3C3D414527101314181516160C41A8BFBAAE",
      INIT_5E => X"282827292B2D2A2727282A2C2E2E313E42413B3C8C9EC2D5D6CECDB48B353330",
      INIT_5F => X"82816830120A5BADBCD0EAE3C4A2AB8F932D25191C36301E2DC3A31E2C4B3021",
      INIT_60 => X"73767B787E817A9AC3B297C5AECDD3D2A2669DB9929D948F91908D89847F8081",
      INIT_61 => X"405A5B5F626C767574797A797E602C21365F992F232313151A4947201F1B5C7A",
      INIT_62 => X"BAA2ADAAAAB7825D6A77767A7679868386828387700D35697E623E13312F2027",
      INIT_63 => X"6C7885557C8BACC9AC8E666E66635A5E616D79828B8F8E89816C2F19327F74A7",
      INIT_64 => X"433C1811161415100E0D0B1770C2BDAF85575C585A5E64696C7077787776706A",
      INIT_65 => X"4242304F90A5D1DBDCD4CBB997412F334E8B649AA0B9C3C0B5AA71393D3C3C3E",
      INIT_66 => X"31222B202548411F1CBDC41B2C3B2A4329272726282A292626292A2C2D2E313D",
      INIT_67 => X"9669B3BA979D958D8D8E8D88847E8081807D7033150955C08F9DB59F97B7B578",
      INIT_68 => X"547E8F1B404A2722426D74421B104C7F7074777A82857D98C3AD9FCAB1CEDDCF",
      INIT_69 => X"8583878577122056614D29134729232B3456575D6369717372777B7C82645149",
      INIT_6A => X"5F6B7E8168464C848460271939906FA4B6A19A9BB2AA6F616B757376787F8883",
      INIT_6B => X"6C5759595B5D6368696E767675746D696B76995B6579B2D1B4795F7265625E60",
      INIT_6C => X"508D668396A9C4C5B99E5D3A3B3D3C3D462F0C13161312100E0D0C0A38B4BCA2",
      INIT_6D => X"2926262626282B2724292A2C2D30313A3F4028668FADD4DFDFD8D0BF9D4F2F31",
      INIT_6E => X"7D78723C1B074FD48BA4B99F96D0BA670F242C242B6C441D1896CF20302D2749",
      INIT_6F => X"6E72767F83887990BDA6A9D0B2C5E1C38D69B6B49A9C988C8B8D8A86827F807F",
      INIT_70 => X"2F53575C6369707171767B7F8366617A7896721057735D427290A7752513307A",
      INIT_71 => X"B1AB9496B89F66676B7272767A828A8386858885821C11333E31162F4F24282B",
      INIT_72 => X"66689E73555DABCCAC58637566636061616C6F4D270C11497F53261F459C71A1",
      INIT_73 => X"461E0A1213131416110E0A0B178DB691525A5A5A5C5D6365686D767574736E6B",
      INIT_74 => X"3E3E2C748FAFCBDEDEDBD7C5A25B312D4C947E6B8694B9BCBA87463C3A3B3D40",
      INIT_75 => X"212A2E2530983F1E1A91D6292F342C292927262626282B2724292A2B2F303035",
      INIT_76 => X"8568B2AE9B9C9B8F8E8B88847F817F7C79756F4C280A46D3B1D8F0D9D2D5B75B",
      INIT_77 => X"8BA04B2068939E839DB4C8A34E1D146C6E717982858A718AB099B3D6BAB7D6BA",
      INIT_78 => X"8788878A8A250B0F1A1612554B252A2A2C52595B6369726F70757B83846D5B92",
      INIT_79 => X"635C3B1004100E095E4824264C9F7991ADBB9DABBC92696A696F71777B848984",
      INIT_7A => X"42585A595C5D6363676B747674706F6146449A9455487DA37F486C7665636063",
      INIT_7B => X"449AA35C707498A29E62373C3A383E433F100C1010101418110B0B0B0B5AA57C",
      INIT_7C => X"2A292626242729262527292A2F2F2F323C3A367A90ACC4D7DDDED4C6A5622E2C",
      INIT_7D => X"7675705938143BC6A9AED7BFE5D9B159172A372C38AB461E20C7CB25292D2D1F",
      INIT_7E => X"73747B82848C73829F80AACDB9ABC4B97E66B2A99D999C938E8B88847F7F7C79",
      INIT_7F => X"2C4C565B62687070707479878C74558F959C2C347FAAC9D5CDD3CDC17A210D5C",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "NO_CHANGE",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => douta_array(7 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88\,
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena_array(0),
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => ena,
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized5\ is
  port (
    douta_array : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized5\ : entity is "blk_mem_gen_prim_wrapper_init";
end \blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized5\;

architecture STRUCTURE of \blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized5\ is
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute CLOCK_DOMAINS : string;
  attribute CLOCK_DOMAINS of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "COMMON";
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"ACC3B9C5B882646B696C6F777987878488908D8B8928130B0A0E28723F252B2A",
      INIT_01 => X"1721A0AD6547436A545B7175636363655E29030D1011140E283E23234EA58278",
      INIT_02 => X"300C0C1010110C11121112090839895C4B5157575A5C6363676B737673706E4C",
      INIT_03 => X"3A313E808EABC3D3DEDECCBEA2682B2A3797B5695F566574643C373C3B3B4243",
      INIT_04 => X"122E362A339B5F1E2DE5A0172C1E2D20292725262527292625282A2A2C2E2E32",
      INIT_05 => X"836AAFA29A9394928E898885807D79777473715C442533BFB0A7D9C1EBD7A559",
      INIT_06 => X"97971A3C92AFBFD0D7D1CBC9901F074975757F83858E7874916F72957EA6ADAD",
      INIT_07 => X"89908E8A7E2520221B224D782E272B2D2D2D4F5F61646F706F72798D916E5391",
      INIT_08 => X"4C181613161714141223291F4BA59463B0C5C8C7B86C656C68696E7576898585",
      INIT_09 => X"654E56565A5B6363676B7275727071451D2FA3B48450565F6559727160616468",
      INIT_0A => X"2C9AB489625F5C504F3B393C3C3C444322080C0C10160F1216110E0E121E5541",
      INIT_0B => X"292727272728282626292B2A2A2C2E33382E49828DB3D0D9D8DAD5BFA0722C29",
      INIT_0C => X"7172705341251FA7B5A4BED4E1D29A6214322E2A317B441B44845F1F29152B27",
      INIT_0D => X"76778283888F8370848B6D83AEAC96A1876EC49696908F8E8B8787847F7C7775",
      INIT_0E => X"2A2733595F636B6F6E727C8F9855518CA87E174A9CC0C8D6D6D1D0C69D310638",
      INIT_0F => X"92C1D3C7A55B696865696E72728B8587898E908A611C2C45454A6A6925282B2B",
      INIT_10 => X"214DA9BDAF67454B4471766E5E6063652D090F110F161A161B192821399FAC54",
      INIT_11 => X"1A090C0B0C12171817100F0E10141D61654954595B5C6561676E7475716F6F37",
      INIT_12 => X"392E518296BEDEDCD9DAD5C29A7831252698A9A9666E66775D393A3B3B3B4444",
      INIT_13 => X"142F2E28336529212B2D462429122C262C28292728282727262A2C2A2A2B2D35",
      INIT_14 => X"8B5480999692908C878585827E7C79757170724B35211089CAC4CFE6DEC89C6E",
      INIT_15 => X"A7641668A4C3CCD9DCE1D2C3A84F092E757983838A9386748D79929EA5A28BA2",
      INIT_16 => X"888F94903C192F555B61705F24292A2A2928243D61626B707075808F9B34528B",
      INIT_17 => X"1310111111151821241C20242796BC5D78BFC7C28E49616361697070708A8788",
      INIT_18 => X"5F48505C5C5F666268707775706C6227266EAFC4C19C7463707E716E61626554",
      INIT_19 => X"1F86B1B96E6D665541433D3A3B3A4341130B0E0F0A0917181212150D0E106A90",
      INIT_1A => X"2C2828272828272726292C2A2C2C2C34392E56859D9CC7E7E4E3D5C99C77321D",
      INIT_1B => X"7070734E2C1E0B65CBD3E3EBDCACB16E142C2C2934573021232C381F29112D22",
      INIT_1C => X"747A82848A9685758B89ACBEB89A93A6874F859B918F8A898884847F7D7B7975",
      INIT_1D => X"2927292A58636C7272778190901E558E954D1F77AECED3DCE2E4CEBEAB5F0822",
      INIT_1E => X"56ADBAB1743E4E5E5C68706D71898788878E938A211E2E5B5E65735424292929",
      INIT_1F => X"338EAFC0CDB4A1ABAA816C6A6065643D0E0A0E1F2E241A2B28231F261D7DC582",
      INIT_20 => X"0D0B10120E0E15161114110E1214758F5D474E5B5C616763697277746F6D6021",
      INIT_21 => X"382F5C848C5C7BD5EFECEBD5A87A30171B6EB9BD8B6D79604C4D3B3A3A3B443D",
      INIT_22 => X"142C2B2D3A533B2125322720280C2C242B2625272728272825282C2B2E2D2C32",
      INIT_23 => X"815490978D8B86888882827C7B7A77736E6F73552A1A0C3BC5D9E8E5C993CD66",
      INIT_24 => X"8D392A77B1CDD5E3E8E0D1BDAA670B1A72797F848B96866F896194B8A289A2A6",
      INIT_25 => X"868D9177161F2C585D667744252A2928252D2B2840646C7373777F9074135485",
      INIT_26 => X"07114264786F3D2D272320261B55C3A7377B9E8E5D3C3C595965706D75888786",
      INIT_27 => X"4A404E5A5D6369676B7476736E6F5E202D8BB2C2D1C8BAC1B07F66635D655E27",
      INIT_28 => X"1C51B4B9AA768F886750393A393C43350A0C12111418151515150F13120D5F8E",
      INIT_29 => X"292523262627282924262B2B2D2D2D303530607F7C77567EE9ECE4B5997A2E1B",
      INIT_2A => X"6D6F70582D1D191BB3DBE6DFAC8DE45F142E302D3C554124252A1C22280D2826",
      INIT_2B => X"71787D848E928967935281927E67ACA17E5790938C8F90908580817A7B797572",
      INIT_2C => X"262D2C2A2A606E7072777B8F55104F7C852D337CAFCAD4E7ECE2D2BAA3691318",
      INIT_2D => X"4B30494E5B3B315655616E6E79888584848C9163131C2B4859697636252A2A28",
      INIT_2E => X"2372B9C7D4CEC2BEA17C615F5D62561605287A98A2A77F39141918251F30B1BC",
      INIT_2F => X"0A0E120F141A18131719180F110C40953A3D4F5A61646A6B6C7474736E6D4323",
      INIT_30 => X"3430627C7AAE916CDBE69A5A647133261D37ADB6B9889DAD7A4F3839393C412C",
      INIT_31 => X"132E382C34544325232A1A21291326272A2622262427282924252B2B2B2D2D2F",
      INIT_32 => X"77578F9392847E80837F7D7A797773706D6F6E592F27280E90DCE9D28DA2EF5C",
      INIT_33 => X"7D2D3584AFCDD5E6E9E4CFB3966219176F787B8292908B629C789F9F866AB29C",
      INIT_34 => X"868C925112162F38566B6D2C272A2B292A292E29254E6F6F72777B8A38104975",
      INIT_35 => X"0C4A8F9D9EABB06C1E0D0F24241E93C38A29203C6B352B52535D6B6D7D868182",
      INIT_36 => X"3339515B64656B6E6E727274705A26292354BECAD5CCC3C299725B5E5E5E4C0A",
      INIT_37 => X"1D27A1B8BB9DA5C07A4B3A3A39393F250B0E0F0D0E1317131A2E502B12112B98",
      INIT_38 => X"2B2722252426272924242A2A2A2C2E2F3432627887C2D4A8D0D96A495164382C",
      INIT_39 => X"6C6E6D5B2D2F290A62D5E7B377CAF05A112D3D342C424422252F1C202912282A",
      INIT_3A => X"6B797A7F92948F629583BCE2A9AFB89B6A568F96814C303D737C777A7774726F",
      INIT_3B => X"282C2F2C2934697273777F8220113E6B80303283B4CCDAE5E1DED1B18B4D1C13",
      INIT_3C => X"B68B8483712F21495259666C7F827C808A8A8C3D1313383F5A6A5F21282C2C28",
      INIT_3D => X"2436B5CED3D5C6B88C5D4F5C5B5C3F051470989DA3ADB2B2711B1023261B6FC3",
      INIT_3E => X"080A0A0B0E14161A2763B1811E072B9A262E4F5C63686A71717071736D342529",
      INIT_3F => X"323662749BAEA6B2C8C89DC5955A392A1F1E88B8BCA8A5BC6B443A3C39383E21",
      INIT_40 => X"172B403E2D294229212C1C20250B292A2A2623242524272726252628292B2C2E",
      INIT_41 => X"5F6092831C05090A226A7E767673726E6A6B6D592D301C0C34B3C38485E5EF55",
      INIT_42 => X"78362588BFCBD8E0E1DDCCAF9131170E667A7B8088949E5D8A7F879C9FC3AC93",
      INIT_43 => X"87868B351B113A485B6D5321292C2D26282D2F2D2A285275727282731711355C",
      INIT_44 => X"1E7A969CA4B0B9ACAE77161E282046B5B5AAB583712E233F515664707D7F807E",
      INIT_45 => X"202C4F57626A6B6E7176756155262822282599D2DAD4CBAF83573D5E585B2E05",
      INIT_46 => X"231B6BB7B9A695A45443353D3A3B3E1E070C091120241F3351A1B5AC53082C9D",
      INIT_47 => X"292724242525272726252627292B2A302F395E79AE505AA7BDBE97A8B65F3A2D",
      INIT_48 => X"696A6C572C2D120D3E405F68B4EBE84715274345282E3828262E1D1B29102A2A",
      INIT_49 => X"67797E868B95A05F7D8194C7AFBFAA9455658A290E1A1414113B78787571716D",
      INIT_4A => X"2A2D2F312F292E72747887511314265C480D3489B9D9DADDE5E7C8B1A741171B",
      INIT_4B => X"BCB0A37978251C2D51585F6D777A757983918A2915093951526646242A2C2C24",
      INIT_4C => X"262270D8D6D7D6B58F4E2C5E56591F0522849CA2ADB6BFBEB0A35113282525A6",
      INIT_4D => X"070A0E14111328499DBDBDA47109249222254C5763686D6E73776A4B5F735A2E",
      INIT_4E => X"323B5D80B589A7ADACB39A3B796F372F2A204EB2B6A8978A4E3C303C3C393E1E",
      INIT_4F => X"1621404C3E2B3229272D1C1D28202A2B28272623252627282625262729292C2D",
      INIT_50 => X"5279510F16130F130D0D5E7A7370716D696968572E24100941424899D9F1D430",
      INIT_51 => X"1B112A87BCD0E0E0E4E3CBAEAD581A0F657C818C95979C686D8B8699ADC1A685",
      INIT_52 => X"818F7D1E1A0D3B52606B3825282D28242C2D2F31322E27527D7B863716162127",
      INIT_53 => X"2489A1AAB6BDBFBEB7A7721627251E7ABCB4947B7B242226514F5F6F7678797E",
      INIT_54 => X"2A1D485960686E6F7176674F5E74985E282B41D1DBD4D7C69D4A245A56561907",
      INIT_55 => X"2F2539A9B3A89F785835263D3B39401F09080F11120A2185BCBEB9A9780B1F89",
      INIT_56 => X"29272523242728282625262729292A302B365C83B9B9CEA8B6AFA3777577332C",
      INIT_57 => X"6A686659311B0E0841709DD5E3F4AE231E1C394F59312B2B232D171D27302A2D",
      INIT_58 => X"657C838F999C9F775A958F9EB7BE977057711B0F1112181813103277716F716E",
      INIT_59 => X"2D2D2F2F30313031777B842C1A151E191612388EC6D6DBE1E2BDC6AAAC631912",
      INIT_5A => X"BCB49D857921261F3D57606F7271757A828D531B1F0C395658662A25272B2325",
      INIT_5B => X"46272CAEE0D7CCC798461F55575115082C89A4B0BDC5CBC3C9AB751A2825234E",
      INIT_5C => X"0B0A0E110C1556AABDBCAFA5790F248C311A3A5D5D676D6F707967473B3D959B",
      INIT_5D => X"2F415788C0CBCCAEB2A7A4B99680312B30272B9CACA8A1745F30153D3A3A3F1D",
      INIT_5E => X"241B304A59482A2923281620263A2A2F2A282524252728282626262629282B2D",
      INIT_5F => X"654D0E15151317151517145F746F71706C68645C34180C074797DDE8E8F18825",
      INIT_60 => X"1D143A8B8DBED9D3886AA5AFAF6F141A697883919B9FA28D4D9DACB8C5B68866",
      INIT_61 => X"828C2C1E1D093B6453391E282A271F292C2D2F302F33322859827C2119131B17",
      INIT_62 => X"3189A9B6C1CBD4CEC6AE7F1D25262734BDB09D8F701E221F2655666E73757575",
      INIT_63 => X"3B1B2A5C61666C7278705C261B225BB37C282977DFD8C8B6933F1951574C0F0B",
      INIT_64 => X"2E2A248CA8AAA3795D2D0B343D3E3A170B0F0E110744A0C0C2BFB69E780D3490",
      INIT_65 => X"2C282425252729292726262629282A2C38916C8CC4D3C8AEA5A4A4C6B1812A2C",
      INIT_66 => X"6D68655E34150B0C50A2E7E5EAEE692B271C25404856382426232E3027452A30",
      INIT_67 => X"6E7883929C9E9FA14C94B1C3C7AC7859782E0F141816141115120D3F74717170",
      INIT_68 => X"2A2D2F3230332E2E397E661618111A1716103B695E7FD9BF69819DACB27A1019",
      INIT_69 => X"ACB69E9C612220251E3864666A76797681731B1F1C0D3F6E38151E2C2D231F2B",
      INIT_6A => X"A9442748CBD3C7A9933A164B55490A0E338AB0B9C0CCCECABFAF872420272825",
      INIT_6B => X"0A110E09115F9BCEC9C7C4A97A0B4F97501B224E62656A747A5E4C14121C2491",
      INIT_6C => X"4DB07D8FC4D4C7AFB0B3A4BBB880272C2B2E2477A6ABA67F5A2F0C24403E3113",
      INIT_6D => X"2A1F19333C534825242E623D285727302C282525252729292726262629282A29",
      INIT_6E => X"7A190E11131A1714170E0F236D7371716D67676030120B16569EDADFE5E74E2E",
      INIT_6F => X"0A0C3D566C53CFB38EAEA2A5B37E0F2B707A85949B9C9BA6567EA6C2BC9C6451",
      INIT_70 => X"7D43191E1D12324D1312252C291E232B2A2C2F3131302E312D653E1418131819",
      INIT_71 => X"348CB0B4B8C7C2BCBDAF87292029281F81C1A5A553261D20201D4A4742535E73",
      INIT_72 => X"671A20315D6469786650471D191A154EB17A25329DD1BCA8933B164452480A11",
      INIT_73 => X"2B2E2761A9A8A28257310F173D3B2716090D0E1E3F3E3FA7C7CDC7B27F0D74AC",
      INIT_74 => X"2B282626242729292726262628292B26699B7A91C3CEC8B3C7CBA8B6B7832528",
      INIT_75 => X"6C67685F2C0F101B5E9ED0D5E0D2342E2D24122738544E2A1B449634286D2D31",
      INIT_76 => X"737C87969A9A9AA05E65ACBFB07D51605F0616171E2532241418100D64747171",
      INIT_77 => X"292C2E2E2F2F33312D441A19171618170C10356F786CB9B57E4D7DABB67F145B",
      INIT_78 => X"4EBCA8A44C211409192224190E162159711D171D180E10070E18262A1F1C2729",
      INIT_79 => X"90A7333365D3ADAD8D3F183C50470D13368CA8ABB0BEC1BDB7AD862526292B29",
      INIT_7A => X"08071B6E7D230F56C3C7A87E79187BAB661B1F184F626877415253291F251F1C",
      INIT_7B => X"7AB57391C1C7D0AEAFBAB3B9B88939242D2B274FAAA1957E5334101331362319",
      INIT_7C => X"2E2817242E58522C202EAF322080532F2A2827272426292927272626272A2923",
      INIT_7D => X"460C162940568A5A181C120A5276706E6B656457230F141968A4CBD7E7B42A31",
      INIT_7E => X"151246564A98B8ABAC696AA6B67E1F5F7B7D85919D9799A5624794A49352486C",
      INIT_7F => X"3E1A1920190F110F131E252D14242A27292E2D3234353335302613121A191B15",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "NO_CHANGE",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => douta_array(7 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88\,
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena_array(0),
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => ena,
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized6\ is
  port (
    douta_array : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized6\ : entity is "blk_mem_gen_prim_wrapper_init";
end \blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized6\;

architecture STRUCTURE of \blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized6\ is
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute CLOCK_DOMAINS : string;
  attribute CLOCK_DOMAINS of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "COMMON";
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"378AA1A7BCBDC1BEBBA3802A202C292B24A2B7AB3E1C140D141F1C16110E1326",
      INIT_01 => X"2E1E1E1A2C5E6752276B692B242424195DAD532B44B8B3AD8C40172953410D12",
      INIT_02 => X"2C2B2640A2A08E74503A1110152726180B0B45A879828289B3B3600D5230233A",
      INIT_03 => X"2B29272727282A2B292C29272628292478AA7193BFC3D79E5B61A8BBB88D992D",
      INIT_04 => X"6B615B58220C171F78B2C8E3E9932C2E2F211C272A41513820258C3327693B31",
      INIT_05 => X"7E7B88959A9798AC6C20727A58444C702E0B1E52697F9E91452D130E3F72706E",
      INIT_06 => X"2A2E4D48633B312F2E2E170F1A151811130F4D69769CB6B3AAA595AABE7E27A0",
      INIT_07 => X"0B5ACBAA391815131E1B210E0F11151E1B1E1A1E1711121013201E181D242328",
      INIT_08 => X"33A77A25397DBEAA954D16173C4E0C133F819EB1C8C5BEC0C1A67C2A1922291E",
      INIT_09 => X"0C0755A69FC3D3BBBCA6732A33351D2B292221161B596A2F34666F362832301B",
      INIT_0A => X"6EAC6C97B7CADBBBA9A2C2C3B3897A312D2D2E2A9DA8876F51431116181F231D",
      INIT_0B => X"322C252A25283D3D2121853425602B322B29272727282A2A282A2A2927282B26",
      INIT_0C => X"19133063788996AB763D160C2B706F6D6A605B531C0D1C2879AFD6DCF0672936",
      INIT_0D => X"1B11537C9FA2B5B28EB4BEB9BD8A60C7717F8894979A9AAE5C0F2433363B4881",
      INIT_0E => X"16191B1E171315121621151421222226265749263A6232302B2C1A0B1A121513",
      INIT_0F => X"41789DC9D8E5D5D7C8B080241B19181A1823C4B2281A151E1D1D1B091010131B",
      INIT_10 => X"281F20191531531B44686D3A343B3B2929839128334BA5BF81471F171D460D18",
      INIT_11 => X"23282C244FA888705E3B0F121C22231A0E065DAAA6D4DAC1B9A9B8BE5E331926",
      INIT_12 => X"2B2927272729292927272B2B28282B255EB26B96B2C8D8B7C0B9B7C8AF889A43",
      INIT_13 => X"6B635E481A111E388BAED9DDE7502933253E532F33252836251B909D24642833",
      INIT_14 => X"5F818690989B9AA2381E1734343862840E1F43657D8B99B4844D1F09206D6D6A",
      INIT_15 => X"3F6B34171E624A312E281D0C1A1315161213588CA795B8B5B2B8BCC6B59A7BBD",
      INIT_16 => X"230F91A62214221F192111121C19121B22161A20161515141A20151E24222620",
      INIT_17 => X"3472A53C2A3C73CE5B1D161A182C0F18407B94A4D1EAE6E2D2C084271E21201E",
      INIT_18 => X"21025DB4C29270B7C1A6C5D193321B2A2A1F1D1D181C1D154D6F703E43484F33",
      INIT_19 => X"4CAF7190AEC3D1BBC0B8B7C6AA83AA4A1B2E2825225B7685652514141D212031",
      INIT_1A => X"37697A5C4B32242E2826A06D236929352B2927272829292927282D2C29282A27",
      INIT_1B => X"0A284C658491A2AE82582C091B696A696D665B3F20121E4794B0DBE4D4353029",
      INIT_1C => X"131E5BA5AB97B8BACCCACECCB0978EB0457A868E99989C8020342A27344C8177",
      INIT_1D => X"27171921171616171C1D1C2327232627646A391E264D6A2F3229211017161617",
      INIT_1E => X"4D726C4365CAE2CA7B857B281F292629271431521E19241E1C1C0E11171A1219",
      INIT_1F => X"2B201B1B171850455376794B536467434A7AAD57223B4CB041130C1219171015",
      INIT_20 => X"192B2927212A41523D1C0F1821231A50530260B7BE5F53ABCAB17E70953D1E2A",
      INIT_21 => X"2B2927272829292827292F2C2A282A293BA3738AABC9BFB3C2BBACBCA87CA447",
      INIT_22 => X"6D68553C24111F579EB2E3DB902829205B685A605C3A292D263EA91D256A2935",
      INIT_23 => X"2B6D888C9996A1561E424C49556E9264092D4C668A93A3A27E5C350D1662696A",
      INIT_24 => X"7D6A49272D467A33332D231214171516182963B8C49CB9B8CFD8E1C9AC8EABAD",
      INIT_25 => X"21372C181C25321E211514140E1814152A191720161717181E1B202328252339",
      INIT_26 => X"69849E6A23333E6027180F0A12140F16615C665E47A8D5A341615930191F2625",
      INIT_27 => X"90155FBDBD8B88AEC3B17963874920292A221A16154272765A7A835B64847D5C",
      INIT_28 => X"329E7586A7C6BDBAB8BBA7B1A779A4411F1F2829282424251E1C13192523195E",
      INIT_29 => X"5D321F365A382A312247911E275C27332B29272728292927272B312D2B282B2B",
      INIT_2A => X"0C344B688D97A59E7859380F125C6A6C6D69513D23142165A7B5EAA93F251725",
      INIT_2B => X"14276DBED695BDB2CDD6E2C4A58DB9A61B5C8A8A95999E37234B6A8D848A9952",
      INIT_2C => X"2E1D171E141716191D1B2025262521518D70512E30517D43312F221111151615",
      INIT_2D => X"68559AD09797CC8A869C523738545144496A681C1C28531C1F14222411121A15",
      INIT_2E => X"2A201C1414788A85607F8C66789C9375838D8273272540271316140E0C1A0D1B",
      INIT_2F => X"291D1E2425292A221E1C1E161E1E1B5CB8365DC1CACFBFBFB6A9BCB1934F222D",
      INIT_30 => X"2B292728292A2A28282E322F2B2A2B2B30A48082A3BDC3B698A0B0AEA376A734",
      INIT_31 => X"6D6A4F3A201B2065A8BCCF602914163F3617283B4B3A23312431602525352532",
      INIT_32 => X"19478989909B8E2524536B918E92A2460F394F71929FADA773553E120F5A6A6A",
      INIT_33 => X"A3725B3E466682572F2F2413111518171F206CBFC990C3AFCAD7E5C5A192AD94",
      INIT_34 => X"91775F1C1A19551A19153739230C1E182A23181E141616191B1D21272323246A",
      INIT_35 => X"8EA1717329183E2E171A0F1716180C1F626DB0B5AF92C588D8D5872E7BB5908C",
      INIT_36 => X"BE4A5EB6C7CCD1CBB3ACC6BFB051222F2C1F1B16157ED87F5D8797718CACAE88",
      INIT_37 => X"2BA6947AA1C1B58A8680A9B19D7293222D2C16141A2B2B20241D1B212622145B",
      INIT_38 => X"2D2E517249451C2D2A1C59272B1223342A292828292A2B28292F33302C2B2B2B",
      INIT_39 => X"13385276949FA7A57F5447150F596A676C6C4B3524201D5FC2B6643D1A172764",
      INIT_3A => X"602361BAD19AC8B5C4E2E4C8A189BA881A3586888E977A1A2154638D94959A42",
      INIT_3B => X"1B26191E1515151A1B20262323232B7FB47C6F5055839265323029181416171B",
      INIT_3C => X"60835B318F93B793796F8C334916324E3F4C6A1C1B1719281C134F655B331D18",
      INIT_3D => X"29231A171888716F608DA2829AB8C1A0A1AA696F2E15352A191B1517180F0F1F",
      INIT_3E => X"232B191211262B25211D1C6D7C4E1050B44960B1D0D4DBC8B09EC4C6BA52212A",
      INIT_3F => X"2B292828292A2B292A2F34322C2C2A2C2296A8739EC6B59EC7A986B698707C1D",
      INIT_40 => X"6B6846362A1C1952A566542D18232B4D2030355A514E222A32263A2726182131",
      INIT_41 => X"19287A8A8C8F3A1C21576C8A909096341436537E9EAFB2A97954491A0A536A65",
      INIT_42 => X"AD8E8C7069979976302F281B1418181B64285CB8CE96CCB9BDE2E6C7A189C479",
      INIT_43 => X"C5CF5A1F1F252A23181F718E9D8540141C251E1F171816181C20252323203197",
      INIT_44 => X"A5A1695D3F1A23261B1A1719112B2A26678D5265AC9BB5A7513278465EACDEA2",
      INIT_45 => X"C97059B0CFCFD0C2AA9CB3CBC557222B2A1F181621A9C9716093AA90B0C4C7B1",
      INIT_46 => X"276D8270A1C4C8C7C9C69FB49279791F292A231F0F1C3427241B257B72A28148",
      INIT_47 => X"182D262F4B5C59222E27211F271A1E32292725272A2B29292C3231322C2C2B2B",
      INIT_48 => X"133A5B8AACB6BDAF725148190A526B6D695E3A451E1C1D325450431D1F262534",
      INIT_49 => X"253058ABCA75A379B7D0D9C29E8DC5561B1F7585926D17201E516C92928F932C",
      INIT_4A => X"1D1F1C1E161616181C22242320203B9CB2A4A4887CA1AB86342E291D1315221B",
      INIT_4B => X"6E919CBFADA2B6ABA59F8B6E6F6BE9B3C6804629183D531D162F8EA0ACA66D16",
      INIT_4C => X"2B1F1B0C2DA486655F8FACAABBC1CFB8959179624D1B161F231C151416578147",
      INIT_4D => X"292D261F1410262A251B31BAC989759FC68466AED5D7CFB6AAA5A6C9C55D222B",
      INIT_4E => X"292826272929292B2D3131302C2B2B2C2C2A356398BEC6BEBEBEAABC938B661E",
      INIT_4F => X"654E5326162220293F2C281E29222C3C1E322E284D5560282F27161E261B1C33",
      INIT_50 => X"1F1C619885301B22214F778F8E8F8C231C3B7A9ABDBCCDBA885F461B09506C67",
      INIT_51 => X"AFB6B8A191A6B790392C2A1E151529262D3654A4C17D6497C3B9CEBC9A8DBE3A",
      INIT_52 => X"9B373D2F105C54131744A3AEB4B89D281A1C1C1F1616171A1E2524221F20499C",
      INIT_53 => X"907D836C52281B1A1D18141F147B9C556998A1ADB9A7B2ADB0AD9C8184455B9D",
      INIT_54 => X"BB8968A6D2D8D5B2A3ABAEC8C364262A2B21190E399397635885A7B1CAC1C7B2",
      INIT_55 => X"2B282F5A96B7C3C3C1B7ADB87FB3751B26292724180F242C2519307A71976872",
      INIT_56 => X"2241403658645028332B1B22261A1B352927272829282A2D2F32312F2C2A2C2D",
      INIT_57 => X"194C819FC6CEE7CDA16B451F084E6D67656239161E25242F332334263120464F",
      INIT_58 => X"2E1E479BAC8F6DB9C9ABBDB49B827D2824185E8D471C1D1F254B729088888B1E",
      INIT_59 => X"131D1E2117181A1D202523221E1F5293A6BFC3B4A4A7BA92422B2D1F15171F30",
      INIT_5A => X"6FA5ADB9C1A9B6B4B8A7A68C814A1D68771B3E2D136D4619195AAFBEC1C0BD4A",
      INIT_5B => X"282119104AB6915A52759BBDC4C3C1A68F74817C562C21171B1B1A4A4699AA60",
      INIT_5C => X"232A292220111A2B26173FB1B797616AB27A69A6D0DFD3A5AEBCA5CEC0612729",
      INIT_5D => X"2927272A2A292C303233322F2C292B2B2C3032538DACC0CAB8AEB1AE847D5921",
      INIT_5E => X"6A4E161519202A33302C3E263325625729444845607C4F1D332F2525261B1E35",
      INIT_5F => X"2418595A191D1A1F254869857C8776131B495F7EABC7CBA088644721074D6D67",
      INIT_60 => X"9BC0C7BEB4A7B4914D2C2D20141623635138318D908EA1BCB8A2B2AD9F763220",
      INIT_61 => X"51233A2C11553216186EB7CDD2CCC96B0E1E202118181B1E222423211E205485",
      INIT_62 => X"987573865D2C29191E181C444EACB25F74A8BECAC4A9B5AFC5B9AE9A80502440",
      INIT_63 => X"AF8269A7CCE6C999BBC39BCCBC542329251F180F5CA879584D648BB4AECACB96",
      INIT_64 => X"2C2C2D4D7CA0B8C4B6AFB2A17E322927222D2B2421131328261742B6BB8B6270",
      INIT_65 => X"3943474F6380591931322923261E24352927272B2C2B2E323434332F2C292A2A",
      INIT_66 => X"203B525480A88A656C5C4921084D6B67621A16180E172B2E342C3326322A594C",
      INIT_67 => X"856C1A7F7B8EC4C3AE9EB2ABA06E15211F1E3C241B1B1C2223496974797E4008",
      INIT_68 => X"0E1D211F17181A1C232423201C234D788EBAC4C3BDA6A98D512F2C2013123F99",
      INIT_69 => X"74A6BEC1C5A4B3A6C3CAB4A17E4E2D644A4B2B340E2F200C147EBDD6E0DECF7E",
      INIT_6A => X"251D150D6A88745F48547691A4DADC8B966D5E7E62312E211C1419152FB3AE5B",
      INIT_6B => X"222828281F1A13252715448E7C856962B2956AA5C1E1B98E9FAC95C6B7481F2B",
      INIT_6C => X"2A27292A2C2C2F333432312D2B292A2A292D2C4A6490ACBAC7C2AC97611C1826",
      INIT_6D => X"43161F1F1512232D2C222F2D312832484A5E545E6D754C2732322C2323262D33",
      INIT_6E => X"21211A1523211B20224C6F777C4C110D1D49744A709D6E73916748210950696D",
      INIT_6F => X"85B0BDC4C0A397814C312C211311548B765A157B7B92BCC8AC9FB4AC9C6B2423",
      INIT_70 => X"8179384912241B0E1786BBD3E2E9D385121E211B1516191A232422201A264570",
      INIT_71 => X"705A5166603A2421151F191243B0B06079ABC3CCC89DB7A9BEC6B59D665344AF",
      INIT_72 => X"B18D6FA2B7D0AF87697C8DC9B2431B2B261D0F0F7DB07359464A6075A1D7DD92",
      INIT_73 => X"29342E524A769BB3D3CEA08C4F1D23262521222222210F1C281461D5D47E706A",
      INIT_74 => X"618173728377372E37352F26213238322A2729292B2C303333302D2B2B292B2A",
      INIT_75 => X"225148415FA360538A6D49230B55686A2E151F1316131E312C2A25323536437C",
      INIT_76 => X"5A461A7C8C4E7A72539CB8AE9564211D271F1C1A1B1B1921213F7B763E0E1415",
      INIT_77 => X"142122191516191C2223221F1A26426F8BAFBDC7C1A4816F42332B241311567F",
      INIT_78 => X"6EA0CED9CB9EA5A0CCD2B2A45C507C84947D916117140D07238DB9CFE0E5D089",
      INIT_79 => X"261B11169E7E655E464451637091CAA64F6A6A5A5C3C231E1B1919204092C25C",
      INIT_7A => X"354132241E17131729184F7B78707364999566A5B9C6C0A67968A6BEAC3C1128",
      INIT_7B => X"29272A2B2B2B3033312F2C2A2A29292933261E633F5579A2B7BB955E3B201B28",
      INIT_7C => X"1E1E20201D17252C2727272C3B5A61954A658C9C8F692B2D38392E2A213B3E30",
      INIT_7D => X"22271D1B1F241E231F1E3B2B1B1618102F3C356252965852324E4C270D596E46",
      INIT_7E => X"9EBBC8CFC6A972633D332B2713124D593F2C1D72A9597E948EBEBFB08F5F201E",
      INIT_7F => X"4C544B201B18120B2B93C0D5E6E0C4901723261B17171B202021211E1B224172",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "NO_CHANGE",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => douta_array(7 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88\,
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena_array(0),
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => ena,
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized7\ is
  port (
    douta_array : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized7\ : entity is "blk_mem_gen_prim_wrapper_init";
end \blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized7\;

architecture STRUCTURE of \blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized7\ is
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute CLOCK_DOMAINS : string;
  attribute CLOCK_DOMAINS of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "COMMON";
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"8EAF9B5F564366827E1A15546A7CD26A6AAAC9D9B9A6C1B1C0CEAEA94C347E5F",
      INIT_01 => X"6E876EA1B3B6BEB8A794ADBB9D330424251B132977A25D68434250566966B9A7",
      INIT_02 => X"342E3175543E4F88ADAA823E3C1E201E57BBB7B4AF52261A291578B6BF828172",
      INIT_03 => X"3C44626A6C4F2B2B3F382728215948312A262B2F2E2B30332F2F2C2C2A2A282D",
      INIT_04 => X"2F3B57804E87617A39424F26115D6F25211F2023251B1D3029242C3431537B95",
      INIT_05 => X"19171864A582ADBBACC1BCAC805B252222251F1B1F23212224171C1916181F12",
      INIT_06 => X"19222517141B20242724211E1C22397BBCC3DEDACFBB73593636292816164436",
      INIT_07 => X"679BBED6B8A5D5A3BACDAE97431E2B2C2B26221A1715100A45A6BFD4E8E4C591",
      INIT_08 => X"281A0C3EBF715A6D39404468B5B0B9B87D428864575866354F24127F6573BC68",
      INIT_09 => X"4855393D3F528234221866AA8188717B3C3C77A0B2B5BAAFA99B9DB18C938B1D",
      INIT_0A => X"2928282D2D2D2C2E2E2F2E2A2A292C323428388077533E4F77733A41511E221F",
      INIT_0B => X"18202523110C20252523323B2D488170443D513E7950373B3E3028261F90372B",
      INIT_0C => X"22241E171F21252221191517171C2211284E76835B8A6685804B4C27165F601B",
      INIT_0D => X"B8D9E7DCD5D27B5531362A2713132F5132180F559880A3B0B0BEB5A4775C2421",
      INIT_0E => X"26201B1916130F0B559DBBDBDFE0CF92152024161315241E1E271F1B1A1F368E",
      INIT_0F => X"86578B675C52636660211666595EB1686196B7CAB75E8680B3BCA4923E1C2125",
      INIT_10 => X"2A306CA4B9B9ADADCCB894A6915C69222619122F4C755764363B66656DA6B8BF",
      INIT_11 => X"32234290907F5C49473F4A616420211E3B68B192407D4A3E1B177D8AA5836E6D",
      INIT_12 => X"8D746D5F9F5439303B342A251D9A933C2B282A2C2D2D2B2C2D2C2D2A29282B2C",
      INIT_13 => X"3B626573699679737667562623615A1B1C16101752785723232234402A3E6E61",
      INIT_14 => X"2D1A0E4991798499B1BFB1996E60242122251C14201F2224201D161A1A1D2010",
      INIT_15 => X"1E1D23161016232C4F231F191A203A93BBC6E0E7E3D392502C32292610151B32",
      INIT_16 => X"5E93B2BDAF766484A6B19C8D3A1D272725221C1814120D0E2C4170CCD1CFB8A5",
      INIT_17 => X"2214121C164D4E602F43946246AAAFC2AB94AE6A5A518EC16F2710494641B872",
      INIT_18 => X"3560CFD07AB27D3E141C8EB099947956492C67A5C0B9ABA0918587A696264421",
      INIT_19 => X"2D282D2D2C2D2A2B2B2A2B2B28272B313722328DA09B76675B4B736C661C1E1F",
      INIT_1A => X"1D295D687576542223202C4539388090DFC8BBBAD088302037332B251C84DD46",
      INIT_1B => X"22261D131E201F26211F1A1B1D21201544725F7378A496857388642722584F1A",
      INIT_1C => X"CFB7D8EAD2C8A15425312528121818121C1810378A87829EB6C0B08E64652724",
      INIT_1D => X"24221C1813100C0C1E2233AEC589506C261A241A0D1C2731641D1F1A1B203DA7",
      INIT_1E => X"C5BEC96E525FACB34E2F0D2B4C21AC825C8FAEB39EA289A49BA696872E1F2426",
      INIT_1F => X"432B61A2C3BC8D8DA38364A6965349231E13131319304E622451AC736FBBADC1",
      INIT_20 => X"351D1D83ACA88E7D7E7A896565191C20304C64C1AFB47F38122187AA95958474",
      INIT_21 => X"FDFBFCFBEFCC3827372C2A261C7EA3392D282E2D2C2C28292A292A2C28272A33",
      INIT_22 => X"3F7F858382AEA2B0A69B682A224B3F1716539C955F583523221F234C4444C0D9",
      INIT_23 => X"1A161221789DA5BBC3BFAC80666F292922271F151721212525211D1B1C201D1B",
      INIT_24 => X"1C19251F0F20342357231D1C1C1D42B8C1B2CFDEB8D1AC612033242817171B17",
      INIT_25 => X"598EABA999A9B7B09D9A90781F24202425211D19130E0B0B5468499BBA551921",
      INIT_26 => X"1816161615385568275BAE96A3BEB1BDC7CDD0714F6AAA5128321213450D7B8F",
      INIT_27 => X"2C591275BF79243712238C90AB8E8A8A3C275597C2C37481E0AB5DA6969E4B2C",
      INIT_28 => X"2C292E2D2C2B28282828292A272729302F1E1C81B1B5AC8B8DA092656A1B1B22",
      INIT_29 => X"1864462A81FB6234221F23492D62E1F1F8FBFCF7EED6583E412F26261B89402C",
      INIT_2A => X"25262016101C211E28221E1A1B15101B4A8CAD8484AF97B7C09F5F2C3D453918",
      INIT_2B => X"7690C2D4BDDDC86C1F3425271A1616151718161660A3C5D3D1B79C69787B292F",
      INIT_2C => X"25201E19130D0A13757E709EB57A7D5A0E182424121E371F70331A1C20205197",
      INIT_2D => X"C5CAD7755665991A2C3814160C0F3C87588DA3989DAFB8968F988A561A272023",
      INIT_2E => X"70124C87C0C49E86968597B0948938311515111D18355B714A67B1B9BBC4AFB8",
      INIT_2F => X"31282581B2C0BDA9A0B6A0726C191D222A5D2A299A361C3F13228BA78FA49265",
      INIT_30 => X"F3F9F9F7F8D7663E553B23281A7C45302A2A2C2C2B2A28272728272727272B32",
      INIT_31 => X"4794BC799CBC89C2C29C5E2D4F2F221C2061D5C2B6A05036212126321470B0D8",
      INIT_32 => X"161216144496C5D9D2A7845595802A342E2620181412151425231E1F1D0B0719",
      INIT_33 => X"2B132326141D293755251E18303B6566407DC7CC8995CE7A1D2C25281916161C",
      INIT_34 => X"5A8B9D7C738C9B864DA28C2A1F232324241F1D1A130B0A1B2C273C9EBB5B76B5",
      INIT_35 => X"1413151514436E72756DB5CBD0CBAEB5C1D6D677605B4215293A141B150D0E41",
      INIT_36 => X"2550779A5C342C4216160E0C729996BB3F144470B8C5B7A5AEA49CB57C172D31",
      INIT_37 => X"292B2A2B2A2928272726252526272B2A26211F7BB3BEBCCAB8C0A07A64141D20",
      INIT_38 => X"1C53B3C9B825632B1B20263727689684D8F7CE9DBAE07143673625281B62442B",
      INIT_39 => X"332920191B1110121E241E231B1312244991A46EB0C9979DC7935C34642F1B1D",
      INIT_3A => X"509ABDC48A3F9391193225281A15191316160F0E2381B6CCBB8A6764AD7C2B35",
      INIT_3B => X"201D1A19130B0A1F324A5E94AC54324C51112026141F1F6244201D163F51747A",
      INIT_3C => X"BDD7CB6E6C7084854146121111150F235684A977A5F3F2F393B0891A1F212522",
      INIT_3D => X"8317475AA5BFC2B5AA9EA3AE5A0632341213172612466A848E69B0D5CFCBAEB8",
      INIT_3E => X"2B271D76C0BEC6C6C6D2A78162191C201F5A7A8159747F421C151A23124F9B61",
      INIT_3F => X"CEF2CFDAD0BD85416F4224291B4C422E2A2B2A2B2A2828282725272624262B32",
      INIT_40 => X"4290A24482965B92B7904D30772822152B4D37B9512667221A1D2876336FD8CB",
      INIT_41 => X"161216131360A6ABA16C4A8BB4732B2E2F2B21181B1B1C171A231B2111121625",
      INIT_42 => X"2E151E24181D28869A52151648408A958BB5C0C2A84D79961A4828271F111714",
      INIT_43 => X"547EB7AC7EB6DDAC93CB7C1C1F2628221E1E1918130B092F40657A98AC784741",
      INIT_44 => X"1215151A124A7C8FA770ACCAD4D4B2BBB7D4CC8479903F432E481316140E0E26",
      INIT_45 => X"1C696A697756393221142121201962AC6718494E93BBBEB29D9FA69E66573D37",
      INIT_46 => X"2C2A2A2B2A28282827262B2A23242A2B282A1D6CBFC6C3CBCBCD96815F181721",
      INIT_47 => X"2F401F7DB456641E171C2A6D357FE7E2CEEFE1F9E9B994576E4725281E36332E",
      INIT_48 => X"312E21191A1C201A13251A1F0E1719223B8796663B4D5EA39D813E377C272613",
      INIT_49 => X"ADBDBCCDAF8595A12E842626201317171512141514378288774357A9BA5E292C",
      INIT_4A => X"1B1C1919140A04478480959CB3906C412D17192119164B84B54D15144A4D91B6",
      INIT_4B => X"B6ABBB9D82A28A8F86791514160F0C284F71AEB78AA8CCA2A0CC6D1920242727",
      INIT_4C => X"5B184C477DB3B6B7AEAFAA8C5556333215131216115196A09E7B9AC9D9C9ADD6",
      INIT_4D => X"2F2A1B61BFC7BFC8CCBF8E7C5A181D1E1C5077715E67788231121F1F211D2060",
      INIT_4E => X"D3E7D4B8D1C8A65B6A5225262123242F2A2A2B2A2A292B292926282623252628",
      INIT_4F => X"39797979555F83A58A7541376E252919326182516E5D6F181D1E2E5D3C8F98A2",
      INIT_50 => X"14131413181F3C4C403689BEBD442B2F35302119201E201D1B221F18111F181F",
      INIT_51 => X"4E1C191D1B164D7A90441613406096CFC5BFBBCDBBACBEA82C8F272720141718",
      INIT_52 => X"48709EB89F949E8CAFBA5A15202324281B1B1819150C075CB2A79B9AB4AC8E70",
      INIT_53 => X"110F12161252ACB0988391C3D0B2B1C69F9FA2AC8E9757575544121514100F27",
      INIT_54 => X"212E3A382C35425929131E201F201624341B4C4665A7BCB8B6B0AF859095673E",
      INIT_55 => X"292A2C2A29292C2A292627252325252A30271E50BDCDC4BEC8BC897F5A181F1C",
      INIT_56 => X"3B4C857A74896119231F2E5248975B7BD3E4C47A8DC9BE526262282622181B31",
      INIT_57 => X"3633211C2221211F1C1C2114141E1F1B3763636B878C92927B6A40405D24291F",
      INIT_58 => X"D5BDC2CECDC5D7AB3482232720141717141316111B211120265DB4C6AE313032",
      INIT_59 => X"1E1A1616140B096BBDB89698ACC5B3AC6F1F1A1A1C17475065361A13317397D7",
      INIT_5A => X"8FAD929A8488161213101016130E1225436D8FB4AD978F8FB6A445161F222226",
      INIT_5B => X"131B4A534C93BDBCBEB4AC6C6778834B121014151148AEBCA58E8BB5BDA88C8F",
      INIT_5C => X"2B242045BBD2CFBCC4C187895B161F19222014151C1309151C1520211F1E221B",
      INIT_5D => X"D6E3D08F7ACBCF4F586D2F2622171A322A2B2C2A27282C2A272627252324252C",
      INIT_5E => X"344F5F65919C98836D5F3849532528205D5A639AAA8B331C201D263C57A379A9",
      INIT_5F => X"141216101A31272D4D9FC1CB8C2C33333535221E20201F22161B1E171816333F",
      INIT_60 => X"841D19151C154E263E201C142A8095D4DCB7C8CDDBDBDEAA58861C2523151616",
      INIT_61 => X"415F84A8B7BAAFB3B49033171C2123261F181415120A0776BDBE9398A2C5CFC9",
      INIT_62 => X"17121315103C9EC4B7A283A7ABAD757BA4B6937A757F2824201C1414130C1321",
      INIT_63 => X"1C21262322211C1518141F2320201E1C181C44683E70A8C1C8BDA34303104937",
      INIT_64 => X"2B2C2C2A27272B2A262627262523242C28241D3EB8D1D7C6C9C68B9358132018",
      INIT_65 => X"7DD0B443050915191A1D202B62BBBCE2E2DEEACEC4E2D14F556B3625241E1B30",
      INIT_66 => X"343524191D1C1F241E1C181C231A407C364D57617F959A85605A3D3D43252924",
      INIT_67 => X"E0B4C7BEE6E5DDA27F881B2423151615131216131740626A9AC3BFD5682F3234",
      INIT_68 => X"2117131612110978C0D192A4A5B1D1CB97161A131A134B351D17181626778BCD",
      INIT_69 => X"C4AC9C788A6D2823201A1E14120C121E414F80A0B5C5BEBDAA7A241619202426",
      INIT_6A => X"251F357648457FB4BCBA91281B1D0B10140E12140F398EC4B3A6809A9FB3BDB0",
      INIT_6B => X"28261E33B0D1DAD2D2CB939E51121F1C1824222420211F1E16162024211E191E",
      INIT_6C => X"D2E2EBECDAE9DA5258613C2228211B2D2B2B2C2A26262A2A252627262522252B",
      INIT_6D => X"35613B2F3F5353715A5E3D362F22292C30260B152326241A1B20232E64CCC7E3",
      INIT_6E => X"13121415155094ACBCC4C5CA453031333533281D1E284E27191B1A1B30262023",
      INIT_6F => X"98111D1814152E4D531C1916206C83D1E3B5D4C5E7E9D5989E791F2424161414",
      INIT_70 => X"3F427692ABBDC9B9A65E1513181F24242216111713130970C4BD86BFB7A4D6CE",
      INIT_71 => X"1A1614140E357ABC89648288A1BAD5DFBF8CA683985E211F1F1B2915110F121C",
      INIT_72 => X"1B262120221F1A1A1813202322191E1F2222247A5A384F8DAAA95C161E1C2013",
      INIT_73 => X"2A2A2B2A2626292A252627262522272A2A26221FA5D5DCD4D6CF98A847141C22",
      INIT_74 => X"1F18202B232425241D21264259CCDAEFD5E3EDF3EFF3D455515B452129251B30",
      INIT_75 => X"36302C51B89985B594221C1C2B360E3B42604764A6AE7A2C615C343628202A31",
      INIT_76 => X"E39CC0BDE5E8CB8EB1671B25261713141313121A134394B2B9C7CCB42D333434",
      INIT_77 => X"2117101815130862B0B7649095A2D6D18D0C1B1B10171E2F391F181417707ECF",
      INIT_78 => X"868CB18BAC602023231F2412120E111A3A346483A1C2D1B38A410D151A1F2222",
      INIT_79 => X"26231F786F3F294E766521131A1B1412100D1416102B5DAE732286A6A47F9AAF",
      INIT_7A => X"2B25231195D7DFD3D1CB96AC3C161B272218231F1E201F1F1B1422221F191C27",
      INIT_7B => X"CFE3F2F9F3EEC95B4F584D2327281D3229292A2A27272828262627252523292C",
      INIT_7C => X"2D5A5D71E7F2B45781583B2025222A2E29202A22222522181C1F275554C6E5E3",
      INIT_7D => X"1414131E134394B9BEC4D39D2B36353436313353311C2F193A341A201B51213E",
      INIT_7E => X"8B07172010161D1F201B181412717BC1DE87859AE7DFC988AD50182427171315",
      INIT_7F => X"303A487894BCD3B47A260F181B2021221F181117191E115DB2AA7A586EA2BDC9",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "NO_CHANGE",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => douta_array(7 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88\,
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena_array(0),
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => ena,
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized8\ is
  port (
    douta_array : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized8\ : entity is "blk_mem_gen_prim_wrapper_init";
end \blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized8\;

architecture STRUCTURE of \blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized8\ is
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute CLOCK_DOMAINS : string;
  attribute CLOCK_DOMAINS of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "COMMON";
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"1614141712284BA07D2E84A0A971AABCC6B0AF8F9B5F22211F1A1611110D151B",
      INIT_01 => X"27211F21211F1B18141824211E1E1B28292321638F4A2B1F2B1A171B1D201719",
      INIT_02 => X"292B2B29292827272726272626252A2A2A27221272D4DDD3CCC298AC2D171F26",
      INIT_03 => X"2B2125222625221F1C1F2C5F5BBEE5E4D8DBEEFCF4E7C3625E52552827281E2D",
      INIT_04 => X"363335357F7D79B85B2918221F3A59332A4B5D67B4C697747E50311C23222A30",
      INIT_05 => X"CFA685B1DFD5BF85AC3B1E252817131515151522123F87B9BACAD1612C383532",
      INIT_06 => X"1E1A12151C220F4F9F9C9C97A4ADB6C37B0B162611181E1E1C1C18160E6578B6",
      INIT_07 => X"C4B8A58A715F27201F1E17170E101E2026522B5B89B4C6A95A1412151B202322",
      INIT_08 => X"29282344A6723C21191C17181A191A17141513171222417F85317FA2C093CAE4",
      INIT_09 => X"292925154BD1D7D1C8B99AAA2218212227211C1E201E1D1C1616231F1E1F2025",
      INIT_0A => X"E0E6EAFEF5E0C05D5A51562B26251D402A2B2C292A2926262726272625262C28",
      INIT_0B => X"2E3C595B97AD79767047261B1F23292F2D212323262425201D202E605EBAE9E7",
      INIT_0C => X"15131623113E7AADB8CBBA2F2E3733343436352E729FBCFD5B2C1C201D3E856A",
      INIT_0D => X"6608152C12171D1E1C1A16150F3B77ADC4B9B6CDD4CEB387AA2B1E2427191215",
      INIT_0E => X"1E62293A6AA4AF8C3A0D12171A1F23221D1913151C2013418B938EA2AEB4AFB5",
      INIT_0F => X"13161516121C3A758A3B75A7C4A5B5E1AEB6957C585924211F1F19140F1B2421",
      INIT_10 => X"24221C1D1D1E1C1B1715201F21232424272B252EA69A6F6D654614171A1A1B16",
      INIT_11 => X"2B2B2B28282827272827252628282E282629251A25C3D8D3C8B2A0A819181519",
      INIT_12 => X"302323232423251C1C1F2D5A5CB9EACDC0D1DDF9F5DDBE624F54542B25231A69",
      INIT_13 => X"33363535336ACE9741331E1F17658591532F514F77856D70653F1F191E23272E",
      INIT_14 => X"BDC0DED9CDC9A78D9D1C1C232719111514121725113B769CB6D37D1E32363136",
      INIT_15 => X"1D181313181D1E3C856F839C969DA2A15409182A11151B1D1B181414101E73A7",
      INIT_16 => X"AAB68267686D2E211F1D1811142223221B554E253D61745A2C0D10161B1F2222",
      INIT_17 => X"2729262592B09CA9AC6112181A1D1A1716121416131638818E5168A2BCAC99C4",
      INIT_18 => X"2728231E0D99E0D3C6ADAEA2141810151F211D1C1D1E1C1914171D2024262525",
      INIT_19 => X"8FA8CDEFF0D9B9704C57572D2422179A2A2B282827272728292625282C2A2D28",
      INIT_1A => X"6D204C4D575D696E5E35181B2124272F322521252423231A1B1E2D4E5EB7E6BB",
      INIT_1B => X"1313182511307F93B7CA2F2432353235323236372E3F9C26412F1B20197E7583",
      INIT_1C => X"45101F200D131A1B1B1914150D1C6FA6ADA4BFCACCC2A18F6B141E2326191214",
      INIT_1D => X"1C397D2125283629330E11131C1F20211D181211141B28408F57A8CDB57E9492",
      INIT_1E => X"161113151519398EA4656692B5B4A2B4B2B26B54868D3E1E1F1B181118222022",
      INIT_1F => X"1E1F1F191D1C1E1B13171D21252526262826272372B9ABABB65F1418191B1915",
      INIT_20 => X"282A28282829282627262A2E2E2C2927272923200C53DBD2C0ABBF9813191A18",
      INIT_21 => X"32281E26232222191D21334060B0E3D795B2D0EBE9D3B46D4B565B3322201BC8",
      INIT_22 => X"3231363836322E1E48271B211F706D6C46154C5C747D736B5427141D2224262F",
      INIT_23 => X"9B718CA3BDBBA6841C181F232619141513141A261223929EC2800A2D2E323235",
      INIT_24 => X"1D1713111118273F9D7EC0F4F17D9290431021190A10191A1B1915150D1B70AB",
      INIT_25 => X"B7AD53528E8A341B1F1B18111923202221298C362D402F203D0C16161D1F1F21",
      INIT_26 => X"2826262256BCAFA3AF52161819181B150F14160E1D373F7FC8797780ACB6B7B5",
      INIT_27 => X"272925221514B4D5BCAEC68F13161D1A1D1E20191A1A1C1B14171F2326252728",
      INIT_28 => X"D4D8EBE4E5CCB2644A54633A231E30E127292727292A262425272F31302E2729",
      INIT_29 => X"3B173761859387693C18181E2225262F332C1D27232321181E233B3459A7D9DC",
      INIT_2A => X"16151D25151BA0B2AC13162B2C313332323136393B3433274E2C1E231D66372A",
      INIT_2B => X"48071916070E191B1B1915140F1970B19DB0E6A688C3A679131A1F23261A1516",
      INIT_2C => X"221F8D6F1B3330343F0813141C1F20211C16161313181E39957F73AAA38CB594",
      INIT_2D => X"1A1011133181603EB39B8F73A5B3B5C2C1A34566A26B1F1B1F1D171218232326",
      INIT_2E => X"1D1E201C171A1B1A1718222727272928272927243BB0B0A7A845181A1718282D",
      INIT_2F => X"27292827292A2624262A3132312F272A262826241A1076DBC3B1D48915151D1B",
      INIT_30 => X"322F1E27242421181A22422F42A1DDD7EBF8EAD8DDC7AF5C4655693E25224DEF",
      INIT_31 => X"31343539373A3633502A1E231B5443121E092F67869984622B111F1C2025272F",
      INIT_32 => X"C08CC09CA3CFAF721A1A2024261B15151A151D23190C7F972C0D252B2D31332E",
      INIT_33 => X"1B161614151A16328B8882AB959DB6973D010F11060D191B1A18161312126BAC",
      INIT_34 => X"CD904281AE51251B1C1B16191B2126241F1B769F36272652400D13171C1F2122",
      INIT_35 => X"29292927279BAEAE9841171E1F2F413E3D26130C50A772417B98A78091BABCD6",
      INIT_36 => X"272726271A121FBBBEBCDF7E151B1D1B1E1E1D1E181F1D18151B282928282826",
      INIT_37 => X"AED0E7E6D6C8A24344546840242B6DF927292926282928262A303133322E262B",
      INIT_38 => X"37102155879877561D15241A2126272F31312026252521181B244C31299DE2C7",
      INIT_39 => X"1A141C241A08201E0A0828292C2D302D3035353A3B39392748261F2119373F4B",
      INIT_3A => X"2C03070B060C191B1A171612140E5FABB5A5BFB0C2C4B06C0E1B2224251D1515",
      INIT_3B => X"1F1C5EAE782753754107101B1C1E22211B151313141811257D80789294A1AB95",
      INIT_3C => X"4742300D53987C666C94ADA270ABC2CDC77E5A90DB681C1C1817171F22202423",
      INIT_3D => X"1B1C1B1D161B1B1914212C2B292726232B2728281C89AC9D6D3E14200F2B3239",
      INIT_3E => X"272A2A26282824242C353235342F262A272725281F1B1443D3C9DA6E131B1E1A",
      INIT_3F => X"2F31242526251F171F245337279AE092B1B09ECADFCC91304253624223338DFB",
      INIT_40 => X"303535383A3A33315A201F20191B204B2E0F1147888A6D3D0C20271B2227262E",
      INIT_41 => X"B7A3ADAED0C3AA5C131A2224251E14161C141B251809060507182F282A292B2F",
      INIT_42 => X"1A14131212140D176B8B808698AFA5891E080607060B181A1A181512140E4BA3",
      INIT_43 => X"CE767B93B2681A1C15181B2325202221251B49B29A6C877D3F050E161C1F2121",
      INIT_44 => X"282727271F70B296643E142017322F36373C4327329786836B82AFC86F80C5D6",
      INIT_45 => X"28272828231A1B1962D1F15312161F1A191C1B1B1614171819272C2A29282723",
      INIT_46 => X"DEDFA8CFE9D186373F585E452539B2FB26292926272721212C38343735302926",
      INIT_47 => X"1A11092D6B6C4F1D1431291D2428242F2E32262426241E151F22553F3796E09D",
      INIT_48 => X"1F191928180A0B0A0D28302A2D2E263030323638393A36353E1F20211D191826",
      INIT_49 => X"130A0706060917191A191312130E3B95B1B1B4B6CEBEA442131B22242620141A",
      INIT_4A => X"241D31AF9F8E96764B2522171C1F20201A13141212140C0E558B9794A6AE9F75",
      INIT_4B => X"2D3E402D2A7E8D9E667DB1D99656B1D6AD709598A0661A1D151E222324232122",
      INIT_4C => X"1A1D1E1B190E161522292A292A292A25212C29282453B69A82471E1B1F2E2928",
      INIT_4D => X"25292726262723243038343534322D212A282E27251D19141A5C732612141E19",
      INIT_4E => X"2D312B2226261D171C1F4F49428CE2BCD4E9CAEAE8D17D4340585B472442C9F7",
      INIT_4F => X"3030373A3A3A393222201F22201F1B1313130A133E43240F283D26252428232D",
      INIT_50 => X"B2C6CCC7C8B6952A121C23242520141E1B0E1B29180B0F0A132D2F2D2E242731",
      INIT_51 => X"1A12151312150D073680AAB1B9A79B5911080707050A16181A171314130F2584",
      INIT_52 => X"756D9591A2681B1C1923242323231F1F222022A3A48F88544D34322820202020",
      INIT_53 => X"1A2B29272638B0A49C51251C17272D22223231242A5882A46F84AED6C1546E9D",
      INIT_54 => X"252B2C2829281E2617070D0F13141D1B1B1E1C1B190F151A27292A292A2A2B28",
      INIT_55 => X"AFC7D3F4E2CD6E4744545648214ED3F423272727262623283336343434333121",
      INIT_56 => X"17131007181B0A183840202B2429242D2B312F2125261C1A1B1C46584478DFC2",
      INIT_57 => X"22262127190D0D0B1B2A312B26192B323131373A393B3832282020221F1D1917",
      INIT_58 => X"17050406030B15181A14151713120F6DB7C8D9D1C6B0771F191E2323241F151E",
      INIT_59 => X"23201E8AAD8C5D2934242E33212120201A12141311150C03166BB0C9C0A18843",
      INIT_5A => X"1D232E23283774967F90AED4D78137515C677C759D6F1B1A1E24232525241E1E",
      INIT_5B => X"1B1D181B16111121282A2B2A2B2A2A2A1C222A2727259EAA9F562A1F0F202E27",
      INIT_5C => X"222527272725202B35333435353131271C2929262C38393E2E1E171515161C1B",
      INIT_5D => X"2B32302524231A191B1D3F654961D1CACBDDE5ECE4C55A4B47574E49235AE0F6",
      INIT_5E => X"33333537393B38342C2224231C1C19181815150906061028493E1E272329232C",
      INIT_5F => X"ACC0D6CEC5A45B241B1D2323231D171956872B24170B0D15241F2D231A262E32",
      INIT_60 => X"1B13151312150B06043FABCDBA8C544C1D040506050C15181914151613140A49",
      INIT_61 => X"77575C4F906F141B22232526262B202224211A65B3721B1A181D24231D222022",
      INIT_62 => X"26182B2D282479ACA65D361D141C1C252C31352730206C868698B5D8DFBB6359",
      INIT_63 => X"1D202B1E2B3847383F2F161515171E171B1F191A160F1021292D2B2A2B292929",
      INIT_64 => X"D8E4E7EBDCB2464B49584B4D2464E4F2232628262425242F3635353535322E30",
      INIT_65 => X"15121919111D28425831202C242A242B2C3131282320191B1B1D36614F46C5D0",
      INIT_66 => X"A7A64020120B0B1E240D151D202C2E30333238393A3A38362F2622231F1B1A18",
      INIT_67 => X"25040605060B15181714151612100B2794C3E1CBB47F642E171E2122211A1921",
      INIT_68 => X"25241F45B3310E201F212025202125201A14141212160908051A91BFB4602E73",
      INIT_69 => X"20231C21322A36759E8BAFD1DAD3C7C18C4541314B331A1B24242627272A2121",
      INIT_6A => X"19201A181410172628292B2A2B28272929171E27252D409DB961311B15292124",
      INIT_6B => X"22262724222327313736353433332E30281A231C231A141E2630171615182014",
      INIT_6C => X"2D30312A22201C1C1A1F31694F27ACD4DAE3EEE7D58F444C4C584F512264E0F1",
      INIT_6D => X"2D2E34333A3736352C2D2422221C19181411211C494441575624242C262C232B",
      INIT_6E => X"62C7DECB955F94281F1D21211F181C29918C471F100C0A251E2027242B2A2B2F",
      INIT_6F => X"19151210151808060B074BA26D1D658E1E0504060409151516161515120E1018",
      INIT_70 => X"7F37312C1C0B181E232728292925261F222623314813111B20182718130F1D1D",
      INIT_71 => X"2720142E2A2A1F1E784E27211D15262424272729212F194C4466BBD5DBD4D0D3",
      INIT_72 => X"301D16191811161C1C301D1315171F1419201C1614141C2727292B2A2A292729",
      INIT_73 => X"E7F4EEE0C8714F4F4D5754562560E1F42124262322202530343433302F322F2B",
      INIT_74 => X"17142A25464F565F4C232828292C232C2E2E3229201F1E1B18212D6445198CD4",
      INIT_75 => X"7C623521120A12211425292926272C302C343536393532352C302C221F1C1A18",
      INIT_76 => X"200A0406040A16141619171512110C2136ABC7B05E7AB02A231F21211D171B41",
      INIT_77 => X"1C25231C160E0F3136303020140B151F1A151010181B090510120F2A1D409C8E",
      INIT_78 => X"2F29352E192A2E21273CA8D5DCD3C6BD7F2C20231513152123292A2B2A272A21",
      INIT_79 => X"1A201C1516151C27282C2C2A2A2A28292A28160F232E2B161C2B2D1F1E221B1D",
      INIT_7A => X"21252622231E2631343332302C30312C3026161517232F21202A2B1614161E15",
      INIT_7B => X"2E2C312A201E1C1718262E45391F5DD0EDF9ECCE9F795B544F58545A2E57E5F4",
      INIT_7C => X"2D34323B38343036302D2D241E1D1A1817132E2947495A6145242B282C2A222D",
      INIT_7D => X"296CAA6E55AFB62F212021211B181A4D70423E20120A1B181F29252A26292E31",
      INIT_7E => X"1C140F11181D0A051022161D3E85B489270F0406050A1813171B181513120E2B",
      INIT_7F => X"721B101910141A2128292A2B2A2A28231C24261D0E0D0F3138361B1A1E141422",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "NO_CHANGE",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => douta_array(7 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88\,
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena_array(0),
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => ena,
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized9\ is
  port (
    douta_array : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized9\ : entity is "blk_mem_gen_prim_wrapper_init";
end \blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized9\;

architecture STRUCTURE of \blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized9\ is
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute CLOCK_DOMAINS : string;
  attribute CLOCK_DOMAINS of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "COMMON";
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"2926211213141E1B06243220211E211F272731261A222B22273195D8D4CDC7B5",
      INIT_01 => X"352A1B182653483B23202D1D15151C181B1F1B141619242C2A2B2C2A2A2A292B",
      INIT_02 => X"E8EDE3AA7D9C625E535A515C3850E6F322262722221F2A32343533312A2C312F",
      INIT_03 => X"16122C34414B5D603E252C2C2D27232D2F2C302C201F1B14192B312E30212BB9",
      INIT_04 => X"8F584A1E120B1F162227272A2C2B2E302E2E2E363534313733292525221E1917",
      INIT_05 => X"1B160805070A1613191B18161411112C432846488DCFA2222522222119191B4C",
      INIT_06 => X"202323140D0F18272A3325171A130F1F1D130F12171D0E070A233B5073ACBC86",
      INIT_07 => X"2832311D18161D2B292C71D9D4CCC6AC6B0F09150F121C242B2A2B2B2A292524",
      INIT_08 => X"1C1E1913141A2C2F2B282C2A29292A2B2723251F140D0A10202B32302B2C2727",
      INIT_09 => X"2125262220233034343434312A272F313E281F253E6A56493422272415181B19",
      INIT_0A => X"302D303121211A151B2E3324291C128BE9E8C58580B86367595C4F5C3E50E5F3",
      INIT_0B => X"2D373B313135333632291A2422201A15171329383F4C5E5F33282B2C2C23232B",
      INIT_0C => X"623A2E6BC3DE741E2B232222171A1C46866B491C130E1C1A24252A2C2C2B2C2B",
      INIT_0D => X"1B121112151C11080625557C93B2BD73151C0B03060711151B1A1A1614120D29",
      INIT_0E => X"680E08110D122027282B2C2B29272624231E1C0B0E141C151929361A0F0A0C19",
      INIT_0F => X"292625241E160E0C272A335051442F343E311B0D16161F2B29294BD1D4C9C6AB",
      INIT_10 => X"3F21222F5662564F4029292A151C1C1B1D1D1812150E1E24272C2D2A29282929",
      INIT_11 => X"CAD49279A8C4676E5B5B4F5A4751E5F51F2223221D2835333133332F2C252B36",
      INIT_12 => X"19142834434A5F5B282A2A2C2C2223282F2E2F31222218151D30372026191957",
      INIT_13 => X"6979531F121418202A292A2C29292B2A36524E3A30363537302C1623211F1A15",
      INIT_14 => X"1D1E100406060E161B1A1A15141308296F8F82ADD5D73E2729262321151D1C4A",
      INIT_15 => X"241B130C0F16160F131E321C15140F141A1313121119140B062D5F8FA2B1BB52",
      INIT_16 => X"5B26242C2C242A29292A33B4D2C4C8A965120B0D0B172328272C2D2C29262825",
      INIT_17 => X"1D1C161215314E4026262E29292829272C2A2423221C1B1316243771846C604B",
      INIT_18 => X"1D202221202A3632302F302D2D2329393627274C796E52504733302F161D1B1C",
      INIT_19 => X"2C2E2F2E201E17111C3140212A18253F69906F91D3CA6D735B565254534CE5F5",
      INIT_1A => X"4863525A3833353A31301B2223201A161A12253A424F6250252928302B242424",
      INIT_1B => X"76B9BBC8DEA91D27272A251E131D1D6798B185260F181A242A2D2B2B292A2C31",
      INIT_1C => X"1B1412110A15190D042C699AA7B4B836201E180C08080E141A1B19141210092B",
      INIT_1D => X"61160B0F111F2228292B2E2D29282424251F0C090A14292820242520302C1111",
      INIT_1E => X"29272223221D1A1415243882A1ADB87E7955929A6931262A282B2782D2C2C296",
      INIT_1F => X"2E3B3489ABA15A4B584933331A1A1B1D1E1D14121691C297552C2A262A292A29",
      INIT_20 => X"3A6085B1E3C96E7A5C54555A504CE3F21E21231F373F3132322C2F2B2B212635",
      INIT_21 => X"1719203E4D515C442A282A2D24222527282B3133211C1C191C364224291B275B",
      INIT_22 => X"CAD9B7270C171B27282B2F2D2C2E283339595F7A523237383333201F221D1715",
      INIT_23 => X"231F1C1605050C131C1D151B1212092887BBC5CCDB6A1D2A2729251E18161D9E",
      INIT_24 => X"251F14110D1B6E5B4B522B35330C12111613110F070E1B0F06296A9EAAB3A523",
      INIT_25 => X"ADEAECD1AC41282C28292C52CABDB2905B1B0B0B121B232C2A282B2A2F282722",
      INIT_26 => X"1E1C1512237B6E91DD9022222729282725222021231E1F1916203A89B1C9D6D0",
      INIT_27 => X"1D21211C5F9131373231342B28212237383558A3C3B77B535F564B2E221A231B",
      INIT_28 => X"2724232F2A2218131C3648292E23246B6C7BB2D3F4C36C785B50515E5649DEF1",
      INIT_29 => X"3A5D536E7635332A252C241E201815161B2221414A585E3923282C2822272A28",
      INIT_2A => X"91BDC4C4D33B262A272A251D122027AFEFE5B322121E252A2D33342C282A2027",
      INIT_2B => X"1413100F050819100A236A9CA8B8651E211D1F190F0909181A1321292506092F",
      INIT_2C => X"5C1D0E0D1522272D2D2B2D302B232522201A1A170A399F9D9BB392553011070D",
      INIT_2D => X"2B222321231E17191C1C449EC0DCE4F3F9F5E3CFB7441C2C2F292538A4C2AE8B",
      INIT_2E => X"3D3976B4D4CD90635C76662D261614221D1A13111CBDE1AA6ABBC33C1D292827",
      INIT_2F => X"A5C0DCE5F7B96B6E5A5351606043DAF41C20211E66B9701D3430282A26221F37",
      INIT_30 => X"1F27264A4D585B292A2A2E26252C292C26242B3029281D1D22354F313A27207A",
      INIT_31 => X"2D264A280E242F2A3A5C2C2F3B3F1F39685C49646A464D9D8E36231F1C151518",
      INIT_32 => X"1F1E20171B160C121B26475E48400F2292C7C3CEAF232B28282B281D1418404C",
      INIT_33 => X"1C1821141769BCC9CBCEDBAB5E19090A171211110806130D0F1F6E9EAFAE391F",
      INIT_34 => X"F7ECDED1B2561E332A2A2D3370C0AB97541E13131726251A1C232A2A2B252221",
      INIT_35 => X"1F1810102A9085C4A0A99DC84822282624222321221D201C16174FB2CADCE5F3",
      INIT_36 => X"1A1F211BA999BB5D2A2E312A2522232A344689BAD4D5A07C6C7C5A37251B201E",
      INIT_37 => X"24282225251713152237503D422A207EB5E1E9EBF5B56E5F5B5A5B5F613ED6F4",
      INIT_38 => X"443F59564D59B8CAA98F281B181415191D2E284E505355232D2C2B26262C2530",
      INIT_39 => X"8CC3C0D372232A282A292D1E0D172E4A4D784C23102131383777202E3B212C39",
      INIT_3A => X"1412121208070A0C12206AA0AC95252220231F181E221918274557364B3C2F26",
      INIT_3B => X"571F17141615386B704A1D182527211D1C1924124190C5D5DEDDE4CCA0381609",
      INIT_3C => X"2726232222201E1D1C1358BACFDAE4EAF3ECDCCAAD66232C2A2C2D2C4DA8A496",
      INIT_3D => X"29559EBCD4D7B78F6E716B56261C24371E1B0E1130B4C2A98EB7B5C371202926",
      INIT_3E => X"B8E6E8EEF2B7734D585960585C3FD1F21A1E1F2C9CC997B34725292425212020",
      INIT_3F => X"1B372958525F4825282B21242927272F242D283D59583C1819374E4F482D227B",
      INIT_40 => X"6BB9502013212D4B1A66283D370F3342565A59402B55A292939A2B161415151B",
      INIT_41 => X"1F241C1D1D2720202D51573A3323393086B3BAC63D292A2A2C26302923163E80",
      INIT_42 => X"1C1A221F6CA6C5DBE4DFE7D6C86D210B1013140E0507050D15296096AC6E1B25",
      INIT_43 => X"E5E3DDC9AF6724222D2C262A3C7A9C98621E171221828D96A1A7956B221D1F1C",
      INIT_44 => X"261B0F0F32AEA9AE98BCBFA76E1F2927272328242422201C191561BBCCD8E3E8",
      INIT_45 => X"1A1E1D3BBAADBA91A0352926241E201B2A6EA5BAD5D9C7A3A19A99742A1D2061",
      INIT_46 => X"282F3A588293744723354B615330227DB3E3E8F1F1B8723E52555F525B45CDEF",
      INIT_47 => X"6356533E2E4975757A8530151316151B19392F6A566835292D221B232B262F2A",
      INIT_48 => X"92ABB9A2242A2C2B2A2631333515477F6F80511C18272B51137E46402E192437",
      INIT_49 => X"0F131309030605101B3A5D8EAA421D261F1F19211F251D1D2B4853522720263D",
      INIT_4A => X"681C161144ADABB3B2BAC4A87F28191C1B191F3686B2CFE2E6E5EADCD3922C16",
      INIT_4B => X"2A241A1A19131315121B6ABBC8D9E3E8DEDEDCCDAA612A21252C282E324E85AC",
      INIT_4C => X"3487A1B6D7DCD0B4C5C9BB88311C184D2D16121039B3AFABA1BFB8A4561E2927",
      INIT_4D => X"ACE2EBF3EEB46935505461525E4ACAEE1A1F1A53C0AEB1729F812E222419221E",
      INIT_4E => X"162E3277564F292C2B1920272C2736252A313E52728C7A6F4D34476F64322481",
      INIT_4F => X"702E57161D2B2A423988593E2A211A2243345957514774828897341913161419",
      INIT_50 => X"20171D242422181928343E44332C193E9EB0B96C232A2C2A25293135331A3251",
      INIT_51 => X"1A19234691B8DAE8EBF2EDE3D79D3222161410050506060E254A639591222425",
      INIT_52 => X"E6E3D8CEA75A2E27182C2F2F2C3B60BA701D1510649A8FB8AD98A2A5DC4B141C",
      INIT_53 => X"4C1214103FBCD09BA0C6B8AE4C1E27253C74565D5D473326141E6EBCCEDEE7E8",
      INIT_54 => X"1A20186AABCA8B957BAC5A1C241322203A909EB8D6E0DBC2CAD8C1953C1D171C",
      INIT_55 => X"2932343E56705552673B42746E372F80B5E0EAF4EAAD5E3453576858614DC7ED",
      INIT_56 => X"3A4A556160515989BEB2311F14161317151D2E6044262B2B191B2C2C2A293323",
      INIT_57 => X"87B4A637272E2B29212D30343A262A464F254D141E252837733F4A5331133330",
      INIT_58 => X"20130D050805070B2C53719F561A26231F162626251F18222A1F1A2E3E2C2628",
      INIT_59 => X"7423160C61E7A99492B5E0C7A65C141C1B1B294C99BAD6E9F8F8F3EADDA43929",
      INIT_5A => X"50FEFFFFFDE8B57B1F196EBFD9E4EFF0ECE6D6CDB054252A1B292C2B29384695",
      INIT_5B => X"388FA2C0D6E4E9D3E1E0C39B4824222B7F16120E3F9291A5B9C5B9B04C1D2522",
      INIT_5C => X"B4DEEDF4E8A352314F54645D5E4DC0EA1A1F1A6DC69CBDA3C87DA8242114221C",
      INIT_5D => X"19142012263526151F2E302B27322B232A2E3C3C5B494D3C2D4B456B593B3A82",
      INIT_5E => X"423A4B111B2A2362AC8F4358180A3A3E473C273B605A64F3B4B6351F12171519",
      INIT_5F => X"14202725241E12202714244D3A2329164CAB7C212A252D271F2E31333A392E3E",
      INIT_60 => X"1A2223579EBCD3E7F9FAF4E9E2BA5B341F140D0805070A0B33558F962223251E",
      INIT_61 => X"F6EADECBAC501E2B201B2F2D2A243F39422716115A7ABDE9BFAFD0D9AB4B141B",
      INIT_62 => X"481F0C0D3BCCEE8AA1CCC29D3E1F1E233BE9F7F0D8E7FDEA2A1676C7D5DFEFF4",
      INIT_63 => X"1A1C1C85AAC67EADC4BC89281C2824163C8FA9C4D9E7E9EDE9E2CB9E56252C41",
      INIT_64 => X"342A444A54594F3E3644565D5342387EB9E5F0F5E1935031515B645A5D48B1E7",
      INIT_65 => X"49285E5551575AD68D56411F111B161B1B1419173C250B1930352E2E27352A22",
      INIT_66 => X"31813F2429333120222E30353A3B3D564B57450D1D242A947CA84B4D1C0D2F4D",
      INIT_67 => X"1E160B060705070B2F5C3D35282117161724252620160E1F1D15234B2F34231B",
      INIT_68 => X"3C20150F86BE837789C3D9D0BB40121919271F63A0C0D6E0F4FAF7F1E2CB9236",
      INIT_69 => X"37C894777383A0C1131D79B59AD1E8F4F0F2E8CEA8491F282E12182F33252E47",
      INIT_6A => X"488FAAC4D9EEF2EFE6E2C8A05B1E3E81441B120E489580CBAB89CA9539221F23",
      INIT_6B => X"B6E6F0F5D58652375258605A5D4AA8E21D1E1D9EBEB3A3B2BCB39C2216152119",
      INIT_6C => X"2018181B3A19172A33322A2C2934272E362C475149535A3D3C3B415448443475",
      INIT_6D => X"1C41391420262C8596982A423931262A2F4D6464464C48B693514221111F1A22",
      INIT_6E => X"1F26212521120E1C1C233E664D301D21295B232C2B2B2218272E303637384044",
      INIT_6F => X"1B27185EA0BFCEE1EEF9F4E6DBCFB3341C180B060804080C424129191A141119",
      INIT_70 => X"DAB4B7C8AA431D282826181A2C291F343A1D13156FA9DFEEC2B9D3CFB03B1219",
      INIT_71 => X"774F0F1345C1D88497C87B8E32211F252BB163B2817B71901A2B8A925970D6D7",
      INIT_72 => X"1D202B98C1A782B5BBB77019170E221B5490B2C7D9EBF1F3E8E2CAA3631D517A",
      INIT_73 => X"2223424B4654534129282D4A3D453470B1DFEDF4C7815A4252555C585450AADD",
      INIT_74 => X"2D3E68652F2F3E8DA04A3A23111C1C24241B181F2C1621312F292A292B2E2433",
      INIT_75 => X"1C53212C31241318292E3136333234587D992D19212636816871254F78782524",
      INIT_76 => X"18180F0907060C1142371E1511161B1F252521241B0C0E20252C35615036211C",
      INIT_77 => X"371D1112888F84838DCDD7CBB33D131A1D231156A5C0D4E3E8F3F3E9DDCCAA2B",
      INIT_78 => X"27A9816E74656D5B2D326981937DC1D1B95D7DB1A945172729281F0E11140D1F",
      INIT_79 => X"5990B8C7D5E0E1ECE9DFCDA76B234E8E925A090C57A099D4AE83BBAA2E1F1E24",
      INIT_7A => X"AFD8E9EFBA786748525D5E4F495EB0DA1C1E29B2A0C184BEBCAD76191613251C",
      INIT_7B => X"24191722231929322D272F282D2A2534162739424C5140371C2B293936403873",
      INIT_7C => X"565F2017242436652E6921539CA830243D42594B34182A69AD3F34241118181C",
      INIT_7D => X"242526221B0E1222282D406262391D1C144C2D1318141321292C33332E312F4B",
      INIT_7E => X"1B200F4CA4C1DBE3EBF0EEE6E2D2AB261316120E07080F163C27171914202320",
      INIT_7F => X"A0789A88AC4A15252C292B20151919152F1E0E158FB0BEBBACB5D0D7AB3A1118",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "NO_CHANGE",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => douta_array(7 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88\,
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena_array(0),
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => ena,
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity blk_mem_gen_0_blk_mem_gen_prim_width is
  port (
    douta_array : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of blk_mem_gen_0_blk_mem_gen_prim_width : entity is "blk_mem_gen_prim_width";
end blk_mem_gen_0_blk_mem_gen_prim_width;

architecture STRUCTURE of blk_mem_gen_0_blk_mem_gen_prim_width is
begin
\prim_init.ram\: entity work.blk_mem_gen_0_blk_mem_gen_prim_wrapper_init
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      clka => clka,
      dina(7 downto 0) => dina(7 downto 0),
      douta_array(7 downto 0) => douta_array(7 downto 0),
      ena => ena,
      ena_array(0) => ena_array(0),
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \blk_mem_gen_0_blk_mem_gen_prim_width__parameterized0\ is
  port (
    douta_array : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \blk_mem_gen_0_blk_mem_gen_prim_width__parameterized0\ : entity is "blk_mem_gen_prim_width";
end \blk_mem_gen_0_blk_mem_gen_prim_width__parameterized0\;

architecture STRUCTURE of \blk_mem_gen_0_blk_mem_gen_prim_width__parameterized0\ is
begin
\prim_init.ram\: entity work.\blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized0\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      clka => clka,
      dina(7 downto 0) => dina(7 downto 0),
      douta_array(7 downto 0) => douta_array(7 downto 0),
      ena => ena,
      ena_array(0) => ena_array(0),
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \blk_mem_gen_0_blk_mem_gen_prim_width__parameterized1\ is
  port (
    douta_array : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \blk_mem_gen_0_blk_mem_gen_prim_width__parameterized1\ : entity is "blk_mem_gen_prim_width";
end \blk_mem_gen_0_blk_mem_gen_prim_width__parameterized1\;

architecture STRUCTURE of \blk_mem_gen_0_blk_mem_gen_prim_width__parameterized1\ is
begin
\prim_init.ram\: entity work.\blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized1\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      clka => clka,
      dina(7 downto 0) => dina(7 downto 0),
      douta_array(7 downto 0) => douta_array(7 downto 0),
      ena => ena,
      ena_array(0) => ena_array(0),
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \blk_mem_gen_0_blk_mem_gen_prim_width__parameterized10\ is
  port (
    douta_array : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \blk_mem_gen_0_blk_mem_gen_prim_width__parameterized10\ : entity is "blk_mem_gen_prim_width";
end \blk_mem_gen_0_blk_mem_gen_prim_width__parameterized10\;

architecture STRUCTURE of \blk_mem_gen_0_blk_mem_gen_prim_width__parameterized10\ is
begin
\prim_init.ram\: entity work.\blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized10\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      clka => clka,
      dina(7 downto 0) => dina(7 downto 0),
      douta_array(7 downto 0) => douta_array(7 downto 0),
      ena => ena,
      ena_array(0) => ena_array(0),
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \blk_mem_gen_0_blk_mem_gen_prim_width__parameterized11\ is
  port (
    douta_array : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \blk_mem_gen_0_blk_mem_gen_prim_width__parameterized11\ : entity is "blk_mem_gen_prim_width";
end \blk_mem_gen_0_blk_mem_gen_prim_width__parameterized11\;

architecture STRUCTURE of \blk_mem_gen_0_blk_mem_gen_prim_width__parameterized11\ is
begin
\prim_init.ram\: entity work.\blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized11\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      clka => clka,
      dina(7 downto 0) => dina(7 downto 0),
      douta_array(7 downto 0) => douta_array(7 downto 0),
      ena => ena,
      ena_array(0) => ena_array(0),
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \blk_mem_gen_0_blk_mem_gen_prim_width__parameterized12\ is
  port (
    douta_array : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \blk_mem_gen_0_blk_mem_gen_prim_width__parameterized12\ : entity is "blk_mem_gen_prim_width";
end \blk_mem_gen_0_blk_mem_gen_prim_width__parameterized12\;

architecture STRUCTURE of \blk_mem_gen_0_blk_mem_gen_prim_width__parameterized12\ is
begin
\prim_init.ram\: entity work.\blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized12\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      clka => clka,
      dina(7 downto 0) => dina(7 downto 0),
      douta_array(7 downto 0) => douta_array(7 downto 0),
      ena => ena,
      ena_array(0) => ena_array(0),
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \blk_mem_gen_0_blk_mem_gen_prim_width__parameterized13\ is
  port (
    douta_array : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \blk_mem_gen_0_blk_mem_gen_prim_width__parameterized13\ : entity is "blk_mem_gen_prim_width";
end \blk_mem_gen_0_blk_mem_gen_prim_width__parameterized13\;

architecture STRUCTURE of \blk_mem_gen_0_blk_mem_gen_prim_width__parameterized13\ is
begin
\prim_init.ram\: entity work.\blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized13\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      clka => clka,
      dina(7 downto 0) => dina(7 downto 0),
      douta_array(7 downto 0) => douta_array(7 downto 0),
      ena => ena,
      ena_array(0) => ena_array(0),
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \blk_mem_gen_0_blk_mem_gen_prim_width__parameterized14\ is
  port (
    douta_array : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \blk_mem_gen_0_blk_mem_gen_prim_width__parameterized14\ : entity is "blk_mem_gen_prim_width";
end \blk_mem_gen_0_blk_mem_gen_prim_width__parameterized14\;

architecture STRUCTURE of \blk_mem_gen_0_blk_mem_gen_prim_width__parameterized14\ is
begin
\prim_init.ram\: entity work.\blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized14\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      clka => clka,
      dina(7 downto 0) => dina(7 downto 0),
      douta_array(7 downto 0) => douta_array(7 downto 0),
      ena => ena,
      ena_array(0) => ena_array(0),
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \blk_mem_gen_0_blk_mem_gen_prim_width__parameterized15\ is
  port (
    douta_array : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \blk_mem_gen_0_blk_mem_gen_prim_width__parameterized15\ : entity is "blk_mem_gen_prim_width";
end \blk_mem_gen_0_blk_mem_gen_prim_width__parameterized15\;

architecture STRUCTURE of \blk_mem_gen_0_blk_mem_gen_prim_width__parameterized15\ is
begin
\prim_init.ram\: entity work.\blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized15\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      clka => clka,
      dina(7 downto 0) => dina(7 downto 0),
      douta_array(7 downto 0) => douta_array(7 downto 0),
      ena => ena,
      ena_array(0) => ena_array(0),
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \blk_mem_gen_0_blk_mem_gen_prim_width__parameterized16\ is
  port (
    douta_array : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \blk_mem_gen_0_blk_mem_gen_prim_width__parameterized16\ : entity is "blk_mem_gen_prim_width";
end \blk_mem_gen_0_blk_mem_gen_prim_width__parameterized16\;

architecture STRUCTURE of \blk_mem_gen_0_blk_mem_gen_prim_width__parameterized16\ is
begin
\prim_init.ram\: entity work.\blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized16\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      clka => clka,
      dina(7 downto 0) => dina(7 downto 0),
      douta_array(7 downto 0) => douta_array(7 downto 0),
      ena => ena,
      ena_array(0) => ena_array(0),
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \blk_mem_gen_0_blk_mem_gen_prim_width__parameterized17\ is
  port (
    douta_array : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    ram_ena : in STD_LOGIC;
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \blk_mem_gen_0_blk_mem_gen_prim_width__parameterized17\ : entity is "blk_mem_gen_prim_width";
end \blk_mem_gen_0_blk_mem_gen_prim_width__parameterized17\;

architecture STRUCTURE of \blk_mem_gen_0_blk_mem_gen_prim_width__parameterized17\ is
begin
\prim_init.ram\: entity work.\blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized17\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      clka => clka,
      dina(7 downto 0) => dina(7 downto 0),
      douta_array(7 downto 0) => douta_array(7 downto 0),
      ena => ena,
      ram_ena => ram_ena,
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \blk_mem_gen_0_blk_mem_gen_prim_width__parameterized2\ is
  port (
    douta_array : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \blk_mem_gen_0_blk_mem_gen_prim_width__parameterized2\ : entity is "blk_mem_gen_prim_width";
end \blk_mem_gen_0_blk_mem_gen_prim_width__parameterized2\;

architecture STRUCTURE of \blk_mem_gen_0_blk_mem_gen_prim_width__parameterized2\ is
begin
\prim_init.ram\: entity work.\blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized2\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      clka => clka,
      dina(7 downto 0) => dina(7 downto 0),
      douta_array(7 downto 0) => douta_array(7 downto 0),
      ena => ena,
      ena_array(0) => ena_array(0),
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \blk_mem_gen_0_blk_mem_gen_prim_width__parameterized3\ is
  port (
    douta_array : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \blk_mem_gen_0_blk_mem_gen_prim_width__parameterized3\ : entity is "blk_mem_gen_prim_width";
end \blk_mem_gen_0_blk_mem_gen_prim_width__parameterized3\;

architecture STRUCTURE of \blk_mem_gen_0_blk_mem_gen_prim_width__parameterized3\ is
begin
\prim_init.ram\: entity work.\blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized3\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      clka => clka,
      dina(7 downto 0) => dina(7 downto 0),
      douta_array(7 downto 0) => douta_array(7 downto 0),
      ena => ena,
      ena_array(0) => ena_array(0),
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \blk_mem_gen_0_blk_mem_gen_prim_width__parameterized4\ is
  port (
    douta_array : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \blk_mem_gen_0_blk_mem_gen_prim_width__parameterized4\ : entity is "blk_mem_gen_prim_width";
end \blk_mem_gen_0_blk_mem_gen_prim_width__parameterized4\;

architecture STRUCTURE of \blk_mem_gen_0_blk_mem_gen_prim_width__parameterized4\ is
begin
\prim_init.ram\: entity work.\blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized4\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      clka => clka,
      dina(7 downto 0) => dina(7 downto 0),
      douta_array(7 downto 0) => douta_array(7 downto 0),
      ena => ena,
      ena_array(0) => ena_array(0),
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \blk_mem_gen_0_blk_mem_gen_prim_width__parameterized5\ is
  port (
    douta_array : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \blk_mem_gen_0_blk_mem_gen_prim_width__parameterized5\ : entity is "blk_mem_gen_prim_width";
end \blk_mem_gen_0_blk_mem_gen_prim_width__parameterized5\;

architecture STRUCTURE of \blk_mem_gen_0_blk_mem_gen_prim_width__parameterized5\ is
begin
\prim_init.ram\: entity work.\blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized5\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      clka => clka,
      dina(7 downto 0) => dina(7 downto 0),
      douta_array(7 downto 0) => douta_array(7 downto 0),
      ena => ena,
      ena_array(0) => ena_array(0),
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \blk_mem_gen_0_blk_mem_gen_prim_width__parameterized6\ is
  port (
    douta_array : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \blk_mem_gen_0_blk_mem_gen_prim_width__parameterized6\ : entity is "blk_mem_gen_prim_width";
end \blk_mem_gen_0_blk_mem_gen_prim_width__parameterized6\;

architecture STRUCTURE of \blk_mem_gen_0_blk_mem_gen_prim_width__parameterized6\ is
begin
\prim_init.ram\: entity work.\blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized6\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      clka => clka,
      dina(7 downto 0) => dina(7 downto 0),
      douta_array(7 downto 0) => douta_array(7 downto 0),
      ena => ena,
      ena_array(0) => ena_array(0),
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \blk_mem_gen_0_blk_mem_gen_prim_width__parameterized7\ is
  port (
    douta_array : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \blk_mem_gen_0_blk_mem_gen_prim_width__parameterized7\ : entity is "blk_mem_gen_prim_width";
end \blk_mem_gen_0_blk_mem_gen_prim_width__parameterized7\;

architecture STRUCTURE of \blk_mem_gen_0_blk_mem_gen_prim_width__parameterized7\ is
begin
\prim_init.ram\: entity work.\blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized7\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      clka => clka,
      dina(7 downto 0) => dina(7 downto 0),
      douta_array(7 downto 0) => douta_array(7 downto 0),
      ena => ena,
      ena_array(0) => ena_array(0),
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \blk_mem_gen_0_blk_mem_gen_prim_width__parameterized8\ is
  port (
    douta_array : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \blk_mem_gen_0_blk_mem_gen_prim_width__parameterized8\ : entity is "blk_mem_gen_prim_width";
end \blk_mem_gen_0_blk_mem_gen_prim_width__parameterized8\;

architecture STRUCTURE of \blk_mem_gen_0_blk_mem_gen_prim_width__parameterized8\ is
begin
\prim_init.ram\: entity work.\blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized8\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      clka => clka,
      dina(7 downto 0) => dina(7 downto 0),
      douta_array(7 downto 0) => douta_array(7 downto 0),
      ena => ena,
      ena_array(0) => ena_array(0),
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \blk_mem_gen_0_blk_mem_gen_prim_width__parameterized9\ is
  port (
    douta_array : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \blk_mem_gen_0_blk_mem_gen_prim_width__parameterized9\ : entity is "blk_mem_gen_prim_width";
end \blk_mem_gen_0_blk_mem_gen_prim_width__parameterized9\;

architecture STRUCTURE of \blk_mem_gen_0_blk_mem_gen_prim_width__parameterized9\ is
begin
\prim_init.ram\: entity work.\blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized9\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      clka => clka,
      dina(7 downto 0) => dina(7 downto 0),
      douta_array(7 downto 0) => douta_array(7 downto 0),
      ena => ena,
      ena_array(0) => ena_array(0),
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity blk_mem_gen_0_blk_mem_gen_generic_cstr is
  port (
    douta : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 16 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of blk_mem_gen_0_blk_mem_gen_generic_cstr : entity is "blk_mem_gen_generic_cstr";
end blk_mem_gen_0_blk_mem_gen_generic_cstr;

architecture STRUCTURE of blk_mem_gen_0_blk_mem_gen_generic_cstr is
  signal douta_array : STD_LOGIC_VECTOR ( 151 downto 0 );
  signal ena_array : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal ram_ena : STD_LOGIC;
begin
\bindec_a.bindec_inst_a\: entity work.blk_mem_gen_0_bindec
     port map (
      addra(4 downto 0) => addra(16 downto 12),
      ena => ena,
      ena_array(17 downto 0) => ena_array(17 downto 0),
      ram_ena => ram_ena
    );
\has_mux_a.A\: entity work.blk_mem_gen_0_blk_mem_gen_mux
     port map (
      addra(4 downto 0) => addra(16 downto 12),
      clka => clka,
      douta(7 downto 0) => douta(7 downto 0),
      douta_array(151 downto 0) => douta_array(151 downto 0),
      ena => ena,
      wea(0) => wea(0)
    );
\ramloop[0].ram.r\: entity work.blk_mem_gen_0_blk_mem_gen_prim_width
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      clka => clka,
      dina(7 downto 0) => dina(7 downto 0),
      douta_array(7 downto 0) => douta_array(7 downto 0),
      ena => ena,
      ena_array(0) => ena_array(0),
      wea(0) => wea(0)
    );
\ramloop[10].ram.r\: entity work.\blk_mem_gen_0_blk_mem_gen_prim_width__parameterized9\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      clka => clka,
      dina(7 downto 0) => dina(7 downto 0),
      douta_array(7 downto 0) => douta_array(87 downto 80),
      ena => ena,
      ena_array(0) => ena_array(10),
      wea(0) => wea(0)
    );
\ramloop[11].ram.r\: entity work.\blk_mem_gen_0_blk_mem_gen_prim_width__parameterized10\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      clka => clka,
      dina(7 downto 0) => dina(7 downto 0),
      douta_array(7 downto 0) => douta_array(95 downto 88),
      ena => ena,
      ena_array(0) => ena_array(11),
      wea(0) => wea(0)
    );
\ramloop[12].ram.r\: entity work.\blk_mem_gen_0_blk_mem_gen_prim_width__parameterized11\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      clka => clka,
      dina(7 downto 0) => dina(7 downto 0),
      douta_array(7 downto 0) => douta_array(103 downto 96),
      ena => ena,
      ena_array(0) => ena_array(12),
      wea(0) => wea(0)
    );
\ramloop[13].ram.r\: entity work.\blk_mem_gen_0_blk_mem_gen_prim_width__parameterized12\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      clka => clka,
      dina(7 downto 0) => dina(7 downto 0),
      douta_array(7 downto 0) => douta_array(111 downto 104),
      ena => ena,
      ena_array(0) => ena_array(13),
      wea(0) => wea(0)
    );
\ramloop[14].ram.r\: entity work.\blk_mem_gen_0_blk_mem_gen_prim_width__parameterized13\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      clka => clka,
      dina(7 downto 0) => dina(7 downto 0),
      douta_array(7 downto 0) => douta_array(119 downto 112),
      ena => ena,
      ena_array(0) => ena_array(14),
      wea(0) => wea(0)
    );
\ramloop[15].ram.r\: entity work.\blk_mem_gen_0_blk_mem_gen_prim_width__parameterized14\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      clka => clka,
      dina(7 downto 0) => dina(7 downto 0),
      douta_array(7 downto 0) => douta_array(127 downto 120),
      ena => ena,
      ena_array(0) => ena_array(15),
      wea(0) => wea(0)
    );
\ramloop[16].ram.r\: entity work.\blk_mem_gen_0_blk_mem_gen_prim_width__parameterized15\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      clka => clka,
      dina(7 downto 0) => dina(7 downto 0),
      douta_array(7 downto 0) => douta_array(135 downto 128),
      ena => ena,
      ena_array(0) => ena_array(16),
      wea(0) => wea(0)
    );
\ramloop[17].ram.r\: entity work.\blk_mem_gen_0_blk_mem_gen_prim_width__parameterized16\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      clka => clka,
      dina(7 downto 0) => dina(7 downto 0),
      douta_array(7 downto 0) => douta_array(143 downto 136),
      ena => ena,
      ena_array(0) => ena_array(17),
      wea(0) => wea(0)
    );
\ramloop[18].ram.r\: entity work.\blk_mem_gen_0_blk_mem_gen_prim_width__parameterized17\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      clka => clka,
      dina(7 downto 0) => dina(7 downto 0),
      douta_array(7 downto 0) => douta_array(151 downto 144),
      ena => ena,
      ram_ena => ram_ena,
      wea(0) => wea(0)
    );
\ramloop[1].ram.r\: entity work.\blk_mem_gen_0_blk_mem_gen_prim_width__parameterized0\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      clka => clka,
      dina(7 downto 0) => dina(7 downto 0),
      douta_array(7 downto 0) => douta_array(15 downto 8),
      ena => ena,
      ena_array(0) => ena_array(1),
      wea(0) => wea(0)
    );
\ramloop[2].ram.r\: entity work.\blk_mem_gen_0_blk_mem_gen_prim_width__parameterized1\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      clka => clka,
      dina(7 downto 0) => dina(7 downto 0),
      douta_array(7 downto 0) => douta_array(23 downto 16),
      ena => ena,
      ena_array(0) => ena_array(2),
      wea(0) => wea(0)
    );
\ramloop[3].ram.r\: entity work.\blk_mem_gen_0_blk_mem_gen_prim_width__parameterized2\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      clka => clka,
      dina(7 downto 0) => dina(7 downto 0),
      douta_array(7 downto 0) => douta_array(31 downto 24),
      ena => ena,
      ena_array(0) => ena_array(3),
      wea(0) => wea(0)
    );
\ramloop[4].ram.r\: entity work.\blk_mem_gen_0_blk_mem_gen_prim_width__parameterized3\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      clka => clka,
      dina(7 downto 0) => dina(7 downto 0),
      douta_array(7 downto 0) => douta_array(39 downto 32),
      ena => ena,
      ena_array(0) => ena_array(4),
      wea(0) => wea(0)
    );
\ramloop[5].ram.r\: entity work.\blk_mem_gen_0_blk_mem_gen_prim_width__parameterized4\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      clka => clka,
      dina(7 downto 0) => dina(7 downto 0),
      douta_array(7 downto 0) => douta_array(47 downto 40),
      ena => ena,
      ena_array(0) => ena_array(5),
      wea(0) => wea(0)
    );
\ramloop[6].ram.r\: entity work.\blk_mem_gen_0_blk_mem_gen_prim_width__parameterized5\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      clka => clka,
      dina(7 downto 0) => dina(7 downto 0),
      douta_array(7 downto 0) => douta_array(55 downto 48),
      ena => ena,
      ena_array(0) => ena_array(6),
      wea(0) => wea(0)
    );
\ramloop[7].ram.r\: entity work.\blk_mem_gen_0_blk_mem_gen_prim_width__parameterized6\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      clka => clka,
      dina(7 downto 0) => dina(7 downto 0),
      douta_array(7 downto 0) => douta_array(63 downto 56),
      ena => ena,
      ena_array(0) => ena_array(7),
      wea(0) => wea(0)
    );
\ramloop[8].ram.r\: entity work.\blk_mem_gen_0_blk_mem_gen_prim_width__parameterized7\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      clka => clka,
      dina(7 downto 0) => dina(7 downto 0),
      douta_array(7 downto 0) => douta_array(71 downto 64),
      ena => ena,
      ena_array(0) => ena_array(8),
      wea(0) => wea(0)
    );
\ramloop[9].ram.r\: entity work.\blk_mem_gen_0_blk_mem_gen_prim_width__parameterized8\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      clka => clka,
      dina(7 downto 0) => dina(7 downto 0),
      douta_array(7 downto 0) => douta_array(79 downto 72),
      ena => ena,
      ena_array(0) => ena_array(9),
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity blk_mem_gen_0_blk_mem_gen_top is
  port (
    douta : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 16 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of blk_mem_gen_0_blk_mem_gen_top : entity is "blk_mem_gen_top";
end blk_mem_gen_0_blk_mem_gen_top;

architecture STRUCTURE of blk_mem_gen_0_blk_mem_gen_top is
begin
\valid.cstr\: entity work.blk_mem_gen_0_blk_mem_gen_generic_cstr
     port map (
      addra(16 downto 0) => addra(16 downto 0),
      clka => clka,
      dina(7 downto 0) => dina(7 downto 0),
      douta(7 downto 0) => douta(7 downto 0),
      ena => ena,
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity blk_mem_gen_0_blk_mem_gen_v8_3_2_synth is
  port (
    douta : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 16 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of blk_mem_gen_0_blk_mem_gen_v8_3_2_synth : entity is "blk_mem_gen_v8_3_2_synth";
end blk_mem_gen_0_blk_mem_gen_v8_3_2_synth;

architecture STRUCTURE of blk_mem_gen_0_blk_mem_gen_v8_3_2_synth is
begin
\gnbram.gnativebmg.native_blk_mem_gen\: entity work.blk_mem_gen_0_blk_mem_gen_top
     port map (
      addra(16 downto 0) => addra(16 downto 0),
      clka => clka,
      dina(7 downto 0) => dina(7 downto 0),
      douta(7 downto 0) => douta(7 downto 0),
      ena => ena,
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity blk_mem_gen_0_blk_mem_gen_v8_3_2 is
  port (
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    regcea : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 16 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    regceb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 0 to 0 );
    addrb : in STD_LOGIC_VECTOR ( 16 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    injectsbiterr : in STD_LOGIC;
    injectdbiterr : in STD_LOGIC;
    eccpipece : in STD_LOGIC;
    sbiterr : out STD_LOGIC;
    dbiterr : out STD_LOGIC;
    rdaddrecc : out STD_LOGIC_VECTOR ( 16 downto 0 );
    sleep : in STD_LOGIC;
    deepsleep : in STD_LOGIC;
    shutdown : in STD_LOGIC;
    rsta_busy : out STD_LOGIC;
    rstb_busy : out STD_LOGIC;
    s_aclk : in STD_LOGIC;
    s_aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_injectsbiterr : in STD_LOGIC;
    s_axi_injectdbiterr : in STD_LOGIC;
    s_axi_sbiterr : out STD_LOGIC;
    s_axi_dbiterr : out STD_LOGIC;
    s_axi_rdaddrecc : out STD_LOGIC_VECTOR ( 16 downto 0 )
  );
  attribute C_ADDRA_WIDTH : integer;
  attribute C_ADDRA_WIDTH of blk_mem_gen_0_blk_mem_gen_v8_3_2 : entity is 17;
  attribute C_ADDRB_WIDTH : integer;
  attribute C_ADDRB_WIDTH of blk_mem_gen_0_blk_mem_gen_v8_3_2 : entity is 17;
  attribute C_ALGORITHM : integer;
  attribute C_ALGORITHM of blk_mem_gen_0_blk_mem_gen_v8_3_2 : entity is 1;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of blk_mem_gen_0_blk_mem_gen_v8_3_2 : entity is 4;
  attribute C_AXI_SLAVE_TYPE : integer;
  attribute C_AXI_SLAVE_TYPE of blk_mem_gen_0_blk_mem_gen_v8_3_2 : entity is 0;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of blk_mem_gen_0_blk_mem_gen_v8_3_2 : entity is 1;
  attribute C_BYTE_SIZE : integer;
  attribute C_BYTE_SIZE of blk_mem_gen_0_blk_mem_gen_v8_3_2 : entity is 9;
  attribute C_COMMON_CLK : integer;
  attribute C_COMMON_CLK of blk_mem_gen_0_blk_mem_gen_v8_3_2 : entity is 0;
  attribute C_COUNT_18K_BRAM : string;
  attribute C_COUNT_18K_BRAM of blk_mem_gen_0_blk_mem_gen_v8_3_2 : entity is "0";
  attribute C_COUNT_36K_BRAM : string;
  attribute C_COUNT_36K_BRAM of blk_mem_gen_0_blk_mem_gen_v8_3_2 : entity is "19";
  attribute C_CTRL_ECC_ALGO : string;
  attribute C_CTRL_ECC_ALGO of blk_mem_gen_0_blk_mem_gen_v8_3_2 : entity is "NONE";
  attribute C_DEFAULT_DATA : string;
  attribute C_DEFAULT_DATA of blk_mem_gen_0_blk_mem_gen_v8_3_2 : entity is "0";
  attribute C_DISABLE_WARN_BHV_COLL : integer;
  attribute C_DISABLE_WARN_BHV_COLL of blk_mem_gen_0_blk_mem_gen_v8_3_2 : entity is 0;
  attribute C_DISABLE_WARN_BHV_RANGE : integer;
  attribute C_DISABLE_WARN_BHV_RANGE of blk_mem_gen_0_blk_mem_gen_v8_3_2 : entity is 0;
  attribute C_ELABORATION_DIR : string;
  attribute C_ELABORATION_DIR of blk_mem_gen_0_blk_mem_gen_v8_3_2 : entity is "./";
  attribute C_ENABLE_32BIT_ADDRESS : integer;
  attribute C_ENABLE_32BIT_ADDRESS of blk_mem_gen_0_blk_mem_gen_v8_3_2 : entity is 0;
  attribute C_EN_DEEPSLEEP_PIN : integer;
  attribute C_EN_DEEPSLEEP_PIN of blk_mem_gen_0_blk_mem_gen_v8_3_2 : entity is 0;
  attribute C_EN_ECC_PIPE : integer;
  attribute C_EN_ECC_PIPE of blk_mem_gen_0_blk_mem_gen_v8_3_2 : entity is 0;
  attribute C_EN_RDADDRA_CHG : integer;
  attribute C_EN_RDADDRA_CHG of blk_mem_gen_0_blk_mem_gen_v8_3_2 : entity is 0;
  attribute C_EN_RDADDRB_CHG : integer;
  attribute C_EN_RDADDRB_CHG of blk_mem_gen_0_blk_mem_gen_v8_3_2 : entity is 0;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of blk_mem_gen_0_blk_mem_gen_v8_3_2 : entity is 0;
  attribute C_EN_SHUTDOWN_PIN : integer;
  attribute C_EN_SHUTDOWN_PIN of blk_mem_gen_0_blk_mem_gen_v8_3_2 : entity is 0;
  attribute C_EN_SLEEP_PIN : integer;
  attribute C_EN_SLEEP_PIN of blk_mem_gen_0_blk_mem_gen_v8_3_2 : entity is 0;
  attribute C_EST_POWER_SUMMARY : string;
  attribute C_EST_POWER_SUMMARY of blk_mem_gen_0_blk_mem_gen_v8_3_2 : entity is "Estimated Power for IP     :     2.20835 mW";
  attribute C_FAMILY : string;
  attribute C_FAMILY of blk_mem_gen_0_blk_mem_gen_v8_3_2 : entity is "zynq";
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of blk_mem_gen_0_blk_mem_gen_v8_3_2 : entity is 0;
  attribute C_HAS_ENA : integer;
  attribute C_HAS_ENA of blk_mem_gen_0_blk_mem_gen_v8_3_2 : entity is 1;
  attribute C_HAS_ENB : integer;
  attribute C_HAS_ENB of blk_mem_gen_0_blk_mem_gen_v8_3_2 : entity is 0;
  attribute C_HAS_INJECTERR : integer;
  attribute C_HAS_INJECTERR of blk_mem_gen_0_blk_mem_gen_v8_3_2 : entity is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_A : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_A of blk_mem_gen_0_blk_mem_gen_v8_3_2 : entity is 1;
  attribute C_HAS_MEM_OUTPUT_REGS_B : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_B of blk_mem_gen_0_blk_mem_gen_v8_3_2 : entity is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_A : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_A of blk_mem_gen_0_blk_mem_gen_v8_3_2 : entity is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_B : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_B of blk_mem_gen_0_blk_mem_gen_v8_3_2 : entity is 0;
  attribute C_HAS_REGCEA : integer;
  attribute C_HAS_REGCEA of blk_mem_gen_0_blk_mem_gen_v8_3_2 : entity is 0;
  attribute C_HAS_REGCEB : integer;
  attribute C_HAS_REGCEB of blk_mem_gen_0_blk_mem_gen_v8_3_2 : entity is 0;
  attribute C_HAS_RSTA : integer;
  attribute C_HAS_RSTA of blk_mem_gen_0_blk_mem_gen_v8_3_2 : entity is 0;
  attribute C_HAS_RSTB : integer;
  attribute C_HAS_RSTB of blk_mem_gen_0_blk_mem_gen_v8_3_2 : entity is 0;
  attribute C_HAS_SOFTECC_INPUT_REGS_A : integer;
  attribute C_HAS_SOFTECC_INPUT_REGS_A of blk_mem_gen_0_blk_mem_gen_v8_3_2 : entity is 0;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B : integer;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B of blk_mem_gen_0_blk_mem_gen_v8_3_2 : entity is 0;
  attribute C_INITA_VAL : string;
  attribute C_INITA_VAL of blk_mem_gen_0_blk_mem_gen_v8_3_2 : entity is "0";
  attribute C_INITB_VAL : string;
  attribute C_INITB_VAL of blk_mem_gen_0_blk_mem_gen_v8_3_2 : entity is "0";
  attribute C_INIT_FILE : string;
  attribute C_INIT_FILE of blk_mem_gen_0_blk_mem_gen_v8_3_2 : entity is "blk_mem_gen_0.mem";
  attribute C_INIT_FILE_NAME : string;
  attribute C_INIT_FILE_NAME of blk_mem_gen_0_blk_mem_gen_v8_3_2 : entity is "blk_mem_gen_0.mif";
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of blk_mem_gen_0_blk_mem_gen_v8_3_2 : entity is 0;
  attribute C_LOAD_INIT_FILE : integer;
  attribute C_LOAD_INIT_FILE of blk_mem_gen_0_blk_mem_gen_v8_3_2 : entity is 1;
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of blk_mem_gen_0_blk_mem_gen_v8_3_2 : entity is 0;
  attribute C_MUX_PIPELINE_STAGES : integer;
  attribute C_MUX_PIPELINE_STAGES of blk_mem_gen_0_blk_mem_gen_v8_3_2 : entity is 0;
  attribute C_PRIM_TYPE : integer;
  attribute C_PRIM_TYPE of blk_mem_gen_0_blk_mem_gen_v8_3_2 : entity is 1;
  attribute C_READ_DEPTH_A : integer;
  attribute C_READ_DEPTH_A of blk_mem_gen_0_blk_mem_gen_v8_3_2 : entity is 76800;
  attribute C_READ_DEPTH_B : integer;
  attribute C_READ_DEPTH_B of blk_mem_gen_0_blk_mem_gen_v8_3_2 : entity is 76800;
  attribute C_READ_WIDTH_A : integer;
  attribute C_READ_WIDTH_A of blk_mem_gen_0_blk_mem_gen_v8_3_2 : entity is 8;
  attribute C_READ_WIDTH_B : integer;
  attribute C_READ_WIDTH_B of blk_mem_gen_0_blk_mem_gen_v8_3_2 : entity is 8;
  attribute C_RSTRAM_A : integer;
  attribute C_RSTRAM_A of blk_mem_gen_0_blk_mem_gen_v8_3_2 : entity is 0;
  attribute C_RSTRAM_B : integer;
  attribute C_RSTRAM_B of blk_mem_gen_0_blk_mem_gen_v8_3_2 : entity is 0;
  attribute C_RST_PRIORITY_A : string;
  attribute C_RST_PRIORITY_A of blk_mem_gen_0_blk_mem_gen_v8_3_2 : entity is "CE";
  attribute C_RST_PRIORITY_B : string;
  attribute C_RST_PRIORITY_B of blk_mem_gen_0_blk_mem_gen_v8_3_2 : entity is "CE";
  attribute C_SIM_COLLISION_CHECK : string;
  attribute C_SIM_COLLISION_CHECK of blk_mem_gen_0_blk_mem_gen_v8_3_2 : entity is "ALL";
  attribute C_USE_BRAM_BLOCK : integer;
  attribute C_USE_BRAM_BLOCK of blk_mem_gen_0_blk_mem_gen_v8_3_2 : entity is 0;
  attribute C_USE_BYTE_WEA : integer;
  attribute C_USE_BYTE_WEA of blk_mem_gen_0_blk_mem_gen_v8_3_2 : entity is 0;
  attribute C_USE_BYTE_WEB : integer;
  attribute C_USE_BYTE_WEB of blk_mem_gen_0_blk_mem_gen_v8_3_2 : entity is 0;
  attribute C_USE_DEFAULT_DATA : integer;
  attribute C_USE_DEFAULT_DATA of blk_mem_gen_0_blk_mem_gen_v8_3_2 : entity is 0;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of blk_mem_gen_0_blk_mem_gen_v8_3_2 : entity is 0;
  attribute C_USE_SOFTECC : integer;
  attribute C_USE_SOFTECC of blk_mem_gen_0_blk_mem_gen_v8_3_2 : entity is 0;
  attribute C_USE_URAM : integer;
  attribute C_USE_URAM of blk_mem_gen_0_blk_mem_gen_v8_3_2 : entity is 0;
  attribute C_WEA_WIDTH : integer;
  attribute C_WEA_WIDTH of blk_mem_gen_0_blk_mem_gen_v8_3_2 : entity is 1;
  attribute C_WEB_WIDTH : integer;
  attribute C_WEB_WIDTH of blk_mem_gen_0_blk_mem_gen_v8_3_2 : entity is 1;
  attribute C_WRITE_DEPTH_A : integer;
  attribute C_WRITE_DEPTH_A of blk_mem_gen_0_blk_mem_gen_v8_3_2 : entity is 76800;
  attribute C_WRITE_DEPTH_B : integer;
  attribute C_WRITE_DEPTH_B of blk_mem_gen_0_blk_mem_gen_v8_3_2 : entity is 76800;
  attribute C_WRITE_MODE_A : string;
  attribute C_WRITE_MODE_A of blk_mem_gen_0_blk_mem_gen_v8_3_2 : entity is "NO_CHANGE";
  attribute C_WRITE_MODE_B : string;
  attribute C_WRITE_MODE_B of blk_mem_gen_0_blk_mem_gen_v8_3_2 : entity is "WRITE_FIRST";
  attribute C_WRITE_WIDTH_A : integer;
  attribute C_WRITE_WIDTH_A of blk_mem_gen_0_blk_mem_gen_v8_3_2 : entity is 8;
  attribute C_WRITE_WIDTH_B : integer;
  attribute C_WRITE_WIDTH_B of blk_mem_gen_0_blk_mem_gen_v8_3_2 : entity is 8;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of blk_mem_gen_0_blk_mem_gen_v8_3_2 : entity is "zynq";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of blk_mem_gen_0_blk_mem_gen_v8_3_2 : entity is "blk_mem_gen_v8_3_2";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of blk_mem_gen_0_blk_mem_gen_v8_3_2 : entity is "yes";
end blk_mem_gen_0_blk_mem_gen_v8_3_2;

architecture STRUCTURE of blk_mem_gen_0_blk_mem_gen_v8_3_2 is
  signal \<const0>\ : STD_LOGIC;
begin
  dbiterr <= \<const0>\;
  doutb(7) <= \<const0>\;
  doutb(6) <= \<const0>\;
  doutb(5) <= \<const0>\;
  doutb(4) <= \<const0>\;
  doutb(3) <= \<const0>\;
  doutb(2) <= \<const0>\;
  doutb(1) <= \<const0>\;
  doutb(0) <= \<const0>\;
  rdaddrecc(16) <= \<const0>\;
  rdaddrecc(15) <= \<const0>\;
  rdaddrecc(14) <= \<const0>\;
  rdaddrecc(13) <= \<const0>\;
  rdaddrecc(12) <= \<const0>\;
  rdaddrecc(11) <= \<const0>\;
  rdaddrecc(10) <= \<const0>\;
  rdaddrecc(9) <= \<const0>\;
  rdaddrecc(8) <= \<const0>\;
  rdaddrecc(7) <= \<const0>\;
  rdaddrecc(6) <= \<const0>\;
  rdaddrecc(5) <= \<const0>\;
  rdaddrecc(4) <= \<const0>\;
  rdaddrecc(3) <= \<const0>\;
  rdaddrecc(2) <= \<const0>\;
  rdaddrecc(1) <= \<const0>\;
  rdaddrecc(0) <= \<const0>\;
  rsta_busy <= \<const0>\;
  rstb_busy <= \<const0>\;
  s_axi_arready <= \<const0>\;
  s_axi_awready <= \<const0>\;
  s_axi_bid(3) <= \<const0>\;
  s_axi_bid(2) <= \<const0>\;
  s_axi_bid(1) <= \<const0>\;
  s_axi_bid(0) <= \<const0>\;
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_bvalid <= \<const0>\;
  s_axi_dbiterr <= \<const0>\;
  s_axi_rdaddrecc(16) <= \<const0>\;
  s_axi_rdaddrecc(15) <= \<const0>\;
  s_axi_rdaddrecc(14) <= \<const0>\;
  s_axi_rdaddrecc(13) <= \<const0>\;
  s_axi_rdaddrecc(12) <= \<const0>\;
  s_axi_rdaddrecc(11) <= \<const0>\;
  s_axi_rdaddrecc(10) <= \<const0>\;
  s_axi_rdaddrecc(9) <= \<const0>\;
  s_axi_rdaddrecc(8) <= \<const0>\;
  s_axi_rdaddrecc(7) <= \<const0>\;
  s_axi_rdaddrecc(6) <= \<const0>\;
  s_axi_rdaddrecc(5) <= \<const0>\;
  s_axi_rdaddrecc(4) <= \<const0>\;
  s_axi_rdaddrecc(3) <= \<const0>\;
  s_axi_rdaddrecc(2) <= \<const0>\;
  s_axi_rdaddrecc(1) <= \<const0>\;
  s_axi_rdaddrecc(0) <= \<const0>\;
  s_axi_rdata(7) <= \<const0>\;
  s_axi_rdata(6) <= \<const0>\;
  s_axi_rdata(5) <= \<const0>\;
  s_axi_rdata(4) <= \<const0>\;
  s_axi_rdata(3) <= \<const0>\;
  s_axi_rdata(2) <= \<const0>\;
  s_axi_rdata(1) <= \<const0>\;
  s_axi_rdata(0) <= \<const0>\;
  s_axi_rid(3) <= \<const0>\;
  s_axi_rid(2) <= \<const0>\;
  s_axi_rid(1) <= \<const0>\;
  s_axi_rid(0) <= \<const0>\;
  s_axi_rlast <= \<const0>\;
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
  s_axi_rvalid <= \<const0>\;
  s_axi_sbiterr <= \<const0>\;
  s_axi_wready <= \<const0>\;
  sbiterr <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst_blk_mem_gen: entity work.blk_mem_gen_0_blk_mem_gen_v8_3_2_synth
     port map (
      addra(16 downto 0) => addra(16 downto 0),
      clka => clka,
      dina(7 downto 0) => dina(7 downto 0),
      douta(7 downto 0) => douta(7 downto 0),
      ena => ena,
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity blk_mem_gen_0 is
  port (
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 16 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of blk_mem_gen_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of blk_mem_gen_0 : entity is "blk_mem_gen_0,blk_mem_gen_v8_3_2,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of blk_mem_gen_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of blk_mem_gen_0 : entity is "blk_mem_gen_v8_3_2,Vivado 2016.1";
end blk_mem_gen_0;

architecture STRUCTURE of blk_mem_gen_0 is
  signal NLW_U0_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rsta_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rstb_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_doutb_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_rdaddrecc_UNCONNECTED : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal NLW_U0_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_rdaddrecc_UNCONNECTED : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal NLW_U0_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_ADDRA_WIDTH : integer;
  attribute C_ADDRA_WIDTH of U0 : label is 17;
  attribute C_ADDRB_WIDTH : integer;
  attribute C_ADDRB_WIDTH of U0 : label is 17;
  attribute C_ALGORITHM : integer;
  attribute C_ALGORITHM of U0 : label is 1;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of U0 : label is 4;
  attribute C_AXI_SLAVE_TYPE : integer;
  attribute C_AXI_SLAVE_TYPE of U0 : label is 0;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of U0 : label is 1;
  attribute C_BYTE_SIZE : integer;
  attribute C_BYTE_SIZE of U0 : label is 9;
  attribute C_COMMON_CLK : integer;
  attribute C_COMMON_CLK of U0 : label is 0;
  attribute C_COUNT_18K_BRAM : string;
  attribute C_COUNT_18K_BRAM of U0 : label is "0";
  attribute C_COUNT_36K_BRAM : string;
  attribute C_COUNT_36K_BRAM of U0 : label is "19";
  attribute C_CTRL_ECC_ALGO : string;
  attribute C_CTRL_ECC_ALGO of U0 : label is "NONE";
  attribute C_DEFAULT_DATA : string;
  attribute C_DEFAULT_DATA of U0 : label is "0";
  attribute C_DISABLE_WARN_BHV_COLL : integer;
  attribute C_DISABLE_WARN_BHV_COLL of U0 : label is 0;
  attribute C_DISABLE_WARN_BHV_RANGE : integer;
  attribute C_DISABLE_WARN_BHV_RANGE of U0 : label is 0;
  attribute C_ELABORATION_DIR : string;
  attribute C_ELABORATION_DIR of U0 : label is "./";
  attribute C_ENABLE_32BIT_ADDRESS : integer;
  attribute C_ENABLE_32BIT_ADDRESS of U0 : label is 0;
  attribute C_EN_DEEPSLEEP_PIN : integer;
  attribute C_EN_DEEPSLEEP_PIN of U0 : label is 0;
  attribute C_EN_ECC_PIPE : integer;
  attribute C_EN_ECC_PIPE of U0 : label is 0;
  attribute C_EN_RDADDRA_CHG : integer;
  attribute C_EN_RDADDRA_CHG of U0 : label is 0;
  attribute C_EN_RDADDRB_CHG : integer;
  attribute C_EN_RDADDRB_CHG of U0 : label is 0;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of U0 : label is 0;
  attribute C_EN_SHUTDOWN_PIN : integer;
  attribute C_EN_SHUTDOWN_PIN of U0 : label is 0;
  attribute C_EN_SLEEP_PIN : integer;
  attribute C_EN_SLEEP_PIN of U0 : label is 0;
  attribute C_EST_POWER_SUMMARY : string;
  attribute C_EST_POWER_SUMMARY of U0 : label is "Estimated Power for IP     :     2.20835 mW";
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "zynq";
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of U0 : label is 0;
  attribute C_HAS_ENA : integer;
  attribute C_HAS_ENA of U0 : label is 1;
  attribute C_HAS_ENB : integer;
  attribute C_HAS_ENB of U0 : label is 0;
  attribute C_HAS_INJECTERR : integer;
  attribute C_HAS_INJECTERR of U0 : label is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_A : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_A of U0 : label is 1;
  attribute C_HAS_MEM_OUTPUT_REGS_B : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_A : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_A of U0 : label is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_B : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_HAS_REGCEA : integer;
  attribute C_HAS_REGCEA of U0 : label is 0;
  attribute C_HAS_REGCEB : integer;
  attribute C_HAS_REGCEB of U0 : label is 0;
  attribute C_HAS_RSTA : integer;
  attribute C_HAS_RSTA of U0 : label is 0;
  attribute C_HAS_RSTB : integer;
  attribute C_HAS_RSTB of U0 : label is 0;
  attribute C_HAS_SOFTECC_INPUT_REGS_A : integer;
  attribute C_HAS_SOFTECC_INPUT_REGS_A of U0 : label is 0;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B : integer;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_INITA_VAL : string;
  attribute C_INITA_VAL of U0 : label is "0";
  attribute C_INITB_VAL : string;
  attribute C_INITB_VAL of U0 : label is "0";
  attribute C_INIT_FILE : string;
  attribute C_INIT_FILE of U0 : label is "blk_mem_gen_0.mem";
  attribute C_INIT_FILE_NAME : string;
  attribute C_INIT_FILE_NAME of U0 : label is "blk_mem_gen_0.mif";
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of U0 : label is 0;
  attribute C_LOAD_INIT_FILE : integer;
  attribute C_LOAD_INIT_FILE of U0 : label is 1;
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of U0 : label is 0;
  attribute C_MUX_PIPELINE_STAGES : integer;
  attribute C_MUX_PIPELINE_STAGES of U0 : label is 0;
  attribute C_PRIM_TYPE : integer;
  attribute C_PRIM_TYPE of U0 : label is 1;
  attribute C_READ_DEPTH_A : integer;
  attribute C_READ_DEPTH_A of U0 : label is 76800;
  attribute C_READ_DEPTH_B : integer;
  attribute C_READ_DEPTH_B of U0 : label is 76800;
  attribute C_READ_WIDTH_A : integer;
  attribute C_READ_WIDTH_A of U0 : label is 8;
  attribute C_READ_WIDTH_B : integer;
  attribute C_READ_WIDTH_B of U0 : label is 8;
  attribute C_RSTRAM_A : integer;
  attribute C_RSTRAM_A of U0 : label is 0;
  attribute C_RSTRAM_B : integer;
  attribute C_RSTRAM_B of U0 : label is 0;
  attribute C_RST_PRIORITY_A : string;
  attribute C_RST_PRIORITY_A of U0 : label is "CE";
  attribute C_RST_PRIORITY_B : string;
  attribute C_RST_PRIORITY_B of U0 : label is "CE";
  attribute C_SIM_COLLISION_CHECK : string;
  attribute C_SIM_COLLISION_CHECK of U0 : label is "ALL";
  attribute C_USE_BRAM_BLOCK : integer;
  attribute C_USE_BRAM_BLOCK of U0 : label is 0;
  attribute C_USE_BYTE_WEA : integer;
  attribute C_USE_BYTE_WEA of U0 : label is 0;
  attribute C_USE_BYTE_WEB : integer;
  attribute C_USE_BYTE_WEB of U0 : label is 0;
  attribute C_USE_DEFAULT_DATA : integer;
  attribute C_USE_DEFAULT_DATA of U0 : label is 0;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of U0 : label is 0;
  attribute C_USE_SOFTECC : integer;
  attribute C_USE_SOFTECC of U0 : label is 0;
  attribute C_USE_URAM : integer;
  attribute C_USE_URAM of U0 : label is 0;
  attribute C_WEA_WIDTH : integer;
  attribute C_WEA_WIDTH of U0 : label is 1;
  attribute C_WEB_WIDTH : integer;
  attribute C_WEB_WIDTH of U0 : label is 1;
  attribute C_WRITE_DEPTH_A : integer;
  attribute C_WRITE_DEPTH_A of U0 : label is 76800;
  attribute C_WRITE_DEPTH_B : integer;
  attribute C_WRITE_DEPTH_B of U0 : label is 76800;
  attribute C_WRITE_MODE_A : string;
  attribute C_WRITE_MODE_A of U0 : label is "NO_CHANGE";
  attribute C_WRITE_MODE_B : string;
  attribute C_WRITE_MODE_B of U0 : label is "WRITE_FIRST";
  attribute C_WRITE_WIDTH_A : integer;
  attribute C_WRITE_WIDTH_A of U0 : label is 8;
  attribute C_WRITE_WIDTH_B : integer;
  attribute C_WRITE_WIDTH_B of U0 : label is 8;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of U0 : label is "zynq";
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of U0 : label is "true";
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
begin
U0: entity work.blk_mem_gen_0_blk_mem_gen_v8_3_2
     port map (
      addra(16 downto 0) => addra(16 downto 0),
      addrb(16 downto 0) => B"00000000000000000",
      clka => clka,
      clkb => '0',
      dbiterr => NLW_U0_dbiterr_UNCONNECTED,
      deepsleep => '0',
      dina(7 downto 0) => dina(7 downto 0),
      dinb(7 downto 0) => B"00000000",
      douta(7 downto 0) => douta(7 downto 0),
      doutb(7 downto 0) => NLW_U0_doutb_UNCONNECTED(7 downto 0),
      eccpipece => '0',
      ena => ena,
      enb => '0',
      injectdbiterr => '0',
      injectsbiterr => '0',
      rdaddrecc(16 downto 0) => NLW_U0_rdaddrecc_UNCONNECTED(16 downto 0),
      regcea => '0',
      regceb => '0',
      rsta => '0',
      rsta_busy => NLW_U0_rsta_busy_UNCONNECTED,
      rstb => '0',
      rstb_busy => NLW_U0_rstb_busy_UNCONNECTED,
      s_aclk => '0',
      s_aresetn => '0',
      s_axi_araddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_arburst(1 downto 0) => B"00",
      s_axi_arid(3 downto 0) => B"0000",
      s_axi_arlen(7 downto 0) => B"00000000",
      s_axi_arready => NLW_U0_s_axi_arready_UNCONNECTED,
      s_axi_arsize(2 downto 0) => B"000",
      s_axi_arvalid => '0',
      s_axi_awaddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_awburst(1 downto 0) => B"00",
      s_axi_awid(3 downto 0) => B"0000",
      s_axi_awlen(7 downto 0) => B"00000000",
      s_axi_awready => NLW_U0_s_axi_awready_UNCONNECTED,
      s_axi_awsize(2 downto 0) => B"000",
      s_axi_awvalid => '0',
      s_axi_bid(3 downto 0) => NLW_U0_s_axi_bid_UNCONNECTED(3 downto 0),
      s_axi_bready => '0',
      s_axi_bresp(1 downto 0) => NLW_U0_s_axi_bresp_UNCONNECTED(1 downto 0),
      s_axi_bvalid => NLW_U0_s_axi_bvalid_UNCONNECTED,
      s_axi_dbiterr => NLW_U0_s_axi_dbiterr_UNCONNECTED,
      s_axi_injectdbiterr => '0',
      s_axi_injectsbiterr => '0',
      s_axi_rdaddrecc(16 downto 0) => NLW_U0_s_axi_rdaddrecc_UNCONNECTED(16 downto 0),
      s_axi_rdata(7 downto 0) => NLW_U0_s_axi_rdata_UNCONNECTED(7 downto 0),
      s_axi_rid(3 downto 0) => NLW_U0_s_axi_rid_UNCONNECTED(3 downto 0),
      s_axi_rlast => NLW_U0_s_axi_rlast_UNCONNECTED,
      s_axi_rready => '0',
      s_axi_rresp(1 downto 0) => NLW_U0_s_axi_rresp_UNCONNECTED(1 downto 0),
      s_axi_rvalid => NLW_U0_s_axi_rvalid_UNCONNECTED,
      s_axi_sbiterr => NLW_U0_s_axi_sbiterr_UNCONNECTED,
      s_axi_wdata(7 downto 0) => B"00000000",
      s_axi_wlast => '0',
      s_axi_wready => NLW_U0_s_axi_wready_UNCONNECTED,
      s_axi_wstrb(0) => '0',
      s_axi_wvalid => '0',
      sbiterr => NLW_U0_sbiterr_UNCONNECTED,
      shutdown => '0',
      sleep => '0',
      wea(0) => wea(0),
      web(0) => '0'
    );
end STRUCTURE;
