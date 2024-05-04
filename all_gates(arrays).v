module allgates(y,a,b);
output [6:0]y;
input a,b;
assign y[0]=a&b;
assign y[1]=a|b;
assign y[2]=~(a&b);
assign y[3]=~(a|b);
assign y[4]=~a;
assign y[5]=a^b;
assign y[6]=~(a^b);
endmodule
