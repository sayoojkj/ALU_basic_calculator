`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.06.2023 18:27:08
// Design Name: 
// Module Name: ALU
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


module ALU(a, b, op, re);
  input [3:0] a, b;
  input [1:0] op;
  output reg [7:0] re;
  always @* begin
    case (op)
      2'b00: begin
        re[4:0] = a + b;
        re[7:5] = 3'b000;
      end
      2'b01: begin
        re[4:0] = a - b;
        re[7:5] = 3'b000;
      end
      2'b10: begin
        re[7:0] = a * b;
      end
      2'b11:begin
        re[3:0]=a/b;
        re[7:4]=a%b;
      end
      default: begin
        re = 9'b0;
      end
    endcase
  end
endmodule


