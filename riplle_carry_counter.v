module riplle_carry_counter #(parameter N = 3)(q,clock,reset);

output[N:0] q;
input clock, reset;
//genvar i;

jkff jkff_0(.q(q[0]), .clk(clock), .res(reset));
jkff jkff_1(.q(q[1]), .clk(q[0]), .res(reset));
jkff jkff_2(.q(q[2]), .clk(q[1]), .res(reset));
jkff jkff_3(.q(q[3]), .clk(q[2]), .res(reset));

//generate
//    
//    for(i = 1; i < N; i = i + 1) begin
//        jkff jkff_1(.q(q[i]),.clk(q[i-1]),.res(reset));
//    end
//
//endgenerate
//
endmodule


module jkff(q, clk, res);

output reg q;
input clk, res;

always @(posedge clk or posedge res)
begin
    if (res)
        q <= 0;
    else
        q <= ~q;
end

endmodule
