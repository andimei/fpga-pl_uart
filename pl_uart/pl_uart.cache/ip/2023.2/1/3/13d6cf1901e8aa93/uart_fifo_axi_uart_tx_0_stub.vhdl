-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Mon Jan  6 09:29:35 2025
-- Host        : DESKTOP-5CM83PC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ uart_fifo_axi_uart_tx_0_stub.vhdl
-- Design      : uart_fifo_axi_uart_tx_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    i_CLK : in STD_LOGIC;
    i_RESET : in STD_LOGIC;
    i_TX_STARTN : in STD_LOGIC;
    i_S_TICK : in STD_LOGIC;
    i_DIN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    o_TX : out STD_LOGIC;
    o_TX_RDY_TICK : out STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "i_CLK,i_RESET,i_TX_STARTN,i_S_TICK,i_DIN[7:0],o_TX,o_TX_RDY_TICK";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "uart_tx,Vivado 2023.2";
begin
end;
