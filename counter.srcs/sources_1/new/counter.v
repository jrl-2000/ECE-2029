module counter(
    );
	reg clk = 0;				//clock
	reg reset = 0;				//reset
	reg inc = 0;				//increment
	reg dec = 0;			//decrement
	wire [7:0] current_count = 0;		//initially setting counter to zero
	
	always  begin
	   #5;
	   clk = ~clk;
	   end
	   


    initial begin
    inc = 1;
    #40;
    inc = 0;
    end
endmodule
	  
