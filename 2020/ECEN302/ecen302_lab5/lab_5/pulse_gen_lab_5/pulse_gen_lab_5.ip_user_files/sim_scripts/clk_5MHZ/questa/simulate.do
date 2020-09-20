onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib clk_5MHZ_opt

do {wave.do}

view wave
view structure
view signals

do {clk_5MHZ.udo}

run -all

quit -force
