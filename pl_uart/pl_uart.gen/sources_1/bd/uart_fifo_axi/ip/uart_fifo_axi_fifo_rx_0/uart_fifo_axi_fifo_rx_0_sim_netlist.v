// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Mon Jan  6 09:28:03 2025
// Host        : DESKTOP-5CM83PC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/FPGA/fpga-pl_uart/pl_uart/pl_uart.gen/sources_1/bd/uart_fifo_axi/ip/uart_fifo_axi_fifo_rx_0/uart_fifo_axi_fifo_rx_0_sim_netlist.v
// Design      : uart_fifo_axi_fifo_rx_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "uart_fifo_axi_fifo_rx_0,fifo_generator_v13_2_9,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_9,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module uart_fifo_axi_fifo_rx_0
   (clk,
    rst,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 core_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME core_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN uart_fifo_axi_S_AXI_ACLK_0, INSERT_VIP 0" *) input clk;
  input rst;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [7:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [7:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;

  wire clk;
  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire rd_en;
  wire rst;
  wire wr_en;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_almost_full_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_prog_full_UNCONNECTED;
  wire NLW_U0_rd_rst_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_valid_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire NLW_U0_wr_rst_busy_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [9:0]NLW_U0_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [9:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [9:0]NLW_U0_wr_data_count_UNCONNECTED;

  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "1" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "10" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "8" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "8" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_FULL_FLAGS_RST_VAL = "0" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "1" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "6" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "4" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "1" *) 
  (* C_PRELOAD_REGS = "0" *) 
  (* C_PRIM_FIFO_TYPE = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "1022" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "1021" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "10" *) 
  (* C_RD_DEPTH = "1024" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "10" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "10" *) 
  (* C_WR_DEPTH = "1024" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "10" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  uart_fifo_axi_fifo_rx_0_fifo_generator_v13_2_9 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(NLW_U0_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(clk),
        .data_count(NLW_U0_data_count_UNCONNECTED[9:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(1'b0),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[9:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_U0_rd_rst_busy_UNCONNECTED),
        .rst(rst),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(NLW_U0_valid_UNCONNECTED),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(1'b0),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[9:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_U0_wr_rst_busy_UNCONNECTED));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
gcDjvJ18gZEH8C+LHMq/N7AaYWSyHgvjIQn585rdUOTVX2orO9n8j6LNiga3BYkS91+lbHAjAieW
oD/8serz9uvKt9uVuyMIE6oOFFScZR6q2wQk1d1Qzq717+8yPCwgBT9HIhfJIHLujHt+cA2l2L5t
tux9aNBdVKkk1MHv7yY=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
exhH3ieiewq538XhQByQWj7PMh1Y+pzdDw+4bALHgOXUMTZleYL0Pvhip/E5VwYBOb3/5i/ElWf3
Vm6OeE9b1Jj8xb7x10akeyRaNdCJYAtTqgb7gFS/crjXeoaYKJgLqCiyaB7LdWR9BiZOWqxEPSxe
/lr/8F8psti0kra2jACCbz94iU3qDIdZWH5kqd21Pp2/YczWpJBQzh+bBz9V+EuMAeZIzY3x2GZy
jOMZPemqiqFhSEcDf09mKK3xKEUxE+TPz82hd9ZrF5OjFst6mWMVye10lkzmY5Hmmx5Y/PVgPx3R
fN0tTAZfIDGH/YUu758U8UWOIcMzBHF6rytqmg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Umfm0FNxPKfdryB9QccnkcrzqkPtalTpE+R0M3D9kxaXOa1YOGT+9jGc1TRZMLcN5NyGN3UIZcH4
LWFVfGg80k9RmFHBDZaHzOXaomQhoPSO++ArXvmvO5zgttfCHEl7jypYkuPgwfQMfjK7YII9Deex
KOC8JtqORVWmhq47cpQ=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
cm7WeJnXtFlUdJuJH7wHYfinJTaBhpglyFWD2YwmOuS4fmVA4nXbX0IMaU1F1WGO1VK25KlFf8Nm
w8L6BJ6ZpH12xPIl3J17rMT4/3KHv9tpBWqeC080GeV5nISo8JrhOpIKa4+HBHZ6lYLce8LBAu/Z
EiBmDqw22aLsAuPAzAMh9yuHT5rpX9ykD9u0uZ5UplK05S0TsvYMUqcHNQ2hijt/lbxvUxXHTa+W
GJ5RRQAdw98wG1mc65u16hfZPsLimnw4BHwpyNGOPadShqb78rQihc+YiBTn4lgN1HhquWRGqCYZ
ZEjBmtWOJm8WJSTWtcpFEkmPlOTDmNX82e9mnw==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
a1mMNsEVIHwFCxw3sHygQ6eU3z5whgDQI+YHUmPAwU6q4vqfu2NVxu0z42QL1rV1rCsm39SqZ078
EGEqt7XUt6bdvI3yu4dU8gF+jou5njJ2UU34VmbOw/MQt48Hmi+hxtH1/zSlbNe2iOksDFEFTHmW
WGHgPS2bACG/KtAZMYK3gBtbnb9dtu+p5hxiQtwMOFnv9kQGBxcMaciN0yqy2TE5fygwKcNEua29
jiGUF0qgPS1k6qN+zLrYWkaVT0amR1MFXpv0WcwL+xVkxj6bBQhe5D7t5xCIsfLR4xqa5WVpa0dN
FkxGlIoufL17G/cGRr4nV4QP0sqcDCCHYpRoIA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rPFWI49JcHqYFxRrTG2uFixmE4jeIWIero9KijBFo7+FOCC7hJeSlCuNlwb8mBsI0Up57fm7C8t9
tb1l2QCfvy82JqTvEuH49UmS+8/GEnbK1QbVHsDIiv3/8cFn+0zw/VSuVeaN8L0yzeNIo8m59iAq
AQ9wOyqKFEhKKkbn+nVg+hQW3L/P25hisjV06sqmfsA0Rx4bYhFoxEvIw3A4x9LsBIIfDpgDsPzS
NICAEhfA7fWXKK6UsOmuq1NZLTDmFe2zEHijVMovzm/qqvHfu7fCt5POlGtLOPZhXGCDZi0v1yiq
VyT7JTUW5P/rcLgzkfyKToozq36lEkXd6VSaLg==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
T4EV2kKcg5a7rlvEGr4AG3uvv0JzSoc0NQb9aIeE2gsKGq0oLel4q0oZ7eO6He8noW5KEowgkY0O
xDnerk/R4qxdSePYeRRmUg3KZ7hAHVEQrHpQ2RbYwK5mUIpQLjxCWRWzBjeWOce2bh0dAMR/4OH6
t95V8b9VWpgepcUXynGvLDv31tVgr+8LtXlgWTNBiJj2mTZ3gEVxpgGRwMGsampw9yKqBKoR+/hg
++FP8JJkrOSdB2bhnNaD4fZotMLkhYDrWvQm9z6rW7fwxA2oEI+oUqi+K+82oiLzeVWy7FhVyzgS
Y273uSE53DWk35UE9A6ebcI/xUl1iGqwdeZihA==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
gZRrJLrBkbil4BLf1tia07NzGL28f+Pk9zyPElbTDf8NEXCsuwTum6RjR5lvY/odzAYHlcKxpG+6
gwjafT2OV5gHqqtPXrRHcVU4p5LEzOOl5p3puqvK+1z2+YpHqxOZIIZPIH9kjtzNgcBmcU7S2sFN
zTxyAYuLL9sAN+AIQ9UrW4MXDWxUtdkwPaSyFIvuKoxOKUD5IXEY9NtBpz1zsABMKNHneOO8pAix
qg8S/uQ/XJ8Qggr+vE7HDUUMCsijNXvqbkLM3xf6dXFpOqanKxd6/GfTcob4sezm/hMOZ2xiXcfS
hsYUMRdO9H6fmhECfszoK2XMsMt6xM+vlLywWJ0I6u468qVFxROkf9vL+ZDq/tMiJOm7E1p+HDif
98f5v1OybtzlZJP9bDMwWYcsCqcDejCMQyYOgPCgg+2jTR1JezxuK7PpjyliT0rnu7FfI/0tRzbL
d5YqO79RN0byWVTTdIlTWzL/qBD8BLVqXzWs3M+up46dGPxbkzv44od4

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
A79lFm/8JnoMxv1MOWkY+AtU24uc6/CeGf6bjoYWLJXkzzHQooKleg9l+jH7oajoC3oVQh/sMXdi
3QmwZ5SKMt6sb03SC5BW7xPky8zyP6w8FRMCI2Tz1/GhozqjIbgSstUfCaemxIgj3rG7GkRYZ/2k
ualG2mpYDNyaxz1lMYaHfm7stH/IQlkCh6HHMbi7ImYJ6pILa828Ls3VREjo7dtXPS2ZDFxreSIH
2SZ3NpLJO0/umchZaUkt1xN0bsxgtGdOzSqGDpTJrU/ltmclBX199pmrXQa5p/q0FSLj2WkB043l
l3x1Rdipn49DvChkvbVzJP9aej4kwSPhvxHnHQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GFpXmWYmUY46GvuVucUW1VOu3+gGtLxYW4Ho/p4wggZ+jWrpUVhz2RSAxu+ufiLHtM9oYgKPaSYT
DOeuIJGTnxGr20Vh6Nn3cc41TyKAf0vxN2fGISEQQWrjh9OOgNcBmJfaHsSq7+5dhCaIWlGrInVr
GD5TqclLzw6cHAuPGxMi2wD4rq16RkDJnQbPf8ptaskWz81NxZfyWAL4T2E24soybpln8+vuF+72
IQYfLQh/dDDsNHKNKwTKAtGjpFS8eVSbYnS+k3Am4loN8JRflh0+c4yGUo4EkuRzUFiIBrJOKylp
qicgwQw7vdbe+yPl6moUlvA1U2CjJ87bsXk5CA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Hzklq501x4qEym07A6+Vh+O6T5Q1srpTjckVi/KQ8/P6I6xpFqHBBikoKASz9mkWuvFaf6aly934
etGfnzZuPuKCoMPixevIcq9cgFblu43p0H0FR4BSbqN+A/K2utwAblPur01qwtH9nc1azxOtPedI
3KLsEBUN2ObidzkZIUbiQlQ72wru0lGZ5uN6iiNcLRnEhqjdjWiOHf5qGo+df2QyP6S5zRR7hGOd
N5h9/9towH2UQ++6hnOd4pjtl7PKHWlU92421M+LhruDkz4Bw6c7d7EVdbIcZ3ub+l/OnCyNwQsr
WUo2E+j4vd3zIVA0gzTA1oLX73BJ1oxwQdO3JA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 51936)
`pragma protect data_block
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
XXiii+LkJTkA
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
