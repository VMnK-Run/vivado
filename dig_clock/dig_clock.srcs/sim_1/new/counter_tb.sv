`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/05/29 03:06:08
// Design Name: 
// Module Name: counter_tb
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

`define CLK_PERIOD 40
module counter_tb(

    );
    logic sys_clk;
    logic sys_rst_n;
    logic i_start;
    logic [7 : 0] min;
    logic [7 : 0] sec;
    
    counter dut(
        .sys_clk(sys_clk),
        .sys_rst_n(sys_rst_n),
        .i_start(i_start),
        .min(min),
        .sec(sec)
    );
    initial begin
        sys_clk <= 1'b0; sys_rst_n <= 1'b0;
        i_start <= 0;
        #40; sys_rst_n <= 1'b1;
    end
    
    always #(`CLK_PERIOD / 2) sys_clk = ~sys_clk;
    
    initial begin
        @(posedge sys_rst_n); @(posedge sys_clk);
        #3000; $finish;
    end
    
    initial begin
        $timeformat(-9, 0, "ns", 5);
        $monitor("At time %t: sys_rst_n = %b, i_start = %b, min = %d, sec = %d", $time, sys_rst_n, i_start, min, sec);
    end
    
endmodule
