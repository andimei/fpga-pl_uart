-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Tue Jan  7 13:45:20 2025
-- Host        : DESKTOP-5CM83PC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ uart_fifo_axi_hw_inst_1_uart_tx_0_sim_netlist.vhdl
-- Design      : uart_fifo_axi_hw_inst_1_uart_tx_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_tx is
  port (
    o_TX : out STD_LOGIC;
    o_TX_RDY_TICK : out STD_LOGIC;
    i_CLK : in STD_LOGIC;
    i_RESET : in STD_LOGIC;
    i_S_TICK : in STD_LOGIC;
    i_TX_STARTN : in STD_LOGIC;
    i_DIN : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_tx;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_tx is
  signal \FSM_sequential_state_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal b_next : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal b_next_0 : STD_LOGIC;
  signal b_reg : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \b_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \b_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \b_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \b_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \b_reg_reg_n_0_[5]\ : STD_LOGIC;
  signal \b_reg_reg_n_0_[6]\ : STD_LOGIC;
  signal \b_reg_reg_n_0_[7]\ : STD_LOGIC;
  signal n_next : STD_LOGIC;
  signal n_reg : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \n_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \n_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \n_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal rdy_tick_reg_i_1_n_0 : STD_LOGIC;
  signal s_next : STD_LOGIC;
  signal s_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \s_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \s_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \s_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \s_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \s_reg[3]_i_3_n_0\ : STD_LOGIC;
  signal state_next : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \state_next__0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal state_reg_reg : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal tx_next : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state_reg[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_sequential_state_reg[1]_i_2\ : label is "soft_lutpair2";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg_reg[0]\ : label is "START:01,DATA:10,STOP:11,IDLE:00";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg_reg[1]\ : label is "START:01,DATA:10,STOP:11,IDLE:00";
  attribute SOFT_HLUTNM of \b_reg[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \b_reg[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \b_reg[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \b_reg[3]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \b_reg[4]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \b_reg[5]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \b_reg[6]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \b_reg[7]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \n_reg[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \n_reg[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \n_reg[2]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \s_reg[3]_i_3\ : label is "soft_lutpair2";
begin
\FSM_sequential_state_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3F3FC0553F3F0055"
    )
        port map (
      I0 => i_TX_STARTN,
      I1 => i_S_TICK,
      I2 => \FSM_sequential_state_reg[1]_i_2_n_0\,
      I3 => state_reg_reg(1),
      I4 => state_reg_reg(0),
      I5 => \FSM_sequential_state_reg[0]_i_2_n_0\,
      O => \state_next__0\(0)
    );
\FSM_sequential_state_reg[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => n_reg(1),
      I1 => n_reg(2),
      I2 => n_reg(0),
      O => \FSM_sequential_state_reg[0]_i_2_n_0\
    );
\FSM_sequential_state_reg[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"78F0"
    )
        port map (
      I0 => i_S_TICK,
      I1 => \FSM_sequential_state_reg[1]_i_2_n_0\,
      I2 => state_reg_reg(1),
      I3 => state_reg_reg(0),
      O => state_next(1)
    );
\FSM_sequential_state_reg[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => s_reg(1),
      I1 => s_reg(0),
      I2 => s_reg(2),
      I3 => s_reg(3),
      O => \FSM_sequential_state_reg[1]_i_2_n_0\
    );
\FSM_sequential_state_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => i_CLK,
      CE => '1',
      CLR => i_RESET,
      D => \state_next__0\(0),
      Q => state_reg_reg(0)
    );
\FSM_sequential_state_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => i_CLK,
      CE => '1',
      CLR => i_RESET,
      D => state_next(1),
      Q => state_reg_reg(1)
    );
\b_reg[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \b_reg_reg_n_0_[1]\,
      I1 => state_reg_reg(1),
      I2 => i_DIN(0),
      O => b_next(0)
    );
\b_reg[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \b_reg_reg_n_0_[2]\,
      I1 => state_reg_reg(1),
      I2 => i_DIN(1),
      O => b_next(1)
    );
\b_reg[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \b_reg_reg_n_0_[3]\,
      I1 => state_reg_reg(1),
      I2 => i_DIN(2),
      O => b_next(2)
    );
\b_reg[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \b_reg_reg_n_0_[4]\,
      I1 => state_reg_reg(1),
      I2 => i_DIN(3),
      O => b_next(3)
    );
\b_reg[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \b_reg_reg_n_0_[5]\,
      I1 => state_reg_reg(1),
      I2 => i_DIN(4),
      O => b_next(4)
    );
\b_reg[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \b_reg_reg_n_0_[6]\,
      I1 => state_reg_reg(1),
      I2 => i_DIN(5),
      O => b_next(5)
    );
\b_reg[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \b_reg_reg_n_0_[7]\,
      I1 => state_reg_reg(1),
      I2 => i_DIN(6),
      O => b_next(6)
    );
\b_reg[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0880"
    )
        port map (
      I0 => \FSM_sequential_state_reg[1]_i_2_n_0\,
      I1 => i_S_TICK,
      I2 => state_reg_reg(1),
      I3 => state_reg_reg(0),
      O => b_next_0
    );
\b_reg[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_DIN(7),
      I1 => state_reg_reg(1),
      O => b_next(7)
    );
\b_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => i_CLK,
      CE => b_next_0,
      CLR => i_RESET,
      D => b_next(0),
      Q => b_reg(0)
    );
\b_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => i_CLK,
      CE => b_next_0,
      CLR => i_RESET,
      D => b_next(1),
      Q => \b_reg_reg_n_0_[1]\
    );
\b_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => i_CLK,
      CE => b_next_0,
      CLR => i_RESET,
      D => b_next(2),
      Q => \b_reg_reg_n_0_[2]\
    );
\b_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => i_CLK,
      CE => b_next_0,
      CLR => i_RESET,
      D => b_next(3),
      Q => \b_reg_reg_n_0_[3]\
    );
\b_reg_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => i_CLK,
      CE => b_next_0,
      CLR => i_RESET,
      D => b_next(4),
      Q => \b_reg_reg_n_0_[4]\
    );
\b_reg_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => i_CLK,
      CE => b_next_0,
      CLR => i_RESET,
      D => b_next(5),
      Q => \b_reg_reg_n_0_[5]\
    );
\b_reg_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => i_CLK,
      CE => b_next_0,
      CLR => i_RESET,
      D => b_next(6),
      Q => \b_reg_reg_n_0_[6]\
    );
\b_reg_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => i_CLK,
      CE => b_next_0,
      CLR => i_RESET,
      D => b_next(7),
      Q => \b_reg_reg_n_0_[7]\
    );
\n_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DF9FFFFF00400000"
    )
        port map (
      I0 => state_reg_reg(0),
      I1 => state_reg_reg(1),
      I2 => \FSM_sequential_state_reg[1]_i_2_n_0\,
      I3 => \FSM_sequential_state_reg[0]_i_2_n_0\,
      I4 => i_S_TICK,
      I5 => n_reg(0),
      O => \n_reg[0]_i_1_n_0\
    );
\n_reg[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F80"
    )
        port map (
      I0 => state_reg_reg(1),
      I1 => n_reg(0),
      I2 => n_next,
      I3 => n_reg(1),
      O => \n_reg[1]_i_1_n_0\
    );
\n_reg[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AFF8000"
    )
        port map (
      I0 => state_reg_reg(1),
      I1 => n_reg(1),
      I2 => n_reg(0),
      I3 => n_next,
      I4 => n_reg(2),
      O => \n_reg[2]_i_1_n_0\
    );
\n_reg[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20600000"
    )
        port map (
      I0 => state_reg_reg(0),
      I1 => state_reg_reg(1),
      I2 => \FSM_sequential_state_reg[1]_i_2_n_0\,
      I3 => \FSM_sequential_state_reg[0]_i_2_n_0\,
      I4 => i_S_TICK,
      O => n_next
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
rdy_tick_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => i_TX_STARTN,
      I1 => state_reg_reg(0),
      I2 => state_reg_reg(1),
      O => rdy_tick_reg_i_1_n_0
    );
rdy_tick_reg_reg: unisim.vcomponents.FDCE
     port map (
      C => i_CLK,
      CE => '1',
      CLR => i_RESET,
      D => rdy_tick_reg_i_1_n_0,
      Q => o_TX_RDY_TICK
    );
\s_reg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02C202FE"
    )
        port map (
      I0 => i_TX_STARTN,
      I1 => state_reg_reg(1),
      I2 => state_reg_reg(0),
      I3 => s_reg(0),
      I4 => \FSM_sequential_state_reg[1]_i_2_n_0\,
      O => \s_reg[0]_i_1_n_0\
    );
\s_reg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3C0000AA3C3C3CAA"
    )
        port map (
      I0 => i_TX_STARTN,
      I1 => s_reg(1),
      I2 => s_reg(0),
      I3 => state_reg_reg(1),
      I4 => state_reg_reg(0),
      I5 => \FSM_sequential_state_reg[1]_i_2_n_0\,
      O => \s_reg[1]_i_1_n_0\
    );
\s_reg[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C3C3C3AA"
    )
        port map (
      I0 => i_TX_STARTN,
      I1 => s_reg(2),
      I2 => \s_reg[3]_i_3_n_0\,
      I3 => state_reg_reg(1),
      I4 => state_reg_reg(0),
      O => \s_reg[2]_i_1_n_0\
    );
\s_reg[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30F0F055"
    )
        port map (
      I0 => i_TX_STARTN,
      I1 => \FSM_sequential_state_reg[1]_i_2_n_0\,
      I2 => i_S_TICK,
      I3 => state_reg_reg(1),
      I4 => state_reg_reg(0),
      O => s_next
    );
\s_reg[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CC3CCC3CCC3CAAAA"
    )
        port map (
      I0 => i_TX_STARTN,
      I1 => s_reg(3),
      I2 => s_reg(2),
      I3 => \s_reg[3]_i_3_n_0\,
      I4 => state_reg_reg(1),
      I5 => state_reg_reg(0),
      O => \s_reg[3]_i_2_n_0\
    );
\s_reg[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => s_reg(0),
      I1 => s_reg(1),
      O => \s_reg[3]_i_3_n_0\
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
tx_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CB"
    )
        port map (
      I0 => b_reg(0),
      I1 => state_reg_reg(1),
      I2 => state_reg_reg(0),
      O => tx_next
    );
tx_reg_reg: unisim.vcomponents.FDPE
     port map (
      C => i_CLK,
      CE => '1',
      D => tx_next,
      PRE => i_RESET,
      Q => o_TX
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
    i_TX_STARTN : in STD_LOGIC;
    i_S_TICK : in STD_LOGIC;
    i_DIN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    o_TX : out STD_LOGIC;
    o_TX_RDY_TICK : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "uart_fifo_axi_hw_inst_1_uart_tx_0,uart_tx,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "uart_tx,Vivado 2023.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of i_CLK : signal is "xilinx.com:signal:clock:1.0 i_CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of i_CLK : signal is "XIL_INTERFACENAME i_CLK, ASSOCIATED_RESET i_RESET, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN zynq_uart_fifo_axi_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of i_RESET : signal is "xilinx.com:signal:reset:1.0 i_RESET RST";
  attribute X_INTERFACE_PARAMETER of i_RESET : signal is "XIL_INTERFACENAME i_RESET, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_tx
     port map (
      i_CLK => i_CLK,
      i_DIN(7 downto 0) => i_DIN(7 downto 0),
      i_RESET => i_RESET,
      i_S_TICK => i_S_TICK,
      i_TX_STARTN => i_TX_STARTN,
      o_TX => o_TX,
      o_TX_RDY_TICK => o_TX_RDY_TICK
    );
end STRUCTURE;
