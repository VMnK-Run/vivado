`timescale 1ns / 1ps

module dig_clock(
    input                   sys_clk,
    input                   sys_rst_n,
    input                   i_start,
    output logic [3 : 0]    an,
    output logic [7 : 0]    a_to_g
    );
    
    logic           en;
    logic [7 : 0]   min;
    logic [7 : 0]   sec;
    logic [7 : 0]   min_bcd;
    logic [7 : 0]   sec_bcd;
    
    en_clock enc(.sys_clk(sys_clk), .en(en));
    
    counter cnter(
        .sys_clk(sys_clk),
        .sys_rst_n(sys_rst_n),
        .i_start(i_start),
        .min(min),
        .sec(sec)
    );
    
    bin2bcd_0 bin2bcd_min(
        .bin(min),
        .bcd(min_bcd)
    );
    
    bin2bcd_0 bin2bcd_sec(
        .bin(sec),
        .bcd(sec_bcd)
    );
    
    x7seg x7seg1(
        .sys_clk(sys_clk),
        .en(en),
        .min(min_bcd),
        .sec(sec_bcd),
        .a_to_g(a_to_g),
        .an(an)
    );
    
endmodule