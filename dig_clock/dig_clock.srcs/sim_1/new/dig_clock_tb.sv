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
        sys_clk = 0;
        forever #20 sys_clk = ~sys_clk;
    end
    
    initial begin

        i_start = 0;
        #10 sys_rst_n = 0;
        #30 sys_rst_n = 1;
        #100 i_start = 0;

    end
    
    initial begin
        $monitor($time, "a_to_g = %b, an = %b", a_to_g, an);
    end
endmodule
