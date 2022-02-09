module riplle_carry_counter_testbench;

wire [3:0] q;
reg clk, res; 
riplle_carry_counter rip_ca_count(.q(q), .clock(clk), .reset(res));


initial
begin

$dumpvars;


clk <= 1'b0;
res <= 1'b1;

repeat (4) @(posedge clk);
res <= 0;

repeat (25) @(posedge clk);
 $finish;
end
always #5 clk <= ~clk;


endmodule