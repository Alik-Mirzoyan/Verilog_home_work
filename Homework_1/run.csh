#! /usr/bin/csh

echo "Remove old files"
rm ./exm_1
echo "Compile Verilog sources"
iverilog -o exm_1 -g2012 -D VCD_DUMP_EN\
-l /home/khachik/Desktop/verilog/Verilog_home_work/Homework_1/ripple_carry_counter.v\
-s testbench

echo "Run the compilation"
vvp ./exm_1
