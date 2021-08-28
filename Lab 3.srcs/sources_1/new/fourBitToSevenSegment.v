`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/22/2020 06:02:08 PM
// Design Name: 
// Module Name: fourBitToSevenSegment
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


module fourBitToSevenSegment(
    input [3:0] A, 
    input [3:0] B,
    output [6:0] seg, 
    output [3:0] an,
    output OF_S, 
    output OF_U
    );
    wire [3:0] Sum;
    fourBitAdder U4(A, B, Sum, OF_S, OF_U);
    seven_segment U5(Sum, seg, an);
endmodule
