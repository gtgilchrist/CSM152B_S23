`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/12/2023 01:06:41 PM
// Design Name: 
// Module Name: alu16
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


module alu16(
    input [15:0] a, [15:0] b, [3:0] alu, 
    output of,zero,[15:0] s
    );
    
    //subtraction addition with b as invert b + 1
    //addition addition u0(.r1(a), .r2(b), .cin(0), .of(of), .result(s), .cout(of));
    //bitwiseOR 16 or gates, make a separate file just like addition
    //bitwiseAND same as above but and gates
    //decrement subtration with 1
    //increment addition with 1
    //invert input xor all 1's
    //shifts = grant
    //set on less than or equal ??
    
    
endmodule
