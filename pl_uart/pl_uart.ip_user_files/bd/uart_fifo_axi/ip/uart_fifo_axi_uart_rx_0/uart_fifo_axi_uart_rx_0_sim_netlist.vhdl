-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Mon Jan  6 09:28:23 2025
-- Host        : DESKTOP-5CM83PC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/FPGA/fpga-pl_uart/pl_uart/pl_uart.gen/sources_1/bd/uart_fifo_axi/ip/uart_fifo_axi_uart_rx_0/uart_fifo_axi_uart_rx_0_sim_netlist.vhdl
-- Design      : uart_fifo_axi_uart_rx_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity uart_fifo_axi_uart_rx_0_uart_rx is
  port (
    o_DOUT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    o_RX_DONE_TICK : out STD_LOGIC;
    i_RX : in STD_LOGIC;
    i_S_TICK : in STD_LOGIC;
    i_CLK : in STD_LOGIC;
    i_RESET : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of uart_fifo_axi_uart_rx_0_uart_rx : entity is "uart_rx";
end uart_fifo_axi_uart_rx_0_uart_rx;

architecture STRUCTURE of uart_fifo_axi_uart_rx_0_uart_rx is
  signal \FSM_sequential_state_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[1]_i_4_n_0\ : STD_LOGIC;
  signal b_next : STD_LOGIC;
  signal n_reg : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \n_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \n_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \n_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \n_reg[1]_i_3_n_0\ : STD_LOGIC;
  signal \n_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \n_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \n_reg[2]_i_3_n_0\ : STD_LOGIC;
  signal \n_reg[2]_i_4_n_0\ : STD_LOGIC;
  signal \n_reg[2]_i_5_n_0\ : STD_LOGIC;
  signal \^o_dout\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal o_RX_DONE_TICK_INST_0_i_1_n_0 : STD_LOGIC;
  signal s_next : STD_LOGIC;
  signal s_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \s_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \s_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \s_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \s_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \s_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \s_reg[2]_i_3_n_0\ : STD_LOGIC;
  signal \s_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal state_reg : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state_reg[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_sequential_state_reg[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_sequential_state_reg[1]_i_3\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \FSM_sequential_state_reg[1]_i_4\ : label is "soft_lutpair3";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg_reg[0]\ : label is "START:01,DATA:10,IDLE:00,STOP:11";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg_reg[1]\ : label is "START:01,DATA:10,IDLE:00,STOP:11";
  attribute SOFT_HLUTNM of \n_reg[1]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \n_reg[2]_i_3\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \n_reg[2]_i_5\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of o_RX_DONE_TICK_INST_0 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of o_RX_DONE_TICK_INST_0_i_1 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \s_reg[0]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \s_reg[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \s_reg[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \s_reg[2]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \s_reg[3]_i_2\ : label is "soft_lutpair1";
begin
  o_DOUT(7 downto 0) <= \^o_dout\(7 downto 0);
\FSM_sequential_state_reg[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0FB0"
    )
        port map (
      I0 => i_S_TICK,
      I1 => state_reg(1),
      I2 => \FSM_sequential_state_reg[1]_i_2_n_0\,
      I3 => state_reg(0),
      O => \FSM_sequential_state_reg[0]_i_1_n_0\
    );
\FSM_sequential_state_reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30FF4400"
    )
        port map (
      I0 => i_RX,
      I1 => state_reg(0),
      I2 => i_S_TICK,
      I3 => \FSM_sequential_state_reg[1]_i_2_n_0\,
      I4 => state_reg(1),
      O => \FSM_sequential_state_reg[1]_i_1_n_0\
    );
\FSM_sequential_state_reg[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF11F111F111F1"
    )
        port map (
      I0 => i_RX,
      I1 => \FSM_sequential_state_reg[1]_i_3_n_0\,
      I2 => \FSM_sequential_state_reg[1]_i_4_n_0\,
      I3 => o_RX_DONE_TICK_INST_0_i_1_n_0,
      I4 => \n_reg[2]_i_4_n_0\,
      I5 => \n_reg[2]_i_3_n_0\,
      O => \FSM_sequential_state_reg[1]_i_2_n_0\
    );
\FSM_sequential_state_reg[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => state_reg(0),
      I1 => state_reg(1),
      O => \FSM_sequential_state_reg[1]_i_3_n_0\
    );
\FSM_sequential_state_reg[1]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => s_reg(3),
      I1 => i_S_TICK,
      I2 => state_reg(1),
      I3 => state_reg(0),
      O => \FSM_sequential_state_reg[1]_i_4_n_0\
    );
\FSM_sequential_state_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => i_CLK,
      CE => '1',
      CLR => i_RESET,
      D => \FSM_sequential_state_reg[0]_i_1_n_0\,
      Q => state_reg(0)
    );
\FSM_sequential_state_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => i_CLK,
      CE => '1',
      CLR => i_RESET,
      D => \FSM_sequential_state_reg[1]_i_1_n_0\,
      Q => state_reg(1)
    );
\b_reg[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => o_RX_DONE_TICK_INST_0_i_1_n_0,
      I1 => i_S_TICK,
      I2 => state_reg(1),
      I3 => s_reg(3),
      I4 => state_reg(0),
      O => b_next
    );
\b_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => i_CLK,
      CE => b_next,
      CLR => i_RESET,
      D => \^o_dout\(1),
      Q => \^o_dout\(0)
    );
\b_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => i_CLK,
      CE => b_next,
      CLR => i_RESET,
      D => \^o_dout\(2),
      Q => \^o_dout\(1)
    );
\b_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => i_CLK,
      CE => b_next,
      CLR => i_RESET,
      D => \^o_dout\(3),
      Q => \^o_dout\(2)
    );
\b_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => i_CLK,
      CE => b_next,
      CLR => i_RESET,
      D => \^o_dout\(4),
      Q => \^o_dout\(3)
    );
\b_reg_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => i_CLK,
      CE => b_next,
      CLR => i_RESET,
      D => \^o_dout\(5),
      Q => \^o_dout\(4)
    );
\b_reg_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => i_CLK,
      CE => b_next,
      CLR => i_RESET,
      D => \^o_dout\(6),
      Q => \^o_dout\(5)
    );
\b_reg_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => i_CLK,
      CE => b_next,
      CLR => i_RESET,
      D => \^o_dout\(7),
      Q => \^o_dout\(6)
    );
\b_reg_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => i_CLK,
      CE => b_next,
      CLR => i_RESET,
      D => i_RX,
      Q => \^o_dout\(7)
    );
\n_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2222F2FFEEEE0E00"
    )
        port map (
      I0 => i_RX,
      I1 => state_reg(1),
      I2 => \n_reg[2]_i_3_n_0\,
      I3 => \n_reg[2]_i_4_n_0\,
      I4 => \n_reg[1]_i_3_n_0\,
      I5 => n_reg(0),
      O => \n_reg[0]_i_1_n_0\
    );
\n_reg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5C5C5CFFACACAC00"
    )
        port map (
      I0 => n_reg(0),
      I1 => i_RX,
      I2 => state_reg(1),
      I3 => \n_reg[1]_i_2_n_0\,
      I4 => \n_reg[1]_i_3_n_0\,
      I5 => n_reg(1),
      O => \n_reg[1]_i_1_n_0\
    );
\n_reg[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002AAA"
    )
        port map (
      I0 => \n_reg[2]_i_4_n_0\,
      I1 => n_reg(1),
      I2 => n_reg(0),
      I3 => n_reg(2),
      I4 => state_reg(0),
      O => \n_reg[1]_i_2_n_0\
    );
\n_reg[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000200"
    )
        port map (
      I0 => state_reg(0),
      I1 => state_reg(1),
      I2 => i_RX,
      I3 => i_S_TICK,
      I4 => s_reg(3),
      I5 => o_RX_DONE_TICK_INST_0_i_1_n_0,
      O => \n_reg[1]_i_3_n_0\
    );
\n_reg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAAEFEF20AA2020"
    )
        port map (
      I0 => \n_reg[2]_i_2_n_0\,
      I1 => \n_reg[2]_i_3_n_0\,
      I2 => \n_reg[2]_i_4_n_0\,
      I3 => o_RX_DONE_TICK_INST_0_i_1_n_0,
      I4 => \n_reg[2]_i_5_n_0\,
      I5 => n_reg(2),
      O => \n_reg[2]_i_1_n_0\
    );
\n_reg[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7878FF00"
    )
        port map (
      I0 => n_reg(1),
      I1 => n_reg(0),
      I2 => n_reg(2),
      I3 => i_RX,
      I4 => state_reg(1),
      O => \n_reg[2]_i_2_n_0\
    );
\n_reg[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EAAA"
    )
        port map (
      I0 => state_reg(0),
      I1 => n_reg(2),
      I2 => n_reg(0),
      I3 => n_reg(1),
      O => \n_reg[2]_i_3_n_0\
    );
\n_reg[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => s_reg(3),
      I1 => state_reg(1),
      I2 => i_S_TICK,
      I3 => s_reg(0),
      I4 => s_reg(1),
      I5 => s_reg(2),
      O => \n_reg[2]_i_4_n_0\
    );
\n_reg[2]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00040000"
    )
        port map (
      I0 => s_reg(3),
      I1 => i_S_TICK,
      I2 => i_RX,
      I3 => state_reg(1),
      I4 => state_reg(0),
      O => \n_reg[2]_i_5_n_0\
    );
\n_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => i_CLK,
      CE => '1',
      CLR => i_RESET,
      D => \n_reg[0]_i_1_n_0\,
      Q => n_reg(0)
    );
\n_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => i_CLK,
      CE => '1',
      CLR => i_RESET,
      D => \n_reg[1]_i_1_n_0\,
      Q => n_reg(1)
    );
\n_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => i_CLK,
      CE => '1',
      CLR => i_RESET,
      D => \n_reg[2]_i_1_n_0\,
      Q => n_reg(2)
    );
o_RX_DONE_TICK_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => o_RX_DONE_TICK_INST_0_i_1_n_0,
      I1 => i_S_TICK,
      I2 => state_reg(1),
      I3 => s_reg(3),
      I4 => state_reg(0),
      O => o_RX_DONE_TICK
    );
o_RX_DONE_TICK_INST_0_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => s_reg(2),
      I1 => s_reg(1),
      I2 => s_reg(0),
      O => o_RX_DONE_TICK_INST_0_i_1_n_0
    );
\s_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF00FF10FFF0F0"
    )
        port map (
      I0 => s_reg(3),
      I1 => \s_reg[0]_i_2_n_0\,
      I2 => i_RX,
      I3 => s_reg(0),
      I4 => state_reg(0),
      I5 => state_reg(1),
      O => \s_reg[0]_i_1_n_0\
    );
\s_reg[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => s_reg(1),
      I1 => s_reg(2),
      O => \s_reg[0]_i_2_n_0\
    );
\s_reg[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF60"
    )
        port map (
      I0 => s_reg(0),
      I1 => s_reg(1),
      I2 => \s_reg[2]_i_2_n_0\,
      I3 => \s_reg[2]_i_3_n_0\,
      O => \s_reg[1]_i_1_n_0\
    );
\s_reg[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7800"
    )
        port map (
      I0 => s_reg(0),
      I1 => s_reg(1),
      I2 => s_reg(2),
      I3 => \s_reg[2]_i_2_n_0\,
      I4 => \s_reg[2]_i_3_n_0\,
      O => \s_reg[2]_i_1_n_0\
    );
\s_reg[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF7F7F00FF00"
    )
        port map (
      I0 => s_reg(2),
      I1 => s_reg(1),
      I2 => s_reg(0),
      I3 => state_reg(1),
      I4 => s_reg(3),
      I5 => state_reg(0),
      O => \s_reg[2]_i_2_n_0\
    );
\s_reg[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"001F0000"
    )
        port map (
      I0 => o_RX_DONE_TICK_INST_0_i_1_n_0,
      I1 => s_reg(3),
      I2 => state_reg(0),
      I3 => state_reg(1),
      I4 => i_RX,
      O => \s_reg[2]_i_3_n_0\
    );
\s_reg[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D0D0F0F0E0F000FF"
    )
        port map (
      I0 => s_reg(3),
      I1 => o_RX_DONE_TICK_INST_0_i_1_n_0,
      I2 => i_S_TICK,
      I3 => i_RX,
      I4 => state_reg(0),
      I5 => state_reg(1),
      O => s_next
    );
\s_reg[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE0202EE"
    )
        port map (
      I0 => i_RX,
      I1 => state_reg(1),
      I2 => state_reg(0),
      I3 => s_reg(3),
      I4 => o_RX_DONE_TICK_INST_0_i_1_n_0,
      O => \s_reg[3]_i_2_n_0\
    );
\s_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => i_CLK,
      CE => s_next,
      CLR => i_RESET,
      D => \s_reg[0]_i_1_n_0\,
      Q => s_reg(0)
    );
\s_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => i_CLK,
      CE => s_next,
      CLR => i_RESET,
      D => \s_reg[1]_i_1_n_0\,
      Q => s_reg(1)
    );
\s_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => i_CLK,
      CE => s_next,
      CLR => i_RESET,
      D => \s_reg[2]_i_1_n_0\,
      Q => s_reg(2)
    );
\s_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => i_CLK,
      CE => s_next,
      CLR => i_RESET,
      D => \s_reg[3]_i_2_n_0\,
      Q => s_reg(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity uart_fifo_axi_uart_rx_0 is
  port (
    i_CLK : in STD_LOGIC;
    i_RESET : in STD_LOGIC;
    i_RX : in STD_LOGIC;
    i_S_TICK : in STD_LOGIC;
    o_RX_DONE_TICK : out STD_LOGIC;
    o_DOUT : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of uart_fifo_axi_uart_rx_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of uart_fifo_axi_uart_rx_0 : entity is "uart_fifo_axi_uart_rx_0,uart_rx,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of uart_fifo_axi_uart_rx_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of uart_fifo_axi_uart_rx_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of uart_fifo_axi_uart_rx_0 : entity is "uart_rx,Vivado 2023.2";
end uart_fifo_axi_uart_rx_0;

architecture STRUCTURE of uart_fifo_axi_uart_rx_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of i_CLK : signal is "xilinx.com:signal:clock:1.0 i_CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of i_CLK : signal is "XIL_INTERFACENAME i_CLK, ASSOCIATED_RESET i_RESET, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN uart_fifo_axi_S_AXI_ACLK_0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of i_RESET : signal is "xilinx.com:signal:reset:1.0 i_RESET RST";
  attribute X_INTERFACE_PARAMETER of i_RESET : signal is "XIL_INTERFACENAME i_RESET, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
begin
inst: entity work.uart_fifo_axi_uart_rx_0_uart_rx
     port map (
      i_CLK => i_CLK,
      i_RESET => i_RESET,
      i_RX => i_RX,
      i_S_TICK => i_S_TICK,
      o_DOUT(7 downto 0) => o_DOUT(7 downto 0),
      o_RX_DONE_TICK => o_RX_DONE_TICK
    );
end STRUCTURE;
