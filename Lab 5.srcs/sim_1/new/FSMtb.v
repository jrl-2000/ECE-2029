module FSMtb(

    );
    
    reg clk = 0;
    reg reset = 0;
    reg sensor_1 = 0;
    reg sensor_2 = 0;
    wire count_flag;
    
    always begin
        #5;
        clk = ~clk;
    end
    
    FSM F1(clk,reset,sensor_1,sensor_2,count_flag);
    
    initial begin
        #100;
        sensor_1 = 1;
        sensor_2 = 0;
        #100;
        sensor_1 = 0;
        sensor_2 = 0;
        #100;
        sensor_2 = 1;
        sensor_1 = 0;
        #100;
        sensor_1 = 0;
        sensor_2 = 0;
        #100;
        #100;
        sensor_1 = 1;
        sensor_2 = 0;
        #100;
        sensor_1 = 0;
        sensor_2 = 0;
        #100;
        sensor_2 = 1;
        sensor_1 = 0;
        #100;
        sensor_1 = 0;
        sensor_2 = 0;
        #100;
    end
endmodule
