`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/22/2020 03:59:36 PM
// Design Name: 
// Module Name: seven_segment
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


module seven_segment(
    input [3:0] D,
    output [6:0] seg, [3:0] an
    );
    assign an = 4'b1110;
    assign seg[0] = ~D[3] & ~D[2] & ~D[1] & D[0] | ~D[3] & D[2] & ~D[1] & ~D[0] | D[3] & ~D[2] & D[1] & D[0] | D[3] & D[2] & ~D[1] & D[0];
    assign seg[1] = ~D[3] & D[2] & ~D[1] & D[0] | D[2] & D[1] & ~D[0] | D[3] & D[1] & D[0] | D[3] & D[2] & ~D[0];
    assign seg[2] = ~D[3] & ~D[2] & D[1] & ~D[0] | D[3] & D[2] & ~D[0] | D[3] & D[2] & D[1];
    assign seg[3] = ~D[2] & ~D[1] & D[0] | ~D[3] & D[2] & ~D[1] & ~D[0] | D[2] & D[1] & D[0] | D[3] & ~D[2] & D[1] & ~D[0];
    assign seg[4] = ~D[3] & D[0] | ~D[2] & ~D[1] & D[0] | ~D[3] & D[2] & ~D[1];
    assign seg[5] = ~D[3] & ~D[2] & D[0] | ~D[3] & ~D[2] & D[1] | ~D[3] & D[1] & D[0] | D[3] & D[2] & ~D[1] & D[0];
    assign seg[6] = ~D[3] & ~D[2] & ~D[1] | ~D[3] & D[2] & D[1] & D[0] | D[3] & D[2] & ~D[1] & ~D[0];
endmodule
