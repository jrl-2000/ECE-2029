module bcd7seg(input[3:0] D,
output [6:0] seg);
assign seg[0] = ~D[3] & ~D[2] & ~D[1] & D[0] | ~D[3] & D[2] & ~D[1] & ~D[0] | D[3] & ~D[2] & D[1] & D[0] | D[3] & D[2] & ~D[1] & D[0];
assign seg[1] = ~D[3] & D[2] & ~D[1] & D[0] | D[2] & D[1] & ~D[0] | D[3] & D[1] & D[0] | D[3] & D[2] & ~D[0];
assign seg[2] = ~D[3] & ~D[2] & D[1] & ~D[0] | D[3] & D[2] & ~D[0] | D[3] & D[2] & D[1];
assign seg[3] = ~D[2] & ~D[1] & D[0] | ~D[3] & D[2] & ~D[1] & ~D[0] | D[2] & D[1] & D[0] | D[3] & ~D[2] & D[1] & ~D[0];
assign seg[4] = ~D[3] & D[0] | ~D[2] & ~D[1] & D[0] | ~D[3] & D[2] & ~D[1];
assign seg[5] = ~D[3] & ~D[2] & D[0] | ~D[3] & ~D[2] & D[1] | ~D[3] & D[1] & D[0] | D[3] & D[2] & ~D[1] & D[0];
assign seg[6] = ~D[3] & ~D[2] & ~D[1] | ~D[3] & D[2] & D[1] & D[0] | D[3] & D[2] & ~D[1] & ~D[0];
endmodule