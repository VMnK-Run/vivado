`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/06/12 15:05:18
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
    logic coin5_in, coin10_in;
    logic sys_rst_n;
    logic coin5_out, coin10_out;
    logic en, reset;
    counter dut(
        .sys_clk(sys_clk),
        .coin5_in(coin5_in),
        .coin10_in(coin10_in),
        .sys_rst_n(sys_rst_n),
        .coin5_out(coin5_out),
        .coin10_out(coin10_out),
        .en(en),
        .reset(reset)
    );
    
    initial begin
        sys_clk <= 1'b0; sys_rst_n <= 1'b0;
        coin5_in <= 0;
        coin10_in <= 0;
        #40; sys_rst_n <= 1'b1;
        #100; coin5_in <= 1;
        #40; coin5_in <= 0;
        #100; coin10_in <= 1;
        #40; coin10_in <= 0;
        #100;
        #100; coin10_in <= 1;
        #40; coin10_in <= 0;
        #100; coin10_in <= 1;
        #40; coin10_in <= 0;
    end
    
    always #(`CLK_PERIOD / 2) sys_clk = ~sys_clk;
        
    initial begin
        @(posedge sys_rst_n); @(posedge sys_clk);
        #3000; $finish;
    end
    
endmodule
