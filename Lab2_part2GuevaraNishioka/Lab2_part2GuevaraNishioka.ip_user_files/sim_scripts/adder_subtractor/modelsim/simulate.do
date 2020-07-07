onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L xil_defaultlib -L xlslice_v1_0_2 -L xlconstant_v1_1_6 -L xlconcat_v2_1_3 -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.adder_subtractor xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {adder_subtractor.udo}

run -all

quit -force
