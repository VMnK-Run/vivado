`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/06/13 11:51:09
// Design Name: 
// Module Name: en_clock_tb
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
module en_clock_tb(
    
    );
    
    logic sys_clk;
    logic en;
    
    en_clock dut(
        .sys_clk(sys_clk),
        .en(en)
    );
    
    initial begin
        sys_clk <= 1'b0;
    end
    
    always #(`CLK_PERIOD / 2) sys_clk = ~sys_clk;
    
    initial begin
        $timeformat(-9, 9, "ns", 5);
        $monitor("At time %t: sys_clk = %b, en = %b", $time, sys_clk, en);
    end
    
endmodule
