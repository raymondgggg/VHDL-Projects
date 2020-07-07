onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+adder_2bit -L xil_defaultlib -L xlslice_v1_0_2 -L xlconstant_v1_1_6 -L xlconcat_v2_1_3 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.adder_2bit xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {adder_2bit.udo}

run -all

endsim

quit -force
