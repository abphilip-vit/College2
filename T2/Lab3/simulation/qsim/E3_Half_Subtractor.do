onerror {quit -f}
vlib work
vlog -work work E3_Half_Subtractor.vo
vlog -work work E3_Half_Subtractor.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.E3_Half_Subtractor_vlg_vec_tst
vcd file -direction E3_Half_Subtractor.msim.vcd
vcd add -internal E3_Half_Subtractor_vlg_vec_tst/*
vcd add -internal E3_Half_Subtractor_vlg_vec_tst/i1/*
add wave /*
run -all
