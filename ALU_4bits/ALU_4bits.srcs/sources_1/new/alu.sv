`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/04/25 00:08:32
// Design Name: 
// Module Name: alu
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


module alu(
        input   [3:0]   A,
        input   [3:0]   B,
        input   [3:0]   aluop,
        output  logic   [7:0]   alures,
        output  logic   ZF,
        output  logic   OF
    );
    logic [3:0] A1; 
    logic [3:0] B1;
    logic OF1, OF2; 
    logic [3:0] sum; logic [3:0] diff;
    assign A1 = A; assign B1 = B;
    rca add(.A(A1), .B(B1), .C_in(1'b0), .S(sum), .C_out(OF1));
    rca sub(.A(A1), .B(~B1), .C_in(1'b1), .S(diff), .C_out(OF2));
    always_comb begin
        if(aluop == 4'b0000) begin
            alures = {4'b0000, A & B};
            ZF = ((A & B) == 4'b0000) ? 1'b1 : 1'b0;
            OF = 0;
        end else if(aluop == 4'b0001) begin
            alures = {4'b0000, A | B};
            ZF = ((A | B) == 4'b0000) ? 1'b1 : 1'b0;
            OF = 0;
        end else if(aluop == 4'b0010) begin
            alures = {4'b0000, A ^ B};
            ZF = ((A ^ B) == 4'b0000) ? 1'b1 : 1'b0;
            OF = 0;
        end else if(aluop == 4'b0011) begin
            alures = {4'b0000, ~(A & B)};
            ZF = ((~(A & B)) == 4'b0000) ? 1'b1 : 1'b0;
            OF = 0;
        end else if(aluop == 4'b0100) begin
            alures = {4'b0000, ~A};
            ZF = ((~A) == 4'b0000) ? 1'b1 : 1'b0;
            OF = 0;
        end else if(aluop == 4'b0101) begin
            int x;
            x = B[2:0];
            alures = {4'b0000, A << x};
            ZF = ((A << x) == 4'b0000) ? 1'b1 : 1'b0; 
            OF = 0; 
        end else if(aluop == 4'b0110) begin
            int x;
            x = B[2:0];
            alures = {4'b0000, A >> x};
            ZF = ((A >> x) == 4'b0000) ? 1'b1 : 1'b0; 
            OF = 0; 
        end else if(aluop == 4'b0111) begin
            logic signed [3:0] temp;
            int x;
            
            temp = $signed (A);
            x = B[2:0];
            alures = {4'b0000, temp >>> x};
            ZF = ((temp >>> x) == 4'b0000) ? 1'b1 : 1'b0;
            OF = 0;
        end else if(aluop == 4'b1000) begin
            alures = A * B;
            ZF = (A * B == 0) ? 1 : 0;
            OF = 0;
        end else if(aluop == 4'b1001) begin
            logic [3:0] A1;
            logic [3:0] B1;
            int res;
            A1 = (A[3] == 1'b1) ? (~A + 1'b1) : A;
            B1 = (B[3] == 1'b1) ? (~B + 1'b1) : B;
            res = A1 * B1;
            alures = (A[3] == B[3]) ? res : (~res + 1'b1);
            ZF = (res == 0) ? 1 : 0;
            OF = 0;
        end else if(aluop == 4'b1010) begin
            alures = {4'b0000, sum};
            ZF = (sum == 0) ? 1 : 0;
            if(A[3] == B[3]) begin
                if(A[3] == 0 && sum[3] == 1) OF = 1;
                else if(A[3] == 1 && sum[3] == 0) OF = 1;
                else OF = 0;
            end else OF = 0;
        end else if(aluop == 4'b1011) begin
            alures = {4'b0000, sum};
            ZF = (sum == 0) ? 1 : 0;
            OF = OF1;
        end else if(aluop == 4'b1100) begin
            alures = {4'b0000, diff};
            ZF = (diff == 0) ? 1 : 0;
            OF = (A[3] == B[3]) ? 0 : OF2;
        end else if(aluop == 4'b1101) begin
            alures = {4'b0000, diff};
            ZF = (diff == 0) ? 1 : 0;
            OF = (A < B) ? 1 : 0;
        end else if(aluop == 4'b1110) begin
            logic [3:0] temp;
            temp = (A[3] == 0) ? 0 : 1;
            alures = {4'b0000, (A[3] == B[3]) ? (A < B) : temp};
            ZF = (A == B) ? 1 : 0;
            OF = 0;
        end else if(aluop == 4'b1111) begin
            alures = {4'b0000, (A < B) ? 4'b0001 : 4'b0000};
            ZF = (A == B) ? 1 : 0;
            OF = 0;
        end
    end
endmodule
