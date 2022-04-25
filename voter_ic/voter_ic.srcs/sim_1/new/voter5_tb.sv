`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/04/13 14:53:43
// Design Name: 
// Module Name: voter5_tb
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


module voter5_tb(

    );
    logic [4:0] L;
    logic led;
    int i;
    voter5 dut(.L(L), .led(led));
    
    initial begin
        for(i = 0; i < 32; i++) begin
            L = i;
            #10;
        end
    end
    
    initial begin
        $monitor($time, "L = %b, led = %b", L, led);
    end
endmodule
