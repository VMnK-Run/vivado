`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/05/20 09:44:04
// Design Name: 
// Module Name: counter
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


module counter(
    input   logic           sys_clk,
    input   logic           sys_rst_n,
    input   logic           i_start,
    output  logic [7 : 0]   min,
    output  logic [7 : 0]   sec
    );
    
    localparam v = 25_000_000;
//    localparam v = 8;
    
    logic [25 : 0] counter = 0;
    
    logic pos_edge;
    pos_detect detect(.i_btn(i_start), .sys_clk(sys_clk), .pos_edge(pos_edge));
    logic go;


    always_ff @(posedge sys_clk) begin
        if(sys_rst_n == 0) begin
            min <= 0;
            sec <= 0;
            counter <= 0;
            go <= 1;
        end
        
        if(sys_clk) begin
            if(pos_edge == 1) begin
                if(go == 0) go <= 1;
                else if(go == 1) go <= 0;
            end
            
            if(go == 1) begin
                if(counter == v - 1) counter <= 0;
                else counter <= counter + 1;
                
                if(counter == v - 1) begin
                    if(sec == 59) begin
                        sec <= 0;
                        min <= min + 1;
                    end
                    else sec <= sec + 1;
                end
            end
        
        end
        
    end
endmodule
