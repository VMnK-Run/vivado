`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/04/13 12:15:42
// Design Name: 
// Module Name: voter5
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


module voter5(
        input   logic [4:0] L,
        output  logic led 
    );
    logic high  =   1'b1;
    logic low   =   1'b0;
    logic [3:0] Y0;
    logic [7:0] Y1;
    logic [7:0] Y2;
    logic [7:0] Y3;
    logic [7:0] Y4;
    dec_74LS139 T0(.S(low), .D(L[4:3]), .Y(Y0));
    dec_74LS138 T1(.G({~Y0[0], low, low}), .D(L[2:0]), .Y(Y1));
    dec_74LS138 T2(.G({~Y0[1], low, low}), .D(L[2:0]), .Y(Y2));
    dec_74LS138 T3(.G({~Y0[2], low, low}), .D(L[2:0]), .Y(Y3));
    dec_74LS138 T4(.G({~Y0[3], low, low}), .D(L[2:0]), .Y(Y4));
    
    assign led = ~(Y1[7] & Y2[3] & Y2[5] & Y2[6] & Y2[7] 
                    & Y3[3] & Y3[5] & Y3[6] & Y3[7] 
                    & Y4[1] & Y4[2] & Y4[3] & Y4[4] & Y4[5] & Y4[6] & Y4[7]);
endmodule
