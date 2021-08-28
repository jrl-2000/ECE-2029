module counter(
	input	clk,			//clock
	input	reset,			//reset
	input   increment,		//increment
	input 	decrement,		//decrement
	output [7:0] current_count		//count, max count is 255 (8-bit)
	);
	reg [7:0] current_count = 0;		//initially setting counter to zero
	
	always @(posedge clk) begin		//when positive edge of the clock arrives
		if(reset)
			current_count <= 0;
		else if(increment)
			current_count <= current_count + 1	;	//increment
		else if(decrement)
			current_count <= current_count - 1;	//decrement
		else
			current_count <= current_count;
	end
		assign count = current_count;
	
endmodule