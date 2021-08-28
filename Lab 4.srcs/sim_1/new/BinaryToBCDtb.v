`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/29/2020 01:56:39 AM
// Design Name: 
// Module Name: BinaryToBCDtb
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


module BinaryToBCDtb(
    
    );
    reg [7:0]a;
    wire [3:0]ones;
    wire [3:0]tens;
    wire [1:0]hundreds;
    BinaryToBCD U1(a,ones,tens,hundreds);
    initial begin
    a = 8'b11111111;
    #100;
    a = 8'b10101010;
    #100;
    a = 8'b10101110;
    #100;
    a = 8'b00000000;
    #100;
    end
endmodule
