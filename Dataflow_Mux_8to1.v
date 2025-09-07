`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Lehigh University: FPGA Lab
// Engineer: Vincent Langford
// 
// Create Date: 09/03/2025 10:58:51 AM
// Design Name: Dataflow Mux 8:1
// Module Name: Dataflow_Mux_8to1
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


module Dataflow_Mux_8to1(
    output o,  // 1 output 
    input [7:0] I, // 8 Inputs 
    input [2:0] S  // 3 selectos 
    );
    
    assign o = (~S[0]&~S[1]&~S[2]&I[0] |
                ~S[0]&~S[1]&S[2]&I[1]  |
                ~S[0]&S[1]&~S[2]&I[2]  |
                ~S[0]&S[1]&S[2]&I[3]   |
                S[0]&~S[1]&~S[2]&I[4]  |
                S[0]&~S[1]&S[2]&I[5]   |
                S[0]&S[1]&~S[2]&I[6]   |
                S[0]&S[1]&S[2]&I[7]     
                );
endmodule
