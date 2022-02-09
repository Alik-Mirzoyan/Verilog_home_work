#!/usr/bin/csh

echo "Remove old files"

rm ./counter



echo "Compile Verilog sources"

iverilog -o ./counter -g2012 -D VCD_DUMP_EN \
-l ./counter.v \
-s testbench

echo "Run the compilation"

vvp ./counter
