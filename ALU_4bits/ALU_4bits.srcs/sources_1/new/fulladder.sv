`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/04/24 22:29:29
// Design Name: 
// Module Name: fulladder
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


module fulladder(
        input   logic   A, B, C_in,
        output  logic   S, C_out
    );
    assign S = A ^ B ^ C_in;
    assign C_out = (A & B) | ((A ^ B) & C_in);
endmodule
