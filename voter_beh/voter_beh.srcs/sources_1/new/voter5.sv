`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/04/13 17:00:11
// Design Name: 
// Module Name: voter5
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


module voter5(
        input logic [4:0] L,
        output logic led
    );
    
    always_comb begin
        int i;
        int cnt;
        cnt = 0;
        cnt = L[0] + L[1] + L[2] + L[3] + L[4];
        if(cnt >= 3) led = 1;
        else led = 0;
    end
endmodule
