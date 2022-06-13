`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/06/12 01:58:52
// Design Name: 
// Module Name: x7seg
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


module x7seg(
    input   logic           sys_clk,
    input   logic           sys_rst_n,
    input   logic           en,
    input   logic [7 : 0]   change,
    input   logic [7 : 0]   price,
    output  logic [3 : 0]   an,
    output  logic [7 : 0]   a_to_g
    );
    logic [1 : 0] i;
    logic [3 : 0] in;
    always_ff @(posedge sys_clk) begin
        if(sys_clk) begin
            if(sys_rst_n == 0) begin
                i <= 0;
                in <= 4'b0000;
                an <= 4'b0001;
            end
            else if(en == 1) begin
                if(i == 3) i <= 0;
                else i <= i + 1;
                
                case(i)
                0: begin
                    an <= 4'b0001;
                    in <= price[3 : 0];
                end
                1: begin
                    an <= 4'b0010;
                    in <= price[7 : 4];
                end
                2: begin
                    an <= 4'b0100;
                    in <= change[3 : 0];
                end
                3: begin
                    an <= 4'b1000;
                    in <= change[7 : 4];
                end
                default: begin
                    an <= 4'b0001;
                    in <= 4'b0000;
                end
                endcase
            end
        end
    end
    
    x7seg_a _x7seg_a_(
        .x(in),
        .a_to_g(a_to_g)
    );
endmodule
