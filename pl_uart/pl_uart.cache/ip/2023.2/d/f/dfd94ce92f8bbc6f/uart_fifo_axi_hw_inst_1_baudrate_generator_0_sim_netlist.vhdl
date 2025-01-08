-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Tue Jan  7 13:44:14 2025
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
    i_DVSR : in STD_LOGIC_VECTOR ( 6 downto 0 );
    i_CLK : in STD_LOGIC;
    i_RESET : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_baudrate_generator;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_baudrate_generator is
  signal load : STD_LOGIC;
  signal o_TICK_INST_0_i_1_n_0 : STD_LOGIC;
  signal o_TICK_INST_0_i_2_n_0 : STD_LOGIC;
  signal r_next : STD_LOGIC_VECTOR ( 9 downto 0 );
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
  signal \r_next1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \r_next1_carry__1_n_2\ : STD_LOGIC;
  signal \r_next1_carry__1_n_3\ : STD_LOGIC;
  signal r_next1_carry_i_1_n_0 : STD_LOGIC;
  signal r_next1_carry_i_2_n_0 : STD_LOGIC;
  signal r_next1_carry_i_3_n_0 : STD_LOGIC;
  signal r_next1_carry_i_4_n_0 : STD_LOGIC;
  signal r_next1_carry_i_5_n_0 : STD_LOGIC;
  signal r_next1_carry_i_6_n_0 : STD_LOGIC;
  signal r_next1_carry_i_7_n_0 : STD_LOGIC;
  signal r_next1_carry_n_0 : STD_LOGIC;
  signal r_next1_carry_n_1 : STD_LOGIC;
  signal r_next1_carry_n_2 : STD_LOGIC;
  signal r_next1_carry_n_3 : STD_LOGIC;
  signal \r_reg[10]_i_1_n_0\ : STD_LOGIC;
  signal \r_reg[10]_i_2_n_0\ : STD_LOGIC;
  signal \r_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \r_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \r_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \r_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \r_reg[5]_i_2_n_0\ : STD_LOGIC;
  signal \r_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \r_reg[6]_i_2_n_0\ : STD_LOGIC;
  signal \r_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \r_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal r_reg_reg : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_r_next1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_r_next1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_r_next1_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_r_next1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of r_next1_carry_i_6 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of r_next1_carry_i_7 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \r_reg[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \r_reg[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \r_reg[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \r_reg[5]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \r_reg[6]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \r_reg[7]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \r_reg[8]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \r_reg[9]_i_1\ : label is "soft_lutpair2";
begin
o_TICK_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => r_reg_reg(6),
      I1 => r_reg_reg(0),
      I2 => r_reg_reg(2),
      I3 => o_TICK_INST_0_i_1_n_0,
      I4 => o_TICK_INST_0_i_2_n_0,
      O => o_TICK
    );
o_TICK_INST_0_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => r_reg_reg(10),
      I1 => r_reg_reg(9),
      I2 => r_reg_reg(8),
      I3 => r_reg_reg(7),
      O => o_TICK_INST_0_i_1_n_0
    );
o_TICK_INST_0_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => r_reg_reg(4),
      I1 => r_reg_reg(3),
      I2 => r_reg_reg(5),
      I3 => r_reg_reg(1),
      O => o_TICK_INST_0_i_2_n_0
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
\r_next1_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => i_DVSR(6),
      I1 => r_next1_carry_i_5_n_0,
      O => \r_next1_carry__0_i_1_n_0\
    );
\r_next1_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => i_DVSR(6),
      I1 => r_next1_carry_i_5_n_0,
      O => \r_next1_carry__0_i_2_n_0\
    );
\r_next1_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => i_DVSR(6),
      I1 => r_next1_carry_i_5_n_0,
      O => \r_next1_carry__0_i_3_n_0\
    );
\r_next1_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => i_DVSR(6),
      I1 => r_next1_carry_i_5_n_0,
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
      S(2) => \r_next1_carry__1_i_1_n_0\,
      S(1) => \r_next1_carry__1_i_2_n_0\,
      S(0) => \r_next1_carry__1_i_3_n_0\
    );
\r_next1_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => i_DVSR(6),
      I1 => r_next1_carry_i_5_n_0,
      O => \r_next1_carry__1_i_1_n_0\
    );
\r_next1_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => i_DVSR(6),
      I1 => r_next1_carry_i_5_n_0,
      O => \r_next1_carry__1_i_2_n_0\
    );
\r_next1_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => i_DVSR(6),
      I1 => r_next1_carry_i_5_n_0,
      O => \r_next1_carry__1_i_3_n_0\
    );
r_next1_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"000B"
    )
        port map (
      I0 => i_DVSR(6),
      I1 => r_next1_carry_i_5_n_0,
      I2 => r_reg_reg(10),
      I3 => r_reg_reg(9),
      O => r_next1_carry_i_1_n_0
    );
r_next1_carry_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08101001"
    )
        port map (
      I0 => r_reg_reg(8),
      I1 => r_reg_reg(7),
      I2 => i_DVSR(6),
      I3 => r_next1_carry_i_5_n_0,
      I4 => r_reg_reg(6),
      O => r_next1_carry_i_2_n_0
    );
r_next1_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000090090960"
    )
        port map (
      I0 => i_DVSR(5),
      I1 => r_reg_reg(5),
      I2 => r_reg_reg(4),
      I3 => r_next1_carry_i_6_n_0,
      I4 => i_DVSR(4),
      I5 => r_next1_carry_i_7_n_0,
      O => r_next1_carry_i_3_n_0
    );
r_next1_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4120000800084120"
    )
        port map (
      I0 => r_reg_reg(0),
      I1 => r_reg_reg(1),
      I2 => i_DVSR(1),
      I3 => i_DVSR(0),
      I4 => r_reg_reg(2),
      I5 => i_DVSR(2),
      O => r_next1_carry_i_4_n_0
    );
r_next1_carry_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => i_DVSR(5),
      I1 => i_DVSR(3),
      I2 => i_DVSR(0),
      I3 => i_DVSR(1),
      I4 => i_DVSR(2),
      I5 => i_DVSR(4),
      O => r_next1_carry_i_5_n_0
    );
r_next1_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => i_DVSR(3),
      I1 => i_DVSR(0),
      I2 => i_DVSR(1),
      I3 => i_DVSR(2),
      O => r_next1_carry_i_6_n_0
    );
r_next1_carry_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5556AAA9"
    )
        port map (
      I0 => r_reg_reg(3),
      I1 => i_DVSR(2),
      I2 => i_DVSR(1),
      I3 => i_DVSR(0),
      I4 => i_DVSR(3),
      O => r_next1_carry_i_7_n_0
    );
\r_reg[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r_reg_reg(0),
      I1 => load,
      O => r_next(0)
    );
\r_reg[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5155555504000000"
    )
        port map (
      I0 => load,
      I1 => r_reg_reg(9),
      I2 => \r_reg[10]_i_2_n_0\,
      I3 => r_reg_reg(7),
      I4 => r_reg_reg(8),
      I5 => r_reg_reg(10),
      O => \r_reg[10]_i_1_n_0\
    );
\r_reg[10]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \r_reg[6]_i_2_n_0\,
      I1 => r_reg_reg(6),
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
      O => r_next(1)
    );
\r_reg[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1540"
    )
        port map (
      I0 => load,
      I1 => r_reg_reg(0),
      I2 => r_reg_reg(1),
      I3 => r_reg_reg(2),
      O => \r_reg[2]_i_1_n_0\
    );
\r_reg[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"15554000"
    )
        port map (
      I0 => load,
      I1 => r_reg_reg(1),
      I2 => r_reg_reg(0),
      I3 => r_reg_reg(2),
      I4 => r_reg_reg(3),
      O => \r_reg[3]_i_1_n_0\
    );
\r_reg[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1555555540000000"
    )
        port map (
      I0 => load,
      I1 => r_reg_reg(2),
      I2 => r_reg_reg(0),
      I3 => r_reg_reg(1),
      I4 => r_reg_reg(3),
      I5 => r_reg_reg(4),
      O => \r_reg[4]_i_1_n_0\
    );
\r_reg[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"41"
    )
        port map (
      I0 => load,
      I1 => \r_reg[5]_i_2_n_0\,
      I2 => r_reg_reg(5),
      O => \r_reg[5]_i_1_n_0\
    );
\r_reg[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => r_reg_reg(3),
      I1 => r_reg_reg(1),
      I2 => r_reg_reg(0),
      I3 => r_reg_reg(2),
      I4 => r_reg_reg(4),
      O => \r_reg[5]_i_2_n_0\
    );
\r_reg[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"41"
    )
        port map (
      I0 => load,
      I1 => \r_reg[6]_i_2_n_0\,
      I2 => r_reg_reg(6),
      O => \r_reg[6]_i_1_n_0\
    );
\r_reg[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => r_reg_reg(4),
      I1 => r_reg_reg(2),
      I2 => r_reg_reg(0),
      I3 => r_reg_reg(1),
      I4 => r_reg_reg(3),
      I5 => r_reg_reg(5),
      O => \r_reg[6]_i_2_n_0\
    );
\r_reg[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"41"
    )
        port map (
      I0 => load,
      I1 => \r_reg[10]_i_2_n_0\,
      I2 => r_reg_reg(7),
      O => \r_reg[7]_i_1_n_0\
    );
\r_reg[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4510"
    )
        port map (
      I0 => load,
      I1 => \r_reg[10]_i_2_n_0\,
      I2 => r_reg_reg(7),
      I3 => r_reg_reg(8),
      O => \r_reg[8]_i_1_n_0\
    );
\r_reg[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F708"
    )
        port map (
      I0 => r_reg_reg(8),
      I1 => r_reg_reg(7),
      I2 => \r_reg[10]_i_2_n_0\,
      I3 => r_reg_reg(9),
      I4 => load,
      O => r_next(9)
    );
\r_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => i_CLK,
      CE => '1',
      CLR => i_RESET,
      D => r_next(0),
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
      D => r_next(1),
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
      D => r_next(9),
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
    i_DVSR : in STD_LOGIC_VECTOR ( 10 downto 0 );
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
      i_DVSR(6 downto 0) => i_DVSR(10 downto 4),
      i_RESET => i_RESET,
      o_TICK => o_TICK
    );
end STRUCTURE;
