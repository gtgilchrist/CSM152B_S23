`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/17/2023 12:51:27 PM
// Design Name: 
// Module Name: alu16_tb
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


module alu16_tb(
    
    );
    reg [15:0] a;
    reg [15:0] b;
    reg [3:0] alu;
    wire of,zero;
    wire [15:0] s;
    
    alu16 uut(.a(a), .b(b), .alu(alu), .of(of), .zero(zero), .s(s));
    
    initial begin
        a=0;
        b=0;
        alu=0;
        #10
        a=4'b1011;
        b=4'b1001;
        #10
        $stop;
    end
endmodule
