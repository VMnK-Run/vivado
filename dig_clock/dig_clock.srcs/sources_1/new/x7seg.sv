`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/05/20 15:59:34
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
    input   logic           en,
    input   logic [7 : 0]   min,
    input   logic [7 : 0]   sec,
    output  logic [7 : 0]   a_to_g,
    output  logic [3 : 0]   an
    );
    logic [3 : 0] in = 4'b0000;
    logic [1 : 0] i = 0;
    always_ff @(posedge sys_clk) begin
        if(sys_clk) begin
            if(en == 1) begin
                if(i == 3) i <= 0;
                else i <= i + 1;
                
                if(i == 0) begin
                    in <= sec[3 : 0];
                    an <= 4'b0001;
                end
                if(i == 1) begin
                    in <= sec[7 : 4];
                    an <= 4'b0010;
                end
                if(i == 2) begin
                    in <= min[3 : 0];
                    an <= 4'b0100;
                end
                if(i == 3) begin
                    in <= min[7 : 4]; 
                    an <= 4'b1000;
                end
            end
            
        end
    end
    
    
    x7seg_a x7seg_a_1(.x(in), .a_to_g(a_to_g));
endmodule
