`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/06/13 17:06:25
// Design Name: 
// Module Name: vend_FSM_tb
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
module vend_FSM_tb(

    );
    
    logic sys_clk;
    logic sys_rst_n;
    logic reset;
    logic coin5;
    logic coin10;
    logic open;
    logic [7 : 0] change;
    logic [7 : 0] price;
    
    vend_FSM dut(
        .sys_clk(sys_clk),
        .sys_rst_n(sys_rst_n),
        .reset(reset),
        .coin5(coin5),
        .coin10(coin10),
        .open(open),
        .change(change),
        .price(price)
    );
    
    initial begin
        sys_clk <= 1'b0; sys_rst_n <= 1'b0;
        coin5 <= 0;
        coin10 <= 0;
        reset <= 1;
        
        #40; sys_rst_n <= 1'b1;
        #100; coin5 <= 1;
        #40; coin5 <= 0;
        #100; coin5 <= 1;
        #40; coin5 <= 0;
        #100; coin5 <= 1;
        #40; coin5 <= 0;
        #200; reset <= 1;
        #40; reset <= 0;
        #100; coin10 <= 1;
        #40; coin10 <= 0;
        #100; coin10 <= 1;
        #40; coin10 <= 0;
        #200; reset <= 1;
    end
    
    always #(`CLK_PERIOD / 2) sys_clk = ~sys_clk;
        
    initial begin
        @(posedge sys_rst_n); @(posedge sys_clk);
        #3000; $finish;
    end
endmodule
