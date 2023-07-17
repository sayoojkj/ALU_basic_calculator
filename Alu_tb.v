`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.06.2023 18:28:06
// Design Name: 
// Module Name: Alu_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module alutest;
  reg [3:0] a,b;
  reg [1:0] op;
  wire [7:0] re;
  ALU dut(a,b,op,re);
  
  initial begin
    #5 a=4'b1100; b=4'b1011; op=2'b00;
    #5 a=4'b1100; b=4'b1011; op=2'b01;
    #5 a=4'b1100; b=4'b1011; op=2'b10;
    #5 a=4'b1100; b=4'b1011; op=2'b11;
    #5 $finish;
  end
  initial begin
    $monitor("%t | a=%b | b=%b | op=%b | re=%b",$time,a,b,op,re);
    $dumpfile("Alu.vcd");
    $dumpvars(0);
  end
endmodule

