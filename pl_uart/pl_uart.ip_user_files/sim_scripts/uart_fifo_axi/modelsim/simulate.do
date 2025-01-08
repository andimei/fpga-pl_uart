onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc"  -L xilinx_vip -L xpm -L xil_defaultlib -L fifo_generator_v13_2_9 -L util_vector_logic_v2_0_3 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.uart_fifo_axi xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {uart_fifo_axi.udo}

run 1000ns

quit -force
