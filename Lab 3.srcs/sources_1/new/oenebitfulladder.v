`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/22/2020 02:45:05 PM
// Design Name: 
// Module Name: oneBitFullAdder
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


module oneBitFullAdder(
    input A,
    input B,
    input Cin,
    output Sum,
    output Cout
    );
    
    
    assign Sum = A ^ B ^ Cin;
    assign Cout = A & Cin | A & B | B & Cin;
    
    
endmodule
