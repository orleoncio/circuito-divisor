`include "divisor.sv"
`timescale 1ns/100ps

module divisor_tb;
    logic clk, rst, start;
    logic[15:0] dividendo;
    logic[15:0] divisor;
    logic ready, done_tick;
    logic[15:0] quociente;
    logic [15:0] resto;
    
    divisor a1 (clk, rst, start, dividendo, divisor, ready, done_tick, quociente, resto);

    initial begin
        $dumpfile("divisor.vcd");
        $dumpvars(0, divisor_tb);
             clk = 1'b0; rst = 1'b1; start = 1'b0; dividendo = 16'd0; divisor = 16'd0;
        #50; rst = 1'b1; start = 1'b1; dividendo = 16'd40; divisor = 16'd2;
        #50; rst = 1'b1; start = 1'b1; dividendo = 16'd30; divisor = 16'd1;
        #50; rst = 1'b1; start = 1'b1; dividendo = 16'd60; divisor = 16'd4;
        #50; rst = 1'b1; start = 1'b1; dividendo = 16'd80; divisor = 16'd5;
        #50; rst = 1'b0; start = 1'b0; dividendo = 16'd30; divisor = 16'd2;
        #50; rst = 1'b0; start = 1'b0; dividendo = 16'd60; divisor = 16'd3;
        #50; rst = 1'b0; start = 1'b0; dividendo = 16'd70; divisor = 16'd4;
        #50; rst = 1'b0; start = 1'b0; dividendo = 16'd80; divisor = 16'd5;
        #50; rst = 1'b1; start = 1'b1; dividendo = 16'd100; divisor = 16'd5;
        #50; rst = 1'b0; start = 1'b1; dividendo = 16'd100; divisor = 16'd5;
        #50; rst = 1'b1; start = 1'b1; dividendo = 16'd150; divisor = 16'd10;
        #50; rst = 1'b0; start = 1'b1; dividendo = 16'd150; divisor = 16'd10;
        #50; rst = 1'b1; start = 1'b1; dividendo = 16'd200; divisor = 16'd10;
        #50; rst = 1'b0; start = 1'b1; dividendo = 16'd200; divisor = 16'd10;
        #50; rst = 1'b1; start = 1'b1; dividendo = 16'd240; divisor = 16'd12;
        #50; rst = 1'b0; start = 1'b1; dividendo = 16'd240; divisor = 16'd12;
        #50; rst = 1'b1; start = 1'b1; dividendo = 16'd300; divisor = 16'd15;
        #50; rst = 1'b0; start = 1'b1; dividendo = 16'd300; divisor = 16'd15;
        #50; rst = 1'b1; start = 1'b1; dividendo = 16'd350; divisor = 16'd17;
        #50; rst = 1'b0; start = 1'b1; dividendo = 16'd350; divisor = 16'd17;
        #50; rst = 1'b1; start = 1'b1; dividendo = 16'd360; divisor = 16'd18;
        #50; rst = 1'b0; start = 1'b1; dividendo = 16'd360; divisor = 16'd18;
        #50; rst = 1'b1; start = 1'b1; dividendo = 16'd400; divisor = 16'd20;
        #50; rst = 1'b0; start = 1'b1; dividendo = 16'd400; divisor = 16'd20;
        #50; rst = 1'b1; start = 1'b1; dividendo = 16'd150; divisor = 16'd7;
        #50; rst = 1'b0; start = 1'b1; dividendo = 16'd150; divisor = 16'd7;
        #50; rst = 1'b1; start = 1'b1; dividendo = 16'd140; divisor = 16'd6;
        #50; rst = 1'b0; start = 1'b1; dividendo = 16'd140; divisor = 16'd6;
        #50; rst = 1'b1; start = 1'b1; dividendo = 16'd200; divisor = 16'd10;
        #50; rst = 1'b0; start = 1'b1; dividendo = 16'd200; divisor = 16'd10;
        #50; rst = 1'b1; start = 1'b1; dividendo = 16'd220; divisor = 16'd11;
        #50; rst = 1'b0; start = 1'b1; dividendo = 16'd220; divisor = 16'd11;
        #50; rst = 1'b1; start = 1'b1; dividendo = 16'd180; divisor = 16'd9;
        #50; rst = 1'b0; start = 1'b1; dividendo = 16'd180; divisor = 16'd9;
        #50; rst = 1'b1; start = 1'b1; dividendo = 16'd80; divisor = 16'd4;
        #50; rst = 1'b0; start = 1'b1; dividendo = 16'd80; divisor = 16'd4;
        #50; rst = 1'b1; start = 1'b1; dividendo = 16'd210; divisor = 16'd10;
        #50; rst = 1'b0; start = 1'b1; dividendo = 16'd210; divisor = 16'd10;
        #50; rst = 1'b1; start = 1'b1; dividendo = 16'd160; divisor = 16'd8;
        #50; rst = 1'b0; start = 1'b1; dividendo = 16'd160; divisor = 16'd8;
        #50; rst = 1'b1; start = 1'b1; dividendo = 16'd190; divisor = 16'd9;
        #50; rst = 1'b0; start = 1'b1; dividendo = 16'd190; divisor = 16'd9;
        #50; rst = 1'b1; start = 1'b1; dividendo = 16'd200; divisor = 16'd10;
        #50; rst = 1'b0; start = 1'b1; dividendo = 16'd200; divisor = 16'd10;
        #50; rst = 1'b1; start = 1'b1; dividendo = 16'd80; divisor = 16'd4;
        #50; rst = 1'b0; start = 1'b1; dividendo = 16'd80; divisor = 16'd4;
        #50; rst = 1'b1; start = 1'b1; dividendo = 16'd140; divisor = 16'd7;
        #50; rst = 1'b0; start = 1'b1; dividendo = 16'd140; divisor = 16'd7;
        #50; rst = 1'b1; start = 1'b1; dividendo = 16'd240; divisor = 16'd12;
        #50; rst = 1'b0; start = 1'b1; dividendo = 16'd240; divisor = 16'd12;
        #50; rst = 1'b1; start = 1'b1; dividendo = 16'd160; divisor = 16'd8;
        #50; rst = 1'b0; start = 1'b1; dividendo = 16'd160; divisor = 16'd8;
        #50; rst = 1'b1; start = 1'b1; dividendo = 16'd100; divisor = 16'd5;
        #50; rst = 1'b0; start = 1'b1; dividendo = 16'd100; divisor = 16'd5;
        #50; rst = 1'b1; start = 1'b1; dividendo = 16'd400; divisor = 16'd20;
        #50; rst = 1'b0; start = 1'b1; dividendo = 16'd400; divisor = 16'd20;
        #50; $finish;      
    end

        always #1 clk = ~clk;

endmodule

