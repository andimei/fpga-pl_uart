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
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_vip_v1_1_15
vlib activehdl/processing_system7_vip_v1_0_17
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/proc_sys_reset_v5_0_14
vlib activehdl/generic_baseblocks_v2_1_1
vlib activehdl/axi_data_fifo_v2_1_28
vlib activehdl/axi_register_slice_v2_1_29
vlib activehdl/axi_protocol_converter_v2_1_29

vmap xilinx_vip activehdl/xilinx_vip
vmap xpm activehdl/xpm
vmap xil_defaultlib activehdl/xil_defaultlib
vmap fifo_generator_v13_2_9 activehdl/fifo_generator_v13_2_9
vmap util_vector_logic_v2_0_3 activehdl/util_vector_logic_v2_0_3
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_15 activehdl/axi_vip_v1_1_15
vmap processing_system7_vip_v1_0_17 activehdl/processing_system7_vip_v1_0_17
vmap lib_cdc_v1_0_2 activehdl/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_14 activehdl/proc_sys_reset_v5_0_14
vmap generic_baseblocks_v2_1_1 activehdl/generic_baseblocks_v2_1_1
vmap axi_data_fifo_v2_1_28 activehdl/axi_data_fifo_v2_1_28
vmap axi_register_slice_v2_1_29 activehdl/axi_register_slice_v2_1_29
vmap axi_protocol_converter_v2_1_29 activehdl/axi_protocol_converter_v2_1_29

vlog -work xilinx_vip  -sv2k12 "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l fifo_generator_v13_2_9 -l util_vector_logic_v2_0_3 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l generic_baseblocks_v2_1_1 -l axi_data_fifo_v2_1_28 -l axi_register_slice_v2_1_29 -l axi_protocol_converter_v2_1_29 \
"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+../../../../pl_uart.gen/sources_1/bd/zynq_uart_fifo_axi/ipshared/ec67/hdl" "+incdir+../../../../pl_uart.gen/sources_1/bd/zynq_uart_fifo_axi/ipshared/6b2b/hdl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l fifo_generator_v13_2_9 -l util_vector_logic_v2_0_3 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l generic_baseblocks_v2_1_1 -l axi_data_fifo_v2_1_28 -l axi_register_slice_v2_1_29 -l axi_protocol_converter_v2_1_29 \
"C:/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  \
"C:/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../pl_uart.gen/sources_1/bd/zynq_uart_fifo_axi/ipshared/ec67/hdl" "+incdir+../../../../pl_uart.gen/sources_1/bd/zynq_uart_fifo_axi/ipshared/6b2b/hdl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l fifo_generator_v13_2_9 -l util_vector_logic_v2_0_3 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l generic_baseblocks_v2_1_1 -l axi_data_fifo_v2_1_28 -l axi_register_slice_v2_1_29 -l axi_protocol_converter_v2_1_29 \
"../../../bd/uart_fifo_axi_hw_inst_1/sim/uart_fifo_axi_hw_inst_1.v" \
"../../../bd/uart_fifo_axi_hw_inst_1/ip/uart_fifo_axi_hw_inst_1_uart_tx_0/sim/uart_fifo_axi_hw_inst_1_uart_tx_0.v" \
"../../../bd/uart_fifo_axi_hw_inst_1/ip/uart_fifo_axi_hw_inst_1_baudrate_generator_0/sim/uart_fifo_axi_hw_inst_1_baudrate_generator_0.v" \

vlog -work fifo_generator_v13_2_9  -v2k5 "+incdir+../../../../pl_uart.gen/sources_1/bd/zynq_uart_fifo_axi/ipshared/ec67/hdl" "+incdir+../../../../pl_uart.gen/sources_1/bd/zynq_uart_fifo_axi/ipshared/6b2b/hdl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l fifo_generator_v13_2_9 -l util_vector_logic_v2_0_3 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l generic_baseblocks_v2_1_1 -l axi_data_fifo_v2_1_28 -l axi_register_slice_v2_1_29 -l axi_protocol_converter_v2_1_29 \
"../../../../pl_uart.gen/sources_1/bd/zynq_uart_fifo_axi/bd/uart_fifo_axi_hw_inst_1/ipshared/ac72/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_9 -93  \
"../../../../pl_uart.gen/sources_1/bd/zynq_uart_fifo_axi/bd/uart_fifo_axi_hw_inst_1/ipshared/ac72/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_9  -v2k5 "+incdir+../../../../pl_uart.gen/sources_1/bd/zynq_uart_fifo_axi/ipshared/ec67/hdl" "+incdir+../../../../pl_uart.gen/sources_1/bd/zynq_uart_fifo_axi/ipshared/6b2b/hdl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l fifo_generator_v13_2_9 -l util_vector_logic_v2_0_3 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l generic_baseblocks_v2_1_1 -l axi_data_fifo_v2_1_28 -l axi_register_slice_v2_1_29 -l axi_protocol_converter_v2_1_29 \
"../../../../pl_uart.gen/sources_1/bd/zynq_uart_fifo_axi/bd/uart_fifo_axi_hw_inst_1/ipshared/ac72/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../pl_uart.gen/sources_1/bd/zynq_uart_fifo_axi/ipshared/ec67/hdl" "+incdir+../../../../pl_uart.gen/sources_1/bd/zynq_uart_fifo_axi/ipshared/6b2b/hdl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l fifo_generator_v13_2_9 -l util_vector_logic_v2_0_3 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l generic_baseblocks_v2_1_1 -l axi_data_fifo_v2_1_28 -l axi_register_slice_v2_1_29 -l axi_protocol_converter_v2_1_29 \
"../../../bd/uart_fifo_axi_hw_inst_1/ip/uart_fifo_axi_hw_inst_1_fifo_tx_0/sim/uart_fifo_axi_hw_inst_1_fifo_tx_0.v" \
"../../../bd/uart_fifo_axi_hw_inst_1/ip/uart_fifo_axi_hw_inst_1_uart_rx_0/sim/uart_fifo_axi_hw_inst_1_uart_rx_0.v" \
"../../../bd/uart_fifo_axi_hw_inst_1/ip/uart_fifo_axi_hw_inst_1_fifo_rx_0/sim/uart_fifo_axi_hw_inst_1_fifo_rx_0.v" \
"../../../bd/uart_fifo_axi_hw_inst_1/ip/uart_fifo_axi_hw_inst_1_axi_lite_slave_0/sim/uart_fifo_axi_hw_inst_1_axi_lite_slave_0.v" \

vlog -work util_vector_logic_v2_0_3  -v2k5 "+incdir+../../../../pl_uart.gen/sources_1/bd/zynq_uart_fifo_axi/ipshared/ec67/hdl" "+incdir+../../../../pl_uart.gen/sources_1/bd/zynq_uart_fifo_axi/ipshared/6b2b/hdl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l fifo_generator_v13_2_9 -l util_vector_logic_v2_0_3 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l generic_baseblocks_v2_1_1 -l axi_data_fifo_v2_1_28 -l axi_register_slice_v2_1_29 -l axi_protocol_converter_v2_1_29 \
"../../../../pl_uart.gen/sources_1/bd/zynq_uart_fifo_axi/bd/uart_fifo_axi_hw_inst_1/ipshared/5e7b/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../pl_uart.gen/sources_1/bd/zynq_uart_fifo_axi/ipshared/ec67/hdl" "+incdir+../../../../pl_uart.gen/sources_1/bd/zynq_uart_fifo_axi/ipshared/6b2b/hdl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l fifo_generator_v13_2_9 -l util_vector_logic_v2_0_3 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l generic_baseblocks_v2_1_1 -l axi_data_fifo_v2_1_28 -l axi_register_slice_v2_1_29 -l axi_protocol_converter_v2_1_29 \
"../../../bd/uart_fifo_axi_hw_inst_1/ip/uart_fifo_axi_hw_inst_1_not_rst_0/sim/uart_fifo_axi_hw_inst_1_not_rst_0.v" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../pl_uart.gen/sources_1/bd/zynq_uart_fifo_axi/ipshared/ec67/hdl" "+incdir+../../../../pl_uart.gen/sources_1/bd/zynq_uart_fifo_axi/ipshared/6b2b/hdl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l fifo_generator_v13_2_9 -l util_vector_logic_v2_0_3 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l generic_baseblocks_v2_1_1 -l axi_data_fifo_v2_1_28 -l axi_register_slice_v2_1_29 -l axi_protocol_converter_v2_1_29 \
"../../../../pl_uart.gen/sources_1/bd/zynq_uart_fifo_axi/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_15  -sv2k12 "+incdir+../../../../pl_uart.gen/sources_1/bd/zynq_uart_fifo_axi/ipshared/ec67/hdl" "+incdir+../../../../pl_uart.gen/sources_1/bd/zynq_uart_fifo_axi/ipshared/6b2b/hdl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l fifo_generator_v13_2_9 -l util_vector_logic_v2_0_3 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l generic_baseblocks_v2_1_1 -l axi_data_fifo_v2_1_28 -l axi_register_slice_v2_1_29 -l axi_protocol_converter_v2_1_29 \
"../../../../pl_uart.gen/sources_1/bd/zynq_uart_fifo_axi/ipshared/5753/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_17  -sv2k12 "+incdir+../../../../pl_uart.gen/sources_1/bd/zynq_uart_fifo_axi/ipshared/ec67/hdl" "+incdir+../../../../pl_uart.gen/sources_1/bd/zynq_uart_fifo_axi/ipshared/6b2b/hdl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l fifo_generator_v13_2_9 -l util_vector_logic_v2_0_3 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l generic_baseblocks_v2_1_1 -l axi_data_fifo_v2_1_28 -l axi_register_slice_v2_1_29 -l axi_protocol_converter_v2_1_29 \
"../../../../pl_uart.gen/sources_1/bd/zynq_uart_fifo_axi/ipshared/6b2b/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../pl_uart.gen/sources_1/bd/zynq_uart_fifo_axi/ipshared/ec67/hdl" "+incdir+../../../../pl_uart.gen/sources_1/bd/zynq_uart_fifo_axi/ipshared/6b2b/hdl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l fifo_generator_v13_2_9 -l util_vector_logic_v2_0_3 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l generic_baseblocks_v2_1_1 -l axi_data_fifo_v2_1_28 -l axi_register_slice_v2_1_29 -l axi_protocol_converter_v2_1_29 \
"../../../bd/zynq_uart_fifo_axi/ip/zynq_uart_fifo_axi_processing_system7_0_0/sim/zynq_uart_fifo_axi_processing_system7_0_0.v" \

vcom -work lib_cdc_v1_0_2 -93  \
"../../../../pl_uart.gen/sources_1/bd/zynq_uart_fifo_axi/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_14 -93  \
"../../../../pl_uart.gen/sources_1/bd/zynq_uart_fifo_axi/ipshared/408c/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/zynq_uart_fifo_axi/ip/zynq_uart_fifo_axi_rst_ps7_0_50M_0/sim/zynq_uart_fifo_axi_rst_ps7_0_50M_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../pl_uart.gen/sources_1/bd/zynq_uart_fifo_axi/ipshared/ec67/hdl" "+incdir+../../../../pl_uart.gen/sources_1/bd/zynq_uart_fifo_axi/ipshared/6b2b/hdl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l fifo_generator_v13_2_9 -l util_vector_logic_v2_0_3 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l generic_baseblocks_v2_1_1 -l axi_data_fifo_v2_1_28 -l axi_register_slice_v2_1_29 -l axi_protocol_converter_v2_1_29 \
"../../../bd/zynq_uart_fifo_axi/sim/zynq_uart_fifo_axi.v" \

vlog -work generic_baseblocks_v2_1_1  -v2k5 "+incdir+../../../../pl_uart.gen/sources_1/bd/zynq_uart_fifo_axi/ipshared/ec67/hdl" "+incdir+../../../../pl_uart.gen/sources_1/bd/zynq_uart_fifo_axi/ipshared/6b2b/hdl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l fifo_generator_v13_2_9 -l util_vector_logic_v2_0_3 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l generic_baseblocks_v2_1_1 -l axi_data_fifo_v2_1_28 -l axi_register_slice_v2_1_29 -l axi_protocol_converter_v2_1_29 \
"../../../../pl_uart.gen/sources_1/bd/zynq_uart_fifo_axi/ipshared/10ab/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_data_fifo_v2_1_28  -v2k5 "+incdir+../../../../pl_uart.gen/sources_1/bd/zynq_uart_fifo_axi/ipshared/ec67/hdl" "+incdir+../../../../pl_uart.gen/sources_1/bd/zynq_uart_fifo_axi/ipshared/6b2b/hdl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l fifo_generator_v13_2_9 -l util_vector_logic_v2_0_3 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l generic_baseblocks_v2_1_1 -l axi_data_fifo_v2_1_28 -l axi_register_slice_v2_1_29 -l axi_protocol_converter_v2_1_29 \
"../../../../pl_uart.gen/sources_1/bd/zynq_uart_fifo_axi/ipshared/279e/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_29  -v2k5 "+incdir+../../../../pl_uart.gen/sources_1/bd/zynq_uart_fifo_axi/ipshared/ec67/hdl" "+incdir+../../../../pl_uart.gen/sources_1/bd/zynq_uart_fifo_axi/ipshared/6b2b/hdl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l fifo_generator_v13_2_9 -l util_vector_logic_v2_0_3 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l generic_baseblocks_v2_1_1 -l axi_data_fifo_v2_1_28 -l axi_register_slice_v2_1_29 -l axi_protocol_converter_v2_1_29 \
"../../../../pl_uart.gen/sources_1/bd/zynq_uart_fifo_axi/ipshared/ff9f/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_protocol_converter_v2_1_29  -v2k5 "+incdir+../../../../pl_uart.gen/sources_1/bd/zynq_uart_fifo_axi/ipshared/ec67/hdl" "+incdir+../../../../pl_uart.gen/sources_1/bd/zynq_uart_fifo_axi/ipshared/6b2b/hdl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l fifo_generator_v13_2_9 -l util_vector_logic_v2_0_3 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l generic_baseblocks_v2_1_1 -l axi_data_fifo_v2_1_28 -l axi_register_slice_v2_1_29 -l axi_protocol_converter_v2_1_29 \
"../../../../pl_uart.gen/sources_1/bd/zynq_uart_fifo_axi/ipshared/a63f/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../pl_uart.gen/sources_1/bd/zynq_uart_fifo_axi/ipshared/ec67/hdl" "+incdir+../../../../pl_uart.gen/sources_1/bd/zynq_uart_fifo_axi/ipshared/6b2b/hdl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l fifo_generator_v13_2_9 -l util_vector_logic_v2_0_3 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l generic_baseblocks_v2_1_1 -l axi_data_fifo_v2_1_28 -l axi_register_slice_v2_1_29 -l axi_protocol_converter_v2_1_29 \
"../../../bd/zynq_uart_fifo_axi/ip/zynq_uart_fifo_axi_auto_pc_0/sim/zynq_uart_fifo_axi_auto_pc_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

