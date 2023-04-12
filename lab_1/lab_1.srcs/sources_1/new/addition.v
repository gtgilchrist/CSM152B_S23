`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/12/2023 01:09:00 PM
// Design Name: 
// Module Name: addition
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


module addition(
    input [15:0] r1,
    input [15:0] r2,
    input cin,
    output [15:0] result,
    output cout,
    output of
    );
    
    wire [14:0] c;
    
    addbit u0(.a(r1[0]), .b(r2[0]), .cin(cin), .s(result[0]), .cout(c[0]));
    addbit u1(.a(r1[1]), .b(r2[1]), .cin(c[0]), .s(result[1]), .cout(c[1]));
    addbit u2(.a(r1[2]), .b(r2[2]), .cin(c[1]), .s(result[2]), .cout(c[2]));
    addbit u3(.a(r1[3]), .b(r2[3]), .cin(c[2]), .s(result[3]), .cout(c[3]));
    addbit u4(.a(r1[4]), .b(r2[4]), .cin(c[3]), .s(result[4]), .cout(c[4]));
    addbit u5(.a(r1[5]), .b(r2[5]), .cin(c[4]), .s(result[5]), .cout(c[5]));
    addbit u6(.a(r1[6]), .b(r2[6]), .cin(c[5]), .s(result[6]), .cout(c[6]));
    addbit u7(.a(r1[7]), .b(r2[7]), .cin(c[6]), .s(result[7]), .cout(c[7]));
    addbit u8(.a(r1[8]), .b(r2[8]), .cin(c[7]), .s(result[8]), .cout(c[8]));
    addbit u9(.a(r1[9]), .b(r2[9]), .cin(c[8]), .s(result[9]), .cout(c[9]));
    addbit u10(.a(r1[10]), .b(r2[10]), .cin(c[9]), .s(result[10]), .cout(c[10]));
    addbit u11(.a(r1[11]), .b(r2[11]), .cin(c[10]), .s(result[11]), .cout(c[11]));
    addbit u12(.a(r1[12]), .b(r2[12]), .cin(c[11]), .s(result[12]), .cout(c[12]));
    addbit u13(.a(r1[13]), .b(r2[13]), .cin(c[12]), .s(result[13]), .cout(c[13]));
    addbit u14(.a(r1[14]), .b(r2[14]), .cin(c[13]), .s(result[14]), .cout(c[14]));
    addbit u15(.a(r1[15]), .b(r2[15]), .cin(c[14]), .s(result[15]), .cout(cout));
    
    // overflow = (~a&~b&s) ^ (a&b&~s)
    wire T0, T1, T2, T3, T4, T5, T6;
    not(T0, r1[15]);
    not(T1, r2[15]);
    not(T2, result[15]);
    
    and(T3, T0, T1);
    and(T4, T3, result[15]);
    
    and(T5, r1[15], r2[15]);
    and(T6, T5, T2);
    
    or(of, T4, T6);
    
endmodule
