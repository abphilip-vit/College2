onerror {quit -f}
vlib work
vlog -work work E5_Encoder.vo
vlog -work work E5_Encoder.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.E5_Encoder_vlg_vec_tst
vcd file -direction E5_Encoder.msim.vcd
vcd add -internal E5_Encoder_vlg_vec_tst/*
vcd add -internal E5_Encoder_vlg_vec_tst/i1/*
add wave /*
run -all
