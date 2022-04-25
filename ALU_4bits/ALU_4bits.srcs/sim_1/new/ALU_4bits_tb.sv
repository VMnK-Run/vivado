`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/04/25 14:38:02
// Design Name: 
// Module Name: ALU_4bits_tb
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


module ALU_4bits_tb(

    );
    logic [3:0] A;
    logic [3:0] B;
    logic [3:0] aluop;
    logic [7:0] alures;
    logic ZF;
    logic OF;
    logic [21:0] stim [28:0];
    logic [7:0] aluresExcepted;
    logic ZFexcepted;
    logic OFexcepted;
    int i;
    
    alu dut(
    .A      (A),
    .B      (B),
    .aluop  (aluop),
    .alures (alures),
    .ZF     (ZF),
    .OF     (OF)
    );
    
    initial begin
        $readmemb("test.txt", stim);
        for(i = 0; i < 29; i++) begin
            {A, B, aluop, aluresExcepted, ZFexcepted, OFexcepted} = stim[i];
            #10;
            if(alures == aluresExcepted && ZF == ZFexcepted && OF == OFexcepted)
                $display($time, "%d: test pass!", i);
            else
                $display($time, "Error: num=%b inputs=%b res=%b ZF=%b OF=%b", i, {A, B, aluop}, alures, ZF, OF);
        end
    end
    
endmodule
