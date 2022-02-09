module incremnt_testbench;

parameter N = 3;
wire [3:0] q;
reg clk, res; 
increment_rep_carry_counter increm_count(.q(q), .clock(clk), .reset(res));

initial
begin

$dumpvars;
//q = 3'b000;


clk <= 1'b0;
res <= 1'b1;

repeat (4) @(posedge clk);
res <= 0;

repeat (25) @(posedge clk);
 $finish;
end
always #5 clk <= ~clk;


endmodule
