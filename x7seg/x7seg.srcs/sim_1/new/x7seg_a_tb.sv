`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/04/08 09:39:06
// Design Name: 
// Module Name: x7seg_a_tb
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


module x7seg_a_tb(

    );
    
    logic [3:0] x;
    logic [6:0] a_to_g;
    int i;
    
    x7seg_a dut(.x(x), .a_to_g(a_to_g));
    
    initial begin
        for(i = 0; i < 16; i++) begin
            x = i;
            #10;
        end
    end
    
    initial begin
        $monitor($time, "x = %b, a_to_g = %b", x, a_to_g);
    end
    
endmodule
