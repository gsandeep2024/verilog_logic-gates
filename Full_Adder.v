//full adder using data-flow modeling
module full_adder_d (
    input a,b,cin,
    output sum,carry
);
assign sum = a ^ b ^ cin;
assign carry = (a & b) | (b & cin)  | (cin & a) ;
endmodule

////////////////////////////////////////////////////
//Testbench
module full_adder_tb;
reg a,b,cin;
wire sum,carry;

full_adder_s uut(a,b,cin,sum,carry);

initial begin
a = 0; b = 0; cin = 0;
#10
a = 0; b = 0; cin = 1;
#10
a = 0; b = 1; cin = 0;
#10
a = 0; b = 1; cin = 1;
#10
a = 1; b = 0; cin = 0;
#10
a = 1; b = 0; cin = 1;
#10
a = 1; b = 1; cin = 0;
#10
a = 1; b = 1; cin = 1;
#10
$finish;
end           
endmodule
