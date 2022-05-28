`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/05/29 02:54:03
// Design Name: 
// Module Name: pos_detect_tb
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
module pos_detect_tb(

    );
    logic i_btn;
    logic sys_clk;
    logic pos_edge;
    pos_detect dut(.i_btn(i_btn), .sys_clk(sys_clk), .pos_edge(pos_edge));
    
    initial begin
        sys_clk <= 1'b0;
        i_btn <= 0;    
    end
    always #(`CLK_PERIOD / 2) sys_clk = ~sys_clk;
    
    initial begin
        i_btn <= 1;
        #40; i_btn <= 0;
        #40; i_btn <= 1;
        #40; i_btn <= 0;
        #40; i_btn <= 1;
        #40; i_btn <= 0;
        #40; i_btn <= 1;
        #40; i_btn <= 0;
        #30; $finish;
    end
    
    initial begin
        $timeformat(-9, 9, "ns", 5);
        $monitor("At time %t: i_btn = %b, pos_edge = %b", $time, i_btn, pos_edge);
    end
endmodule
