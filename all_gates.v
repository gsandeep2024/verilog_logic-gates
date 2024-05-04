//Basic gates: NOT, AND, OR
//Universal gates: NAND, NOR
//Arithmetic gates:  XOR, XNOR

/////////////////////////////////////////////////////////////////////

//1...NOT gate..............
module not_gate(
    input a,
    output c );
assign c=~a;
endmodule

//2....AND gate.............
module and_gate(
    input a,
    input b,
    output c );
assign c=a & b;
endmodule

//3....OR gate...............
module or_gate(
    input a,
    input b,
    output c );
assign c=a | b;
endmodule

//4....NAND gate.............
module nand_gate(
    input a,
    input b,
    output c );
assign c=~(a & b);
endmodule

//5.....NOR gate...............
module nor_gate(
    input a,
    input b,
    output c );
assign c=~(a | b);
endmodule

//6......XOR gate...........
module xor_gate(
    input a,
    input b,
    output c );
assign c=a ^ b;
endmodule

//7......XNOR gate..........
module xnor_gate(
    input a,
    input b,
    output c );
assign c=~(a ^ b);
endmodule

/////////////////////////////////////////////////////

//Testbench for all gates

module gates_tb;
  reg a,b;
  wire c;
  gates_names(.a(a),
              .b(b),
              .c(c));
  initial begin
    a=0; b=0; #10;
    a=0; b=1; #10;
    a=1; b=0; #10;
    a=1; b=1; #10;
  end
endmodule
