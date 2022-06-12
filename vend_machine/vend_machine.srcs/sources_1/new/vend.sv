`timescale 1ns / 1ps

module vend(
    input sys_clk, sys_rst_n,
    input coin5, coin10,
    output [3 : 0] an,
    output [7 : 0] a_to_g,
    output open
    );
    
    
    logic coin5_out, coin10_out;
    logic en, reset;
    logic [7 : 0] change;
    logic [7 : 0] price;
    logic [7 : 0] change_bcd;
    logic [7 : 0] price_bcd;
    
    counter cnter(
        .sys_clk(sys_clk),
        .coin5_in(coin5),
        .coin10_in(coin10),
        .sys_rst_n(sys_rst_n),
        .coin5_out(coin5_out),
        .coin10_out(coin10_out),
        .en(en),
        .reset(reset)
    );
    
    vend_FSM FSM(
        .sys_clk(sys_clk),
        .sys_rst_n(sys_rst_n),
        .reset(reset),
        .coin5(coin5_out),
        .coin10(coin10_out),
        .open(open),
        .change(change),
        .price(price)
    );
    
    bin2bcd_0 bin2bcd_change(
        .bin(change),
        .bcd(change_bcd)
    );
    
    bin2bcd_0 bin2bcd_price(
        .bin(price),
        .bcd(price_bcd)
    );
    
    x7seg x7seg1(
        .sys_clk(sys_clk),
        .en(en),
        .change(change_bcd),
        .price(price_bcd),
        .an(an),
        .a_to_g(a_to_g)
    );
    
endmodule