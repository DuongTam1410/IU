vlog -work work *.v
vsim work.tbb5
add wave sim:/tbb5/*
run -all
quit -sim
