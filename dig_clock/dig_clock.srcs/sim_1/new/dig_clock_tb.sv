`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/05/20 17:07:35
// Design Name: 
// Module Name: dig_clock_tb
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
module dig_clock_tb(

    );
    
    logic           sys_clk;
    logic           sys_rst_n;
    logic           i_start;
    logic [7 : 0]   a_to_g;
    logic [3 : 0]   an;
    
    dig_clock dut(
        .sys_clk(sys_clk),
        .sys_rst_n(sys_rst_n),
        .i_start(i_start),
        .an(an),
        .a_to_g(a_to_g)
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
        $monitor("At time %t: sys_rst_n = %b, i_start = %b, a_to_g = %d, an = %d", $time, sys_rst_n, i_start, a_to_g, an);
    end
endmodule
