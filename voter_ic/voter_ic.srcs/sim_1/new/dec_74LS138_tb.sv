`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/04/13 11:25:26
// Design Name: 
// Module Name: dec_74LS138_tb
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


module dec_74LS138_tb(

    );
    logic [2:0] G;
    logic [2:0] D;
    logic [7:0] Y;
    int i, j;
    
    dec_74LS138 dut(.G(G), .D(D), .Y(Y));
    
    initial begin
        for(i = 0; i < 8; i++) begin
            G = i;
            for(j = 0; j < 8; j++) begin
                D = j;
                #10;
            end
        end    
    end
    
    initial begin
        $monitor($time, "G = %b, D = %b, Y = %b", G, D, Y);
    end
endmodule
