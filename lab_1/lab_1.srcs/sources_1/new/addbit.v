`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/12/2023 12:40:56 PM
// Design Name: 
// Module Name: addbit
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


module addbit(
    input cin, a, b, 
    output s, cout
    );
    
    wire T0, T1, T2;
    xor(T0, a, b);
    and(T1, a, b);
    xor(s, T0, cin);
    and(T2, T0, cin);
    or(cout, T2, T1);
    
endmodule
