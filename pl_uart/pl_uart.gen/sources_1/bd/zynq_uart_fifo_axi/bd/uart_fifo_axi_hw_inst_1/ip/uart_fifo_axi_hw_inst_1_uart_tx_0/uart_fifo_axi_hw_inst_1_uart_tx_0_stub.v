// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Tue Jan  7 13:45:20 2025
// Host        : DESKTOP-5CM83PC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top uart_fifo_axi_hw_inst_1_uart_tx_0 -prefix
//               uart_fifo_axi_hw_inst_1_uart_tx_0_ uart_fifo_axi_hw_inst_1_uart_tx_0_stub.v
// Design      : uart_fifo_axi_hw_inst_1_uart_tx_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "uart_tx,Vivado 2023.2" *)
module uart_fifo_axi_hw_inst_1_uart_tx_0(i_CLK, i_RESET, i_TX_STARTN, i_S_TICK, i_DIN, o_TX, 
  o_TX_RDY_TICK)
/* synthesis syn_black_box black_box_pad_pin="i_RESET,i_TX_STARTN,i_S_TICK,i_DIN[7:0],o_TX,o_TX_RDY_TICK" */
/* synthesis syn_force_seq_prim="i_CLK" */;
  input i_CLK /* synthesis syn_isclock = 1 */;
  input i_RESET;
  input i_TX_STARTN;
  input i_S_TICK;
  input [7:0]i_DIN;
  output o_TX;
  output o_TX_RDY_TICK;
endmodule
