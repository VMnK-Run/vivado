`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/06/11 22:31:37
// Design Name: 
// Module Name: en_clock
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


module en_clock #(parameter SOURCE_FREQ = 25_000_000, TARGET_FREQ = 1_000) (
    input   logic sys_clk,
    output  logic en
    );
    localparam v = SOURCE_FREQ / TARGET_FREQ;
    logic [15: 0] counter = 0;
    
    always_ff @(posedge sys_clk) begin
        if(sys_clk) begin
            if(counter == v - 1)
                counter <= 0;
            else
                counter <= counter + 1;
        end
    end
    
    always_comb begin
        if(counter == v - 1)
            en = 1;
        else 
            en = 0;
    end
endmodule
