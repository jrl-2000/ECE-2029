
module countertb(

    );
    reg clk = 0;
    reg reset = 0;
	reg increment = 0;
	reg decrement = 0;
	wire [7:0] current_count;
	
    counter C1(clk,reset,increment,decrement,current_count);
    
    always begin
        #5;
        clk = ~clk;
    end
    
    initial begin
        increment = 1;
        #40;
        increment = 0;
        decrement = 1;
        #30
        decrement = 0;
    end
endmodule
