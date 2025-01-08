transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib activehdl/xilinx_vip
vlib activehdl/xpm
vlib activehdl/xil_defaultlib
vlib activehdl/fifo_generator_v13_2_9
vlib activehdl/util_vector_logic_v2_0_3

vmap xilinx_vip activehdl/xilinx_vip
vmap xpm activehdl/xpm
vmap xil_defaultlib activehdl/xil_defaultlib
vmap fifo_generator_v13_2_9 activehdl/fifo_generator_v13_2_9
vmap util_vector_logic_v2_0_3 activehdl/util_vector_logic_v2_0_3

vlog -work xilinx_vip  -sv2k12 "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l fifo_generator_v13_2_9 -l util_vector_logic_v2_0_3 \
"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+../../../../pl_uart.gen/sources_1/bd/zynq_uart_fifo_axi/ipshared/ec67/hdl" "+incdir+../../../../pl_uart.gen/sources_1/bd/zynq_uart_fifo_axi/ipshared/6b2b/hdl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l fifo_generator_v13_2_9 -l util_vector_logic_v2_0_3 \
"C:/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  \
"C:/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../pl_uart.gen/sources_1/bd/zynq_uart_fifo_axi/ipshared/ec67/hdl" "+incdir+../../../../pl_uart.gen/sources_1/bd/zynq_uart_fifo_axi/ipshared/6b2b/hdl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l fifo_generator_v13_2_9 -l util_vector_logic_v2_0_3 \
"../../../bd/uart_fifo_axi/ip/uart_fifo_axi_uart_tx_0/sim/uart_fifo_axi_uart_tx_0.v" \
"../../../bd/uart_fifo_axi/ip/uart_fifo_axi_baudrate_generator_0/sim/uart_fifo_axi_baudrate_generator_0.v" \

vlog -work fifo_generator_v13_2_9  -v2k5 "+incdir+../../../../pl_uart.gen/sources_1/bd/zynq_uart_fifo_axi/ipshared/ec67/hdl" "+incdir+../../../../pl_uart.gen/sources_1/bd/zynq_uart_fifo_axi/ipshared/6b2b/hdl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l fifo_generator_v13_2_9 -l util_vector_logic_v2_0_3 \
"../../../../pl_uart.gen/sources_1/bd/uart_fifo_axi/ipshared/ac72/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_9 -93  \
"../../../../pl_uart.gen/sources_1/bd/uart_fifo_axi/ipshared/ac72/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_9  -v2k5 "+incdir+../../../../pl_uart.gen/sources_1/bd/zynq_uart_fifo_axi/ipshared/ec67/hdl" "+incdir+../../../../pl_uart.gen/sources_1/bd/zynq_uart_fifo_axi/ipshared/6b2b/hdl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l fifo_generator_v13_2_9 -l util_vector_logic_v2_0_3 \
"../../../../pl_uart.gen/sources_1/bd/uart_fifo_axi/ipshared/ac72/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../pl_uart.gen/sources_1/bd/zynq_uart_fifo_axi/ipshared/ec67/hdl" "+incdir+../../../../pl_uart.gen/sources_1/bd/zynq_uart_fifo_axi/ipshared/6b2b/hdl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l fifo_generator_v13_2_9 -l util_vector_logic_v2_0_3 \
"../../../bd/uart_fifo_axi/ip/uart_fifo_axi_fifo_tx_0/sim/uart_fifo_axi_fifo_tx_0.v" \
"../../../bd/uart_fifo_axi/ip/uart_fifo_axi_uart_rx_0/sim/uart_fifo_axi_uart_rx_0.v" \
"../../../bd/uart_fifo_axi/ip/uart_fifo_axi_fifo_rx_0/sim/uart_fifo_axi_fifo_rx_0.v" \
"../../../bd/uart_fifo_axi/ip/uart_fifo_axi_axi_lite_slave_0_0/sim/uart_fifo_axi_axi_lite_slave_0_0.v" \

vlog -work util_vector_logic_v2_0_3  -v2k5 "+incdir+../../../../pl_uart.gen/sources_1/bd/zynq_uart_fifo_axi/ipshared/ec67/hdl" "+incdir+../../../../pl_uart.gen/sources_1/bd/zynq_uart_fifo_axi/ipshared/6b2b/hdl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l fifo_generator_v13_2_9 -l util_vector_logic_v2_0_3 \
"../../../../pl_uart.gen/sources_1/bd/uart_fifo_axi/ipshared/5e7b/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../pl_uart.gen/sources_1/bd/zynq_uart_fifo_axi/ipshared/ec67/hdl" "+incdir+../../../../pl_uart.gen/sources_1/bd/zynq_uart_fifo_axi/ipshared/6b2b/hdl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l fifo_generator_v13_2_9 -l util_vector_logic_v2_0_3 \
"../../../bd/uart_fifo_axi/ip/uart_fifo_axi_util_vector_logic_0_0/sim/uart_fifo_axi_util_vector_logic_0_0.v" \
"../../../bd/uart_fifo_axi/sim/uart_fifo_axi.v" \

vlog -work xil_defaultlib \
"glbl.v"

