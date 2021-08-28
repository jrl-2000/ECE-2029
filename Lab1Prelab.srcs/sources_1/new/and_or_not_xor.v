`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/14/2020 11:42:04 PM
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
    output outAND,
    output outOR,
    output outXOR,
    output notC,
    output outNAND,
    output outNOR,
    output outXNOR
    );
    assign outAND = A & B;
    assign outOR = A | B;
    assign outXOR = A ^ B;
    assign notC = ~C;
    assign outNAND = ~(A & B);
    assign outNOR = ~(A | B);
    assign outXNOR = ~(A ^ B);
endmodule
