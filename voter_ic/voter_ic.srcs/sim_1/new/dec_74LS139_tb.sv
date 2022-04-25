`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/04/13 11:57:27
// Design Name: 
// Module Name: dec_74LS139_tb
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


module dec_74LS139_tb(

    );
    logic S;
    logic [1:0] D;
    logic [3:0] Y;
    int i;
    
    dec_74LS139 dut(.S(S), .D(D), .Y(Y));
    
    initial begin
        for(i = 0; i < 4; i++) begin
            S = 0;
            D = i;
            #10;
        end
        for(i = 0; i < 4; i++) begin
            S = 1;
            D = i;
            #10;
        end
    end
    
    initial begin
        $monitor($time, "S = %b, D = %D, Y = %b", S, D, Y);
    end
endmodule
