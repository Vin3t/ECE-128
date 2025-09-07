`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Lehigh University: FPGA Lab
// Engineer: Vincent Langford
// 
// Create Date: 09/04/2025 12:58:21 PM
// Design Name: Testbench Mux *:1
// Module Name: Testbench_Mux_8to1
// Project Name: Multiplexer
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


module Testbench_Mux_8to1;
    reg [7:0] I;
    reg [2:0] S;
    wire o;
    
    Behavioral_Mux_8to1 uut(.I(I),.S(S),.o(o));
    
    initial
        begin
            #10 I = 4'b1010;
            #10 S = 3'b000;
            #10 S = 3'b001;
            #10 S = 3'b010;
            #10 S = 3'b011;
            #10 S = 3'b100;
            #10 S = 3'b101;
            #10 S = 3'b110;
            #10 S = 3'b111;
            #10 $stop;
        end
endmodule
