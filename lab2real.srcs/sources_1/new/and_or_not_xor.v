`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: WPI
// Engineer: Jonathan Lopez
// 
// Create Date: 04/15/2020 10:24:36 AM
// Design Name: 
// Module Name: and_or_not_xor
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


module and_or_not_xor(
    input A,
    input B,
    input C,
    output outAnd,
    output outOR,
    output outXOR,
    output notC
    );
    
    assign outAnd = A & B;
    assign outOR = A | B;
    assign outXOR = A ^ B;
    assign notC = ~C;
    
endmodule
