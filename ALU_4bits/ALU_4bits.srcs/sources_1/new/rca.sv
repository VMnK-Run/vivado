`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/04/24 23:56:13
// Design Name: 
// Module Name: rca
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


module rca(
        input   logic   [3:0] A,
        input   logic   [3:0] B,
        input   logic   C_in,
        output  logic   [3:0] S,
        output  logic   C_out
    );
    logic C0, C1, C2;
    logic S0, S1, S2, S3;
    fulladder add0(.A(A[0]), .B(B[0]), .C_in(C_in), .S(S0), .C_out(C0));
    fulladder add1(.A(A[1]), .B(B[1]), .C_in(C0), .S(S1), .C_out(C1));
    fulladder add2(.A(A[2]), .B(B[2]), .C_in(C1), .S(S2), .C_out(C2));
    fulladder add3(.A(A[3]), .B(B[3]), .C_in(C2), .S(S3), .C_out(C_out));
    assign S = {S3, S2, S1, S0};
endmodule
