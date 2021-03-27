onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tbb5/r
add wave -noupdate /tbb5/g
add wave -noupdate /tbb5/b
add wave -noupdate /tbb5/out
add wave -noupdate /tbb5/Verilog
add wave -noupdate /tbb5/i
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {19999719 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {19999140 ps} {20000140 ps}
