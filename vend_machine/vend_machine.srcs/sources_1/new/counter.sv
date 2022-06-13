`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/06/12 01:16:56
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
    input   logic   sys_clk,
    input   logic   coin5_in,
    input   logic   coin10_in,
    input   logic   sys_rst_n,
    output  logic   coin5_out,
    output  logic   coin10_out,
    output  logic   en,
    output  logic   reset
    );
    
    localparam v = 25_000_000;
//    localparam v = 8; // use this only during the Simulation
    logic [25 : 0] counter;
    logic [7 : 0] sec;
    
    logic add_coin5, add_coin10;
    
    en_clock _en_clock_(
        .sys_clk(sys_clk),
        .en(en)
    );
    
    pos_detect detect_coin5(
        .in(coin5_in),
        .sys_clk(sys_clk),
        .pos_edge(add_coin5)
    );
    
    pos_detect detect_coin10(
        .in(coin10_in),
        .sys_clk(sys_clk),
        .pos_edge(add_coin10)
    );
    
    always_ff @(posedge sys_clk) begin
        if(sys_clk) begin
            if(sys_rst_n == 0) begin
                counter <= 0;
                sec <= 0;
                reset <= 1;
            end
            else begin
                if(add_coin5 || add_coin10) begin
                    counter <= 0;
                    sec <= 0;
                end
                else begin
                    if(counter == v - 1) begin
                        counter <= 0;
                        if(sec == 10) begin
                            sec <= 0;
                            reset <= 1;
                        end 
                        else begin
                            sec <= sec + 1;
                            reset <= 0;
                        end
                    end
                    else begin
                        counter <= counter + 1;
                        reset <= 0;
                    end
                end
            end
        end
    end
    
    assign coin5_out = add_coin5;
    assign coin10_out = add_coin10;
endmodule
