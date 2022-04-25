`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/04/08 09:20:54
// Design Name: 
// Module Name: x7seg_a
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


module x7seg_a(
        input   logic [3:0] x,
        output  logic [6:0] a_to_g
    );
    
    always_comb begin
        case(x)
        4'b0000: a_to_g = 7'b0000001;
        4'b0001: a_to_g = 7'b1001111;
        4'b0010: a_to_g = 7'b0010010;
        4'b0011: a_to_g = 7'b0000110;
        4'b0100: a_to_g = 7'b1001100;
        4'b0101: a_to_g = 7'b0100100;
        4'b0110: a_to_g = 7'b0100000;
        4'b0111: a_to_g = 7'b0001111;
        4'b1000: a_to_g = 7'b0000000;
        4'b1001: a_to_g = 7'b0000100;
        default: a_to_g = 7'b1111111;
        endcase
    end
endmodule
