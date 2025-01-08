onbreak {quit -f}
onerror {quit -f}

vsim  -lib xil_defaultlib zynq_uart_fifo_axi_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {zynq_uart_fifo_axi.udo}

run 1000ns

quit -force
