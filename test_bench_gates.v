module allgatestest;
reg a,b;
wire y;
  and_gate dut(.a(a),.b(b),.y(y));
  Xnor_gate dut1(.a(a),.b(b),.y(y));
  or_gate dut2(.a(a),.b(b),.y(y));
  not_gate dut3(.a(a),.b(b),.y(y));
  nor_gate dut4(.a(a),.b(b),.y(y));
  nand_gate dut5(.a(a),.b(b),.y(y));
initial begin
a=0;b=0; #10;
a=0;b=1; #10;
a=1;b=0; #10;
a=1;b=1; #10;
end
endmodule
