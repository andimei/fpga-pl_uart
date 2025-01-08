-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Tue Jan  7 15:51:45 2025
-- Host        : DESKTOP-5CM83PC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ uart_fifo_axi_hw_inst_1_baudrate_generator_0_sim_netlist.vhdl
-- Design      : uart_fifo_axi_hw_inst_1_baudrate_generator_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_baudrate_generator is
  port (
    o_TICK : out STD_LOGIC;
    i_CLK : in STD_LOGIC;
    i_RESET : in STD_LOGIC;
    i_DVSR : in STD_LOGIC_VECTOR ( 27 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_baudrate_generator;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_baudrate_generator is
  signal load : STD_LOGIC;
  signal o_TICK_INST_0_i_1_n_0 : STD_LOGIC;
  signal \r_next1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \r_next1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \r_next1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \r_next1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \r_next1_carry__0_n_0\ : STD_LOGIC;
  signal \r_next1_carry__0_n_1\ : STD_LOGIC;
  signal \r_next1_carry__0_n_2\ : STD_LOGIC;
  signal \r_next1_carry__0_n_3\ : STD_LOGIC;
  signal \r_next1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \r_next1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \r_next1_carry__1_n_2\ : STD_LOGIC;
  signal \r_next1_carry__1_n_3\ : STD_LOGIC;
  signal r_next1_carry_i_1_n_0 : STD_LOGIC;
  signal r_next1_carry_i_2_n_0 : STD_LOGIC;
  signal r_next1_carry_i_3_n_0 : STD_LOGIC;
  signal r_next1_carry_i_4_n_0 : STD_LOGIC;
  signal r_next1_carry_n_0 : STD_LOGIC;
  signal r_next1_carry_n_1 : STD_LOGIC;
  signal r_next1_carry_n_2 : STD_LOGIC;
  signal r_next1_carry_n_3 : STD_LOGIC;
  signal r_next2 : STD_LOGIC_VECTOR ( 27 downto 1 );
  signal \r_next2_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \r_next2_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \r_next2_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \r_next2_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \r_next2_carry__0_n_0\ : STD_LOGIC;
  signal \r_next2_carry__0_n_1\ : STD_LOGIC;
  signal \r_next2_carry__0_n_2\ : STD_LOGIC;
  signal \r_next2_carry__0_n_3\ : STD_LOGIC;
  signal \r_next2_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \r_next2_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \r_next2_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \r_next2_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \r_next2_carry__1_n_0\ : STD_LOGIC;
  signal \r_next2_carry__1_n_1\ : STD_LOGIC;
  signal \r_next2_carry__1_n_2\ : STD_LOGIC;
  signal \r_next2_carry__1_n_3\ : STD_LOGIC;
  signal \r_next2_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \r_next2_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \r_next2_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \r_next2_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \r_next2_carry__2_n_0\ : STD_LOGIC;
  signal \r_next2_carry__2_n_1\ : STD_LOGIC;
  signal \r_next2_carry__2_n_2\ : STD_LOGIC;
  signal \r_next2_carry__2_n_3\ : STD_LOGIC;
  signal \r_next2_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \r_next2_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \r_next2_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \r_next2_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \r_next2_carry__3_n_0\ : STD_LOGIC;
  signal \r_next2_carry__3_n_1\ : STD_LOGIC;
  signal \r_next2_carry__3_n_2\ : STD_LOGIC;
  signal \r_next2_carry__3_n_3\ : STD_LOGIC;
  signal \r_next2_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \r_next2_carry__4_i_2_n_0\ : STD_LOGIC;
  signal \r_next2_carry__4_i_3_n_0\ : STD_LOGIC;
  signal \r_next2_carry__4_i_4_n_0\ : STD_LOGIC;
  signal \r_next2_carry__4_n_0\ : STD_LOGIC;
  signal \r_next2_carry__4_n_1\ : STD_LOGIC;
  signal \r_next2_carry__4_n_2\ : STD_LOGIC;
  signal \r_next2_carry__4_n_3\ : STD_LOGIC;
  signal \r_next2_carry__5_i_1_n_0\ : STD_LOGIC;
  signal \r_next2_carry__5_i_2_n_0\ : STD_LOGIC;
  signal \r_next2_carry__5_i_3_n_0\ : STD_LOGIC;
  signal \r_next2_carry__5_n_0\ : STD_LOGIC;
  signal \r_next2_carry__5_n_2\ : STD_LOGIC;
  signal \r_next2_carry__5_n_3\ : STD_LOGIC;
  signal r_next2_carry_i_1_n_0 : STD_LOGIC;
  signal r_next2_carry_i_2_n_0 : STD_LOGIC;
  signal r_next2_carry_i_3_n_0 : STD_LOGIC;
  signal r_next2_carry_i_4_n_0 : STD_LOGIC;
  signal r_next2_carry_n_0 : STD_LOGIC;
  signal r_next2_carry_n_1 : STD_LOGIC;
  signal r_next2_carry_n_2 : STD_LOGIC;
  signal r_next2_carry_n_3 : STD_LOGIC;
  signal \r_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_reg[10]_i_1_n_0\ : STD_LOGIC;
  signal \r_reg[10]_i_2_n_0\ : STD_LOGIC;
  signal \r_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \r_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \r_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \r_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \r_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \r_reg[5]_i_2_n_0\ : STD_LOGIC;
  signal \r_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \r_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \r_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \r_reg[9]_i_1_n_0\ : STD_LOGIC;
  signal \r_reg[9]_i_2_n_0\ : STD_LOGIC;
  signal r_reg_reg : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_r_next1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_r_next1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_r_next1_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_r_next1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_r_next2_carry__5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \NLW_r_next2_carry__5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \r_reg[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \r_reg[10]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \r_reg[10]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \r_reg[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \r_reg[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \r_reg[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \r_reg[5]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \r_reg[6]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \r_reg[7]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \r_reg[8]_i_1\ : label is "soft_lutpair0";
begin
o_TICK_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => r_reg_reg(8),
      I1 => r_reg_reg(7),
      I2 => r_reg_reg(6),
      I3 => r_reg_reg(10),
      I4 => r_reg_reg(9),
      I5 => o_TICK_INST_0_i_1_n_0,
      O => o_TICK
    );
o_TICK_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFB"
    )
        port map (
      I0 => r_reg_reg(2),
      I1 => r_reg_reg(0),
      I2 => r_reg_reg(1),
      I3 => r_reg_reg(5),
      I4 => r_reg_reg(3),
      I5 => r_reg_reg(4),
      O => o_TICK_INST_0_i_1_n_0
    );
r_next1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => r_next1_carry_n_0,
      CO(2) => r_next1_carry_n_1,
      CO(1) => r_next1_carry_n_2,
      CO(0) => r_next1_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_r_next1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => r_next1_carry_i_1_n_0,
      S(2) => r_next1_carry_i_2_n_0,
      S(1) => r_next1_carry_i_3_n_0,
      S(0) => r_next1_carry_i_4_n_0
    );
\r_next1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => r_next1_carry_n_0,
      CO(3) => \r_next1_carry__0_n_0\,
      CO(2) => \r_next1_carry__0_n_1\,
      CO(1) => \r_next1_carry__0_n_2\,
      CO(0) => \r_next1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_r_next1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \r_next1_carry__0_i_1_n_0\,
      S(2) => \r_next1_carry__0_i_2_n_0\,
      S(1) => \r_next1_carry__0_i_3_n_0\,
      S(0) => \r_next1_carry__0_i_4_n_0\
    );
\r_next1_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => r_next2(23),
      I1 => r_next2(22),
      I2 => r_next2(21),
      O => \r_next1_carry__0_i_1_n_0\
    );
\r_next1_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => r_next2(20),
      I1 => r_next2(19),
      I2 => r_next2(18),
      O => \r_next1_carry__0_i_2_n_0\
    );
\r_next1_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => r_next2(17),
      I1 => r_next2(16),
      I2 => r_next2(15),
      O => \r_next1_carry__0_i_3_n_0\
    );
\r_next1_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => r_next2(14),
      I1 => r_next2(13),
      I2 => r_next2(12),
      O => \r_next1_carry__0_i_4_n_0\
    );
\r_next1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_next1_carry__0_n_0\,
      CO(3) => \NLW_r_next1_carry__1_CO_UNCONNECTED\(3),
      CO(2) => load,
      CO(1) => \r_next1_carry__1_n_2\,
      CO(0) => \r_next1_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_r_next1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \r_next2_carry__5_n_0\,
      S(1) => \r_next1_carry__1_i_1_n_0\,
      S(0) => \r_next1_carry__1_i_2_n_0\
    );
\r_next1_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \r_next2_carry__5_n_0\,
      I1 => r_next2(27),
      O => \r_next1_carry__1_i_1_n_0\
    );
\r_next1_carry__1_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => r_next2(26),
      I1 => r_next2(25),
      I2 => r_next2(24),
      O => \r_next1_carry__1_i_2_n_0\
    );
r_next1_carry_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"09000009"
    )
        port map (
      I0 => r_reg_reg(9),
      I1 => r_next2(9),
      I2 => r_next2(11),
      I3 => r_next2(10),
      I4 => r_reg_reg(10),
      O => r_next1_carry_i_1_n_0
    );
r_next1_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => r_reg_reg(6),
      I1 => r_next2(6),
      I2 => r_next2(8),
      I3 => r_reg_reg(8),
      I4 => r_next2(7),
      I5 => r_reg_reg(7),
      O => r_next1_carry_i_2_n_0
    );
r_next1_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => r_reg_reg(3),
      I1 => r_next2(3),
      I2 => r_next2(5),
      I3 => r_reg_reg(5),
      I4 => r_next2(4),
      I5 => r_reg_reg(4),
      O => r_next1_carry_i_3_n_0
    );
r_next1_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6006000000006006"
    )
        port map (
      I0 => r_reg_reg(0),
      I1 => i_DVSR(0),
      I2 => r_next2(2),
      I3 => r_reg_reg(2),
      I4 => r_next2(1),
      I5 => r_reg_reg(1),
      O => r_next1_carry_i_4_n_0
    );
r_next2_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => r_next2_carry_n_0,
      CO(2) => r_next2_carry_n_1,
      CO(1) => r_next2_carry_n_2,
      CO(0) => r_next2_carry_n_3,
      CYINIT => i_DVSR(0),
      DI(3 downto 0) => i_DVSR(4 downto 1),
      O(3 downto 0) => r_next2(4 downto 1),
      S(3) => r_next2_carry_i_1_n_0,
      S(2) => r_next2_carry_i_2_n_0,
      S(1) => r_next2_carry_i_3_n_0,
      S(0) => r_next2_carry_i_4_n_0
    );
\r_next2_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => r_next2_carry_n_0,
      CO(3) => \r_next2_carry__0_n_0\,
      CO(2) => \r_next2_carry__0_n_1\,
      CO(1) => \r_next2_carry__0_n_2\,
      CO(0) => \r_next2_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => i_DVSR(8 downto 5),
      O(3 downto 0) => r_next2(8 downto 5),
      S(3) => \r_next2_carry__0_i_1_n_0\,
      S(2) => \r_next2_carry__0_i_2_n_0\,
      S(1) => \r_next2_carry__0_i_3_n_0\,
      S(0) => \r_next2_carry__0_i_4_n_0\
    );
\r_next2_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_DVSR(8),
      O => \r_next2_carry__0_i_1_n_0\
    );
\r_next2_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_DVSR(7),
      O => \r_next2_carry__0_i_2_n_0\
    );
\r_next2_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_DVSR(6),
      O => \r_next2_carry__0_i_3_n_0\
    );
\r_next2_carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_DVSR(5),
      O => \r_next2_carry__0_i_4_n_0\
    );
\r_next2_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_next2_carry__0_n_0\,
      CO(3) => \r_next2_carry__1_n_0\,
      CO(2) => \r_next2_carry__1_n_1\,
      CO(1) => \r_next2_carry__1_n_2\,
      CO(0) => \r_next2_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => i_DVSR(12 downto 9),
      O(3 downto 0) => r_next2(12 downto 9),
      S(3) => \r_next2_carry__1_i_1_n_0\,
      S(2) => \r_next2_carry__1_i_2_n_0\,
      S(1) => \r_next2_carry__1_i_3_n_0\,
      S(0) => \r_next2_carry__1_i_4_n_0\
    );
\r_next2_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_DVSR(12),
      O => \r_next2_carry__1_i_1_n_0\
    );
\r_next2_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_DVSR(11),
      O => \r_next2_carry__1_i_2_n_0\
    );
\r_next2_carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_DVSR(10),
      O => \r_next2_carry__1_i_3_n_0\
    );
\r_next2_carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_DVSR(9),
      O => \r_next2_carry__1_i_4_n_0\
    );
\r_next2_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_next2_carry__1_n_0\,
      CO(3) => \r_next2_carry__2_n_0\,
      CO(2) => \r_next2_carry__2_n_1\,
      CO(1) => \r_next2_carry__2_n_2\,
      CO(0) => \r_next2_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => i_DVSR(16 downto 13),
      O(3 downto 0) => r_next2(16 downto 13),
      S(3) => \r_next2_carry__2_i_1_n_0\,
      S(2) => \r_next2_carry__2_i_2_n_0\,
      S(1) => \r_next2_carry__2_i_3_n_0\,
      S(0) => \r_next2_carry__2_i_4_n_0\
    );
\r_next2_carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_DVSR(16),
      O => \r_next2_carry__2_i_1_n_0\
    );
\r_next2_carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_DVSR(15),
      O => \r_next2_carry__2_i_2_n_0\
    );
\r_next2_carry__2_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_DVSR(14),
      O => \r_next2_carry__2_i_3_n_0\
    );
\r_next2_carry__2_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_DVSR(13),
      O => \r_next2_carry__2_i_4_n_0\
    );
\r_next2_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_next2_carry__2_n_0\,
      CO(3) => \r_next2_carry__3_n_0\,
      CO(2) => \r_next2_carry__3_n_1\,
      CO(1) => \r_next2_carry__3_n_2\,
      CO(0) => \r_next2_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => i_DVSR(20 downto 17),
      O(3 downto 0) => r_next2(20 downto 17),
      S(3) => \r_next2_carry__3_i_1_n_0\,
      S(2) => \r_next2_carry__3_i_2_n_0\,
      S(1) => \r_next2_carry__3_i_3_n_0\,
      S(0) => \r_next2_carry__3_i_4_n_0\
    );
\r_next2_carry__3_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_DVSR(20),
      O => \r_next2_carry__3_i_1_n_0\
    );
\r_next2_carry__3_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_DVSR(19),
      O => \r_next2_carry__3_i_2_n_0\
    );
\r_next2_carry__3_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_DVSR(18),
      O => \r_next2_carry__3_i_3_n_0\
    );
\r_next2_carry__3_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_DVSR(17),
      O => \r_next2_carry__3_i_4_n_0\
    );
\r_next2_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_next2_carry__3_n_0\,
      CO(3) => \r_next2_carry__4_n_0\,
      CO(2) => \r_next2_carry__4_n_1\,
      CO(1) => \r_next2_carry__4_n_2\,
      CO(0) => \r_next2_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => i_DVSR(24 downto 21),
      O(3 downto 0) => r_next2(24 downto 21),
      S(3) => \r_next2_carry__4_i_1_n_0\,
      S(2) => \r_next2_carry__4_i_2_n_0\,
      S(1) => \r_next2_carry__4_i_3_n_0\,
      S(0) => \r_next2_carry__4_i_4_n_0\
    );
\r_next2_carry__4_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_DVSR(24),
      O => \r_next2_carry__4_i_1_n_0\
    );
\r_next2_carry__4_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_DVSR(23),
      O => \r_next2_carry__4_i_2_n_0\
    );
\r_next2_carry__4_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_DVSR(22),
      O => \r_next2_carry__4_i_3_n_0\
    );
\r_next2_carry__4_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_DVSR(21),
      O => \r_next2_carry__4_i_4_n_0\
    );
\r_next2_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_next2_carry__4_n_0\,
      CO(3) => \r_next2_carry__5_n_0\,
      CO(2) => \NLW_r_next2_carry__5_CO_UNCONNECTED\(2),
      CO(1) => \r_next2_carry__5_n_2\,
      CO(0) => \r_next2_carry__5_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => i_DVSR(27 downto 25),
      O(3) => \NLW_r_next2_carry__5_O_UNCONNECTED\(3),
      O(2 downto 0) => r_next2(27 downto 25),
      S(3) => '1',
      S(2) => \r_next2_carry__5_i_1_n_0\,
      S(1) => \r_next2_carry__5_i_2_n_0\,
      S(0) => \r_next2_carry__5_i_3_n_0\
    );
\r_next2_carry__5_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_DVSR(27),
      O => \r_next2_carry__5_i_1_n_0\
    );
\r_next2_carry__5_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_DVSR(26),
      O => \r_next2_carry__5_i_2_n_0\
    );
\r_next2_carry__5_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_DVSR(25),
      O => \r_next2_carry__5_i_3_n_0\
    );
r_next2_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_DVSR(4),
      O => r_next2_carry_i_1_n_0
    );
r_next2_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_DVSR(3),
      O => r_next2_carry_i_2_n_0
    );
r_next2_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_DVSR(2),
      O => r_next2_carry_i_3_n_0
    );
r_next2_carry_i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_DVSR(1),
      O => r_next2_carry_i_4_n_0
    );
\r_reg[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r_reg_reg(0),
      I1 => load,
      O => \r_reg[0]_i_1_n_0\
    );
\r_reg[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"006A"
    )
        port map (
      I0 => r_reg_reg(10),
      I1 => r_reg_reg(9),
      I2 => \r_reg[10]_i_2_n_0\,
      I3 => load,
      O => \r_reg[10]_i_1_n_0\
    );
\r_reg[10]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => r_reg_reg(8),
      I1 => r_reg_reg(6),
      I2 => \r_reg[9]_i_2_n_0\,
      I3 => r_reg_reg(7),
      O => \r_reg[10]_i_2_n_0\
    );
\r_reg[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => r_reg_reg(1),
      I1 => r_reg_reg(0),
      I2 => load,
      O => \r_reg[1]_i_1_n_0\
    );
\r_reg[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"006A"
    )
        port map (
      I0 => r_reg_reg(2),
      I1 => r_reg_reg(1),
      I2 => r_reg_reg(0),
      I3 => load,
      O => \r_reg[2]_i_1_n_0\
    );
\r_reg[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00006AAA"
    )
        port map (
      I0 => r_reg_reg(3),
      I1 => r_reg_reg(2),
      I2 => r_reg_reg(0),
      I3 => r_reg_reg(1),
      I4 => load,
      O => \r_reg[3]_i_1_n_0\
    );
\r_reg[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000006AAAAAAA"
    )
        port map (
      I0 => r_reg_reg(4),
      I1 => r_reg_reg(3),
      I2 => r_reg_reg(1),
      I3 => r_reg_reg(0),
      I4 => r_reg_reg(2),
      I5 => load,
      O => \r_reg[4]_i_1_n_0\
    );
\r_reg[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => r_reg_reg(5),
      I1 => \r_reg[5]_i_2_n_0\,
      I2 => load,
      O => \r_reg[5]_i_1_n_0\
    );
\r_reg[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => r_reg_reg(4),
      I1 => r_reg_reg(2),
      I2 => r_reg_reg(0),
      I3 => r_reg_reg(1),
      I4 => r_reg_reg(3),
      O => \r_reg[5]_i_2_n_0\
    );
\r_reg[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => r_reg_reg(6),
      I1 => \r_reg[9]_i_2_n_0\,
      I2 => load,
      O => \r_reg[6]_i_1_n_0\
    );
\r_reg[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"006A"
    )
        port map (
      I0 => r_reg_reg(7),
      I1 => r_reg_reg(6),
      I2 => \r_reg[9]_i_2_n_0\,
      I3 => load,
      O => \r_reg[7]_i_1_n_0\
    );
\r_reg[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00006AAA"
    )
        port map (
      I0 => r_reg_reg(8),
      I1 => r_reg_reg(7),
      I2 => \r_reg[9]_i_2_n_0\,
      I3 => r_reg_reg(6),
      I4 => load,
      O => \r_reg[8]_i_1_n_0\
    );
\r_reg[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000006AAAAAAA"
    )
        port map (
      I0 => r_reg_reg(9),
      I1 => r_reg_reg(8),
      I2 => r_reg_reg(6),
      I3 => \r_reg[9]_i_2_n_0\,
      I4 => r_reg_reg(7),
      I5 => load,
      O => \r_reg[9]_i_1_n_0\
    );
\r_reg[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => r_reg_reg(5),
      I1 => r_reg_reg(3),
      I2 => r_reg_reg(1),
      I3 => r_reg_reg(0),
      I4 => r_reg_reg(2),
      I5 => r_reg_reg(4),
      O => \r_reg[9]_i_2_n_0\
    );
\r_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => i_CLK,
      CE => '1',
      CLR => i_RESET,
      D => \r_reg[0]_i_1_n_0\,
      Q => r_reg_reg(0)
    );
\r_reg_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => i_CLK,
      CE => '1',
      CLR => i_RESET,
      D => \r_reg[10]_i_1_n_0\,
      Q => r_reg_reg(10)
    );
\r_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => i_CLK,
      CE => '1',
      CLR => i_RESET,
      D => \r_reg[1]_i_1_n_0\,
      Q => r_reg_reg(1)
    );
\r_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => i_CLK,
      CE => '1',
      CLR => i_RESET,
      D => \r_reg[2]_i_1_n_0\,
      Q => r_reg_reg(2)
    );
\r_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => i_CLK,
      CE => '1',
      CLR => i_RESET,
      D => \r_reg[3]_i_1_n_0\,
      Q => r_reg_reg(3)
    );
\r_reg_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => i_CLK,
      CE => '1',
      CLR => i_RESET,
      D => \r_reg[4]_i_1_n_0\,
      Q => r_reg_reg(4)
    );
\r_reg_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => i_CLK,
      CE => '1',
      CLR => i_RESET,
      D => \r_reg[5]_i_1_n_0\,
      Q => r_reg_reg(5)
    );
\r_reg_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => i_CLK,
      CE => '1',
      CLR => i_RESET,
      D => \r_reg[6]_i_1_n_0\,
      Q => r_reg_reg(6)
    );
\r_reg_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => i_CLK,
      CE => '1',
      CLR => i_RESET,
      D => \r_reg[7]_i_1_n_0\,
      Q => r_reg_reg(7)
    );
\r_reg_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => i_CLK,
      CE => '1',
      CLR => i_RESET,
      D => \r_reg[8]_i_1_n_0\,
      Q => r_reg_reg(8)
    );
\r_reg_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => i_CLK,
      CE => '1',
      CLR => i_RESET,
      D => \r_reg[9]_i_1_n_0\,
      Q => r_reg_reg(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    i_CLK : in STD_LOGIC;
    i_RESET : in STD_LOGIC;
    i_DVSR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_TICK : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "uart_fifo_axi_hw_inst_1_baudrate_generator_0,baudrate_generator,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "baudrate_generator,Vivado 2023.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of i_CLK : signal is "xilinx.com:signal:clock:1.0 i_CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of i_CLK : signal is "XIL_INTERFACENAME i_CLK, ASSOCIATED_RESET i_RESET, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN zynq_uart_fifo_axi_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of i_RESET : signal is "xilinx.com:signal:reset:1.0 i_RESET RST";
  attribute X_INTERFACE_PARAMETER of i_RESET : signal is "XIL_INTERFACENAME i_RESET, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_baudrate_generator
     port map (
      i_CLK => i_CLK,
      i_DVSR(27 downto 0) => i_DVSR(31 downto 4),
      i_RESET => i_RESET,
      o_TICK => o_TICK
    );
end STRUCTURE;
