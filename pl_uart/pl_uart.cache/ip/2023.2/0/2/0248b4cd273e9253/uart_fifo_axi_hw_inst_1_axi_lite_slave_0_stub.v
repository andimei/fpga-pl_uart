// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Tue Jan  7 15:51:45 2025
// Host        : DESKTOP-5CM83PC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ uart_fifo_axi_hw_inst_1_axi_lite_slave_0_stub.v
// Design      : uart_fifo_axi_hw_inst_1_axi_lite_slave_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "axi_lite_slave,Vivado 2023.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(S_AXI_ACLK, S_AXI_ARESETN, S_AXI_AWADDR, 
  S_AXI_AWVALID, S_AXI_AWREADY, S_AXI_WDATA, S_AXI_WSTRB, S_AXI_WVALID, S_AXI_WREADY, 
  S_AXI_BRESP, S_AXI_BVALID, S_AXI_BREADY, S_AXI_ARADDR, S_AXI_ARVALID, S_AXI_ARREADY, 
  S_AXI_RDATA, S_AXI_RRESP, S_AXI_RVALID, S_AXI_RREADY, o_DVSR, i_RX_DATA, o_RX_RDEN, i_RX_EMPTY, 
  o_TX_DATA, o_TX_WREN, i_TX_FULL)
/* synthesis syn_black_box black_box_pad_pin="S_AXI_ARESETN,S_AXI_AWADDR[3:0],S_AXI_AWVALID,S_AXI_AWREADY,S_AXI_WDATA[31:0],S_AXI_WSTRB[3:0],S_AXI_WVALID,S_AXI_WREADY,S_AXI_BRESP[1:0],S_AXI_BVALID,S_AXI_BREADY,S_AXI_ARADDR[3:0],S_AXI_ARVALID,S_AXI_ARREADY,S_AXI_RDATA[31:0],S_AXI_RRESP[1:0],S_AXI_RVALID,S_AXI_RREADY,o_DVSR[31:0],i_RX_DATA[7:0],o_RX_RDEN,i_RX_EMPTY,o_TX_DATA[7:0],o_TX_WREN,i_TX_FULL" */
/* synthesis syn_force_seq_prim="S_AXI_ACLK" */;
  input S_AXI_ACLK /* synthesis syn_isclock = 1 */;
  input S_AXI_ARESETN;
  input [3:0]S_AXI_AWADDR;
  input S_AXI_AWVALID;
  output S_AXI_AWREADY;
  input [31:0]S_AXI_WDATA;
  input [3:0]S_AXI_WSTRB;
  input S_AXI_WVALID;
  output S_AXI_WREADY;
  output [1:0]S_AXI_BRESP;
  output S_AXI_BVALID;
  input S_AXI_BREADY;
  input [3:0]S_AXI_ARADDR;
  input S_AXI_ARVALID;
  output S_AXI_ARREADY;
  output [31:0]S_AXI_RDATA;
  output [1:0]S_AXI_RRESP;
  output S_AXI_RVALID;
  input S_AXI_RREADY;
  output [31:0]o_DVSR;
  input [7:0]i_RX_DATA;
  output o_RX_RDEN;
  input i_RX_EMPTY;
  output [7:0]o_TX_DATA;
  output o_TX_WREN;
  input i_TX_FULL;
endmodule
