module D(clk);// input a,b);
//wire e;   

//assign  e = {a,b};
//assign  out = e || c;
input clk;
event a;
wire y,z,e,f;
reg x = 1'b0;
//reg[15:0] a,b;
initial
begin
    //-> a;
    //#10 ->a;
    //#20 ->a;
    //#30 ->a;
    #4:5:6 y = 1b'0;
end
//always @(a)
//begin
//     x <= ~x;
//    // x = 2'b0;
//   // {y,z} = 0;
//   //  y <= 1'b1;
//   //  z <= 1'b1;
//   //  x <= z + y;
//    $display(x,y,z);
//end
//
//initial
//begin
//   e = @(a) x;
//end


//always @(posedge clk)
//begin
//    //x <= 1;
//    //$display(x, y, z);
//    y <= x;
//    $display(x,y);
//    //z <= y;
//    //$display(x,y,z);
//    //a <= 16'b0;
//    //#10 b = a;
//
//    //#10 a[12] = 1'b0;
//    //#15 b[15:13] = {x,y,z};
//end
//always @(posedge clk)
//begin
//    x <= y;
//    $display(x,y);
//end
//initial begin
//    e = 1;
//    $display(e,f);
//    f = 0;
//    $display(e,f);
//
//end
//
endmodule


