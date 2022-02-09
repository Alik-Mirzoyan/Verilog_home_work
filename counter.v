module ripple_carry_counter(clk,reset,enable,q);
input clk;
input reset;
input enable;
output [7:0] q;
wire clk;
wire reset;
wire enable;
reg [7:0] q;

always @ (posedge clk)
begin
if (reset == 1'b1)
begin
q <= 8'b00000000;
end
else if (enable == 1'b1)
begin
q <= q + 1;
end
end

endmodule

module testbench;

reg clk;
reg reset;
reg enable;
wire [7:0] q;

initial 
begin
/*$display("time\t c r e counter");
$monitor("%g\t %b %b %b %b", $time, clk, reset, enable, q);*/
clk = 1;
reset = 0;
enable = 0;
#5 reset = 1;
#10 reset =0;
#5 enable = 1;
#2550 enable = 0;
#10 $finish;
end

always
begin
#5 clk = ~clk;
end

ripple_carry_counter u_counter(clk, reset, enable, q);

`ifdef VCD_DUMP_EN
initial
begin
$dumpfile("counter.vcd");
$dumpvars(0, testbench);
end
`endif

endmodule
