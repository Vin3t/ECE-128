`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Lehigh University: FPGA Lab
// Engineer: Vincent Langford
// 
// Create Date: 09/03/2025 10:58:51 AM
// Design Name: Behavioral Multiplexer 8:1
// Module Name: Behavioral_Mux_8to1
// Project Name: Multiplexer 8:1
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


module Behavioral_Mux_8to1(
       output reg o,  // 1 output 
       input [7:0] I, // 8 Inputs 
       input [2:0] S  // 3 selectos 
       );
       
    always @(*) // @(*) can be use for combinational logic and safer than me using S
        begin
            case(S)
            3'b000: o = I[0];
            3'b001: o = I[1];
            3'b010: o = I[2];
            3'b011: o = I[3];
            3'b100: o = I[4];
            3'b101: o = I[5];
            3'b110: o = I[6];
            3'b111: o = I[7];
            default: o = 1'b0;
            endcase
        end
endmodule
