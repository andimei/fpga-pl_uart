// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Fri Nov 15 16:42:09 2024
// Host        : DESKTOP-5CM83PC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_uart_uart_tx_0_0_stub.v
// Design      : design_uart_uart_tx_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "uart_tx,Vivado 2023.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(i_CLK, i_RESETN, i_TX_START, i_S_TICK, i_DIN, o_TX, 
  o_TX_DONE_TICK)
/* synthesis syn_black_box black_box_pad_pin="i_RESETN,i_TX_START,i_S_TICK,i_DIN[7:0],o_TX,o_TX_DONE_TICK" */
/* synthesis syn_force_seq_prim="i_CLK" */;
  input i_CLK /* synthesis syn_isclock = 1 */;
  input i_RESETN;
  input i_TX_START;
  input i_S_TICK;
  input [7:0]i_DIN;
  output o_TX;
  output o_TX_DONE_TICK;
endmodule
