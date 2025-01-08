// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Mon Jan  6 16:18:42 2025
// Host        : DESKTOP-5CM83PC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top uart_fifo_axi_hw_inst_1_fifo_tx_0 -prefix
//               uart_fifo_axi_hw_inst_1_fifo_tx_0_ uart_fifo_axi_hw_inst_1_fifo_rx_0_sim_netlist.v
// Design      : uart_fifo_axi_hw_inst_1_fifo_rx_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "uart_fifo_axi_hw_inst_1_fifo_rx_0,fifo_generator_v13_2_9,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_9,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module uart_fifo_axi_hw_inst_1_fifo_tx_0
   (clk,
    rst,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 core_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME core_clk, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN zynq_uart_fifo_axi_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk;
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
  uart_fifo_axi_hw_inst_1_fifo_tx_0_fifo_generator_v13_2_9 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 51728)
`pragma protect data_block
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
lT4wGkT1TsQEVI/Pb+VlP9N+Vx4v4/UmweYCgyo=
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
