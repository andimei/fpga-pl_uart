// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Mon Jan  6 16:18:42 2025
// Host        : DESKTOP-5CM83PC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top uart_fifo_axi_hw_inst_1_fifo_rx_0 -prefix
//               uart_fifo_axi_hw_inst_1_fifo_rx_0_ uart_fifo_axi_hw_inst_1_fifo_rx_0_sim_netlist.v
// Design      : uart_fifo_axi_hw_inst_1_fifo_rx_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "uart_fifo_axi_hw_inst_1_fifo_rx_0,fifo_generator_v13_2_9,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_9,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module uart_fifo_axi_hw_inst_1_fifo_rx_0
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
  uart_fifo_axi_hw_inst_1_fifo_rx_0_fifo_generator_v13_2_9 U0
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
bsVTO+fdjAyZoDslfOFvCvriMPgiGApd2UcuCHs=
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
