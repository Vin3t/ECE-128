`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Lehigh University: FPGA Lab
// Engineer: Vincent Langford
// 
// Create Date: 09/03/2025 10:58:51 AM
// Design Name: Structural Design Multiplexer 8:1
// Module Name: Structural Mux_8to1
// Project Name: Multiplexer 8:1
// Target Devices: 
// Tool Versions: 
// Description: Use structural method to design a 8:1 mux
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Structural_Mux_8to1(I,S,o);
    //Input: 8 inputs from I[0] to I[7}
    //Input: 3 selectors inputs from S[0] to s[2]
    //Output: o from the OR gate
    input [7:0] I;
    input [2:0] S;
    output o; 
    
    //Wires for the Not Selectors and the output 
    wire [2:0] NS;
    wire [7:0] Y;
    
    //Connects the selectors and the not gates
    not N1(NS[0],S[0]);
    not N2(NS[1],S[1]);
    not N3(NS[2],S[2]);
     
     //Connect Inputs and Outputs to AND gate
     and I0(Y[0],I[0],NS[0],NS[1],NS[2]); 
     and I1(Y[1],I[1],NS[0],NS[1],S[2]); 
     and I2(Y[2],I[2],NS[0],S[1],NS[2]); 
     and I3(Y[3],I[3],NS[0],S[1],S[2]); 
     and I4(Y[4],I[4],S[0],NS[1],NS[2]); 
     and I5(Y[5],I[5],S[0],NS[1],S[2]);
     and I6(Y[6],I[6],S[0],S[1],NS[2]); 
     and I7(Y[7],I[7],S[0],S[1],S[2]);  
     
     or O(o, Y[0], Y[1], Y[2], Y[3], Y[4], Y[5], Y[6], Y[7]);
    
endmodule
