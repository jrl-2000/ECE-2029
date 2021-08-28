`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/22/2020 03:02:45 PM
// Design Name: 
// Module Name: LabthreeTB
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


module LabthreeTB(
   
    );
    reg aa,bb,cc;
        wire out1, out2;
       oneBitFullAdder U1(aa,bb,cc,out1,out2);
       initial begin
        aa = 0;
        bb = 0;
        cc = 0;
        #100;
        aa = 1;
        #100;
        aa = 0;
        bb = 1;
        #100;
        aa = 1;
        #100;
        cc = 1;
        #100;
        cc = 0;
        #1000;
        end
endmodule
