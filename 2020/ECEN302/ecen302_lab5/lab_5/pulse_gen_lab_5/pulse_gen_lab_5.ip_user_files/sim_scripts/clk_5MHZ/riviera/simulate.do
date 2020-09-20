onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+clk_5MHZ -L xpm -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.clk_5MHZ xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {clk_5MHZ.udo}

run -all

endsim

quit -force
