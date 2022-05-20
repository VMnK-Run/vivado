`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/05/20 15:19:53
// Design Name: 
// Module Name: pos_detect
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


module pos_detect(
    input   logic       i_btn,
    input   logic       sys_clk,
    output  logic       pos_edge
    );
    
    logic [1 : 0]   Q ;
    always_ff @(posedge sys_clk) begin
    
        if(sys_clk) begin
            Q <= {i_btn, Q[1]};
        end
    
    end
    assign pos_edge = Q[1] & (~Q[0]);
endmodule
