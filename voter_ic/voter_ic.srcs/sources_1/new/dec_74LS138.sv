`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/04/13 11:02:35
// Design Name: 
// Module Name: dec_74LS138
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


module dec_74LS138(
        input   logic [2:0] G, 
        input   logic [2:0] D,
        output  logic [7:0] Y
    );
    always_comb begin
    
        if (G[2] & ~G[1] & ~G[0])
            case(D)
                3'b000: Y = 8'b11111110;
                3'b001: Y = 8'b11111101;
                3'b010: Y = 8'b11111011;
                3'b011: Y = 8'b11110111;
                3'b100: Y = 8'b11101111;
                3'b101: Y = 8'b11011111;
                3'b110: Y = 8'b10111111;
                3'b111: Y = 8'b01111111;
                default: Y = 8'b11111111;
            endcase
        else Y = 8'b11111111;
        
    end
endmodule
