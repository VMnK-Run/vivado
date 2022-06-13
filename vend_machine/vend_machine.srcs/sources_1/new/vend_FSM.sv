`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/06/12 01:32:51
// Design Name: 
// Module Name: vend_FSM
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


module vend_FSM(
    input   logic   sys_clk,
    input   logic   sys_rst_n,
    input   logic   reset,
    input   logic   coin5,
    input   logic   coin10,
    output  logic   open,
    output  logic [7 : 0] change,
    output  logic [7 : 0] price
    );
    
    // Moore FSM
    typedef enum logic [3 : 0] {NoCoin, OneCoin5, TwoCoin5, ThreeCoin5, OneCoin10, OneCoin5And10, TwoCoin10, TwoCoin5And10} statetype;
    statetype [3 : 0] state, nextstate;
    
    always_ff @(posedge sys_clk) begin
        if(sys_rst_n == 0) 
            state <= NoCoin;
        else
            state <= nextstate;
    end
    
    always_comb begin
        case(state)
        NoCoin: begin
            if(coin5 == 1) nextstate = OneCoin5;
            else if(coin10 == 1) nextstate = OneCoin10;
            else nextstate = NoCoin;
        end
        OneCoin5: begin
            if(coin5 == 1) nextstate = TwoCoin5;
            else if(coin10 == 1) nextstate = OneCoin5And10;
            else nextstate = OneCoin5;
        end
        TwoCoin5: begin
            if(coin5 == 1) nextstate = ThreeCoin5;
            else if(coin10 == 1) nextstate = TwoCoin5And10;
            else nextstate = TwoCoin5;
        end
        ThreeCoin5: begin
            if(reset) nextstate = NoCoin;
            else nextstate = ThreeCoin5;
        end
        OneCoin10: begin
            if(coin5 == 1) nextstate = OneCoin5And10;
            else if(coin10 == 1) nextstate = TwoCoin10;
            else nextstate = OneCoin10;
        end
        OneCoin5And10: begin
            if(reset) nextstate = NoCoin;
            else nextstate = OneCoin5And10;
        end
        TwoCoin10: begin
            if(reset) nextstate = NoCoin;
            else nextstate = TwoCoin10;
        end
        TwoCoin5And10: begin
            if(reset) nextstate = NoCoin;
            else nextstate = TwoCoin5And10;
        end
        endcase
    end
    
    always_ff @(posedge sys_clk) begin
        if(sys_rst_n == 0) begin
            open <= 0;
            change <= 0;
            price <= 0;
        end
    
        case(nextstate)
        
        NoCoin: begin
            open <= 0;
            change <= 0;
            price <= 0;
        end
        
        OneCoin5: begin
            open <= 0;
            change <= 0;
            price <= 5;
        end
        
        TwoCoin5: begin
            open <= 0;
            change <= 0;
            price <= 10;
        end
        
        ThreeCoin5: begin
            open <= 1;
            change <= 0;
            price <= 15;
        end
        
        OneCoin10: begin
            open <= 0;
            change <= 0;
            price <= 10;
        end
        
        OneCoin5And10: begin
            open <= 1;
            change <= 0;
            price <= 15;
        end
        
        TwoCoin10: begin
            open <= 1;
            change <= 5;
            price <= 20;
        end
        
        TwoCoin5And10: begin
            open <= 1;
            change <= 5;
            price <= 20;
        end
        
        default: begin
            open <= 0;
            change <= 0;
            price <= 0;
        end
        
        endcase
    end
    
endmodule
