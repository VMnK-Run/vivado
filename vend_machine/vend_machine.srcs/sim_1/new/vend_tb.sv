`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/06/13 17:17:49
// Design Name: 
// Module Name: vend_tb
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
module vend_tb(

    );
    
    logic sys_clk;
    logic sys_rst_n;
    logic coin5, coin10;
    logic [3 : 0] an;
    logic [7 : 0] a_to_g;
    logic open;
    
    vend dut(
        .sys_clk(sys_clk),
        .sys_rst_n(sys_rst_n),
        .coin5(coin5),
        .coin10(coin10),
        .an(an),
        .a_to_g(a_to_g),
        .open(open)
    );
    
    initial begin
        sys_clk <= 1'b0; sys_rst_n <= 1'b0;
        coin5 <= 0;
        coin10 <= 0;
        #40; sys_rst_n <= 1;
        #40; sys_rst_n <= 1'b1;
        #100; coin5 <= 1;
        #40; coin5 <= 0;
        #100; coin5 <= 1;
        #40; coin5 <= 0;
        #100; coin5 <= 1;
        #40; coin5 <= 0;
        #1000;
        #100; coin10 <= 1;
        #40; coin10 <= 0;
        #100; coin10 <= 1;
        #40; coin10 <= 0;
    end
    
    always #(`CLK_PERIOD / 2) sys_clk = ~sys_clk;
        
    initial begin
        @(posedge sys_rst_n); @(posedge sys_clk);
        #3000; $finish;
    end
endmodule
