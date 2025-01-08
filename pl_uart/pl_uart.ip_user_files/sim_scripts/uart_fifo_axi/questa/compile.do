vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xilinx_vip
vlib questa_lib/msim/xpm
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/fifo_generator_v13_2_9
vlib questa_lib/msim/util_vector_logic_v2_0_3

vmap xilinx_vip questa_lib/msim/xilinx_vip
vmap xpm questa_lib/msim/xpm
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap fifo_generator_v13_2_9 questa_lib/msim/fifo_generator_v13_2_9
vmap util_vector_logic_v2_0_3 questa_lib/msim/util_vector_logic_v2_0_3

vlog -work xilinx_vip  -incr -mfcu  -sv -L axi_vip_v1_1_15 -L processing_system7_vip_v1_0_17 -L xilinx_vip "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr -mfcu  -sv -L axi_vip_v1_1_15 -L processing_system7_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../pl_uart.gen/sources_1/bd/zynq_uart_fifo_axi/ipshared/ec67/hdl" "+incdir+../../../../pl_uart.gen/sources_1/bd/zynq_uart_fifo_axi/ipshared/6b2b/hdl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93  \
"C:/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../pl_uart.gen/sources_1/bd/zynq_uart_fifo_axi/ipshared/ec67/hdl" "+incdir+../../../../pl_uart.gen/sources_1/bd/zynq_uart_fifo_axi/ipshared/6b2b/hdl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../bd/uart_fifo_axi/ip/uart_fifo_axi_uart_tx_0/sim/uart_fifo_axi_uart_tx_0.v" \
"../../../bd/uart_fifo_axi/ip/uart_fifo_axi_baudrate_generator_0/sim/uart_fifo_axi_baudrate_generator_0.v" \

vlog -work fifo_generator_v13_2_9  -incr -mfcu  "+incdir+../../../../pl_uart.gen/sources_1/bd/zynq_uart_fifo_axi/ipshared/ec67/hdl" "+incdir+../../../../pl_uart.gen/sources_1/bd/zynq_uart_fifo_axi/ipshared/6b2b/hdl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../pl_uart.gen/sources_1/bd/uart_fifo_axi/ipshared/ac72/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_9  -93  \
"../../../../pl_uart.gen/sources_1/bd/uart_fifo_axi/ipshared/ac72/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_9  -incr -mfcu  "+incdir+../../../../pl_uart.gen/sources_1/bd/zynq_uart_fifo_axi/ipshared/ec67/hdl" "+incdir+../../../../pl_uart.gen/sources_1/bd/zynq_uart_fifo_axi/ipshared/6b2b/hdl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../pl_uart.gen/sources_1/bd/uart_fifo_axi/ipshared/ac72/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../pl_uart.gen/sources_1/bd/zynq_uart_fifo_axi/ipshared/ec67/hdl" "+incdir+../../../../pl_uart.gen/sources_1/bd/zynq_uart_fifo_axi/ipshared/6b2b/hdl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../bd/uart_fifo_axi/ip/uart_fifo_axi_fifo_tx_0/sim/uart_fifo_axi_fifo_tx_0.v" \
"../../../bd/uart_fifo_axi/ip/uart_fifo_axi_uart_rx_0/sim/uart_fifo_axi_uart_rx_0.v" \
"../../../bd/uart_fifo_axi/ip/uart_fifo_axi_fifo_rx_0/sim/uart_fifo_axi_fifo_rx_0.v" \
"../../../bd/uart_fifo_axi/ip/uart_fifo_axi_axi_lite_slave_0_0/sim/uart_fifo_axi_axi_lite_slave_0_0.v" \

vlog -work util_vector_logic_v2_0_3  -incr -mfcu  "+incdir+../../../../pl_uart.gen/sources_1/bd/zynq_uart_fifo_axi/ipshared/ec67/hdl" "+incdir+../../../../pl_uart.gen/sources_1/bd/zynq_uart_fifo_axi/ipshared/6b2b/hdl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../pl_uart.gen/sources_1/bd/uart_fifo_axi/ipshared/5e7b/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../pl_uart.gen/sources_1/bd/zynq_uart_fifo_axi/ipshared/ec67/hdl" "+incdir+../../../../pl_uart.gen/sources_1/bd/zynq_uart_fifo_axi/ipshared/6b2b/hdl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../bd/uart_fifo_axi/ip/uart_fifo_axi_util_vector_logic_0_0/sim/uart_fifo_axi_util_vector_logic_0_0.v" \
"../../../bd/uart_fifo_axi/sim/uart_fifo_axi.v" \

vlog -work xil_defaultlib \
"glbl.v"

