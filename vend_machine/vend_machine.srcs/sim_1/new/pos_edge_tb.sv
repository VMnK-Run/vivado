`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/06/13 16:30:40
// Design Name: 
// Module Name: pos_edge_tb
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
module pos_edge_tb(

    );
    logic   in;
    logic   sys_clk;
    logic   pos_edge;
    
    pos_detect dut(
        .in(in),
        .sys_clk(sys_clk),
        .pos_edge(pos_edge)
    );
    
    initial begin
        sys_clk <= 1'b0;
        in <= 1'b0;
    end
    
    always #(`CLK_PERIOD / 2) sys_clk = ~sys_clk;
    
    initial begin
        in <= 1;
        #40; in <= 0;
        #40; in <= 1;
        #40; in <= 0;
        #40; in <= 1;
        #40; in <= 0;
        #40; in <= 1;
        #40; in <= 0;
        #40; in <= 1;
        #40; in <= 0;
        #40; in <= 1;
        #40; in <= 0;
        #40; in <= 1;
        #40; in <= 0;
        #40; in <= 1;
        #40; in <= 0;
        #40; in <= 1;
        #30; $finish;
    end
    
    initial begin
        $timeformat(-9, 9, "ns", 5);
        $monitor("At time %t: i_btn = %b, pos_edge = %b", $time, in, pos_edge);
    end
    
endmodule
