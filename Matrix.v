module matrix1(a1,a2,a3,a4,a5,a6,a7,a8,a9,b1,b2,b3,b4,b5,b6,b7,b8,b9,c1,c2,c3,c4,c5,c6,c7,c8,c9);
input [7:0]a1; 
input [7:0]a2,a3,a4,a5,a6,a7,a8,a9;
input [7:0]b1,b2,b3,b4,b5,b6,b7,b8,b9;
output [18:0]c1,c2,c3,c4,c5,c6,c7,c8,c9;
assign c1=((a1*b1)+(a4*b2)+(a7*b3));
assign c2=((a1*b4)+(a4*b5)+(a7*b6));
assign c3=((a1*b7)+(a4*b8)+(a7*b9));
assign c4=((a2*b1)+(a5*b2)+(a8*b3));
assign c5=((a2*b4)+(a5*b5)+(a8*b6));
assign c6=((a2*b7)+(a5*b8)+(a8*b9));
assign c7=((a3*b1)+(a6*b2)+(a9*b3));
assign c8=((a3*b4)+(a6*b5)+(a9*b6));
assign c9=((a3*b7)+(a6*b8)+(a9*b9));
endmodule
