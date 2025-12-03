`include "matrix.v"
module tbb;
reg [7:0] a1,a2,a3,a4,a5,a6,a7,a8,a9;
reg [7:0] b1,b2,b3,b4,b5,b6,b7,b8,b9;
wire [18:0] c1,c2,c3,c4,c5,c6,c7,c8,c9;

matrix1 DUT(a1,a2,a3,a4,a5,a6,a7,a8,a9,
        b1,b2,b3,b4,b5,b6,b7,b8,b9,
        c1,c2,c3,c4,c5,c6,c7,c8,c9);

initial begin
$dumpfile("matrix.vcd");
$dumpvars(0, tbb);
a1 = 8'hFF; a2 = 8'h10; a3 = 8'hB5;
a4 = 8'hA1; a5 = 8'hA1; a6 = 8'h11;
a7 = 8'h0C; a8 = 8'h00; a9 = 8'h12;
b1 = 8'h11; b2 = 8'h1D; b3 = 8'hD1;
b4 = 8'hFF; b5 = 8'hEE; b6 = 8'h61;
b7 = 8'h21; b8 = 8'h18; b9 = 8'h13;
#10;
$display("\nMatrix A:");
$display("%h\t%h\t%h", a1, a2, a3);
$display("%h\t%h\t%h", a4, a5, a6);
$display("%h\t%h\t%h", a7, a8, a9);

$display("\nMatrix B:");
$display("%h\t%h\t%h", b1, b2, b3);
$display("%h\t%h\t%h", b4, b5, b6);
$display("%h\t%h\t%h", b7, b8, b9);

$display("\nFinal Matrix C (A*B):");
$display("%h\t%h\t%h", c1, c2, c3);
$display("%h\t%h\t%h", c4, c5, c6);
$display("%h\t%h\t%h", c7, c8, c9);

$finish;
end
endmodule
