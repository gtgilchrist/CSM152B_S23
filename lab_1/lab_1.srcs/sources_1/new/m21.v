`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/12/2023 12:38:02 PM
// Design Name: 
// Module Name: m21
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


module m21(Y, D0, D1, S);

    output Y;
    input D0, D1, S;
    wire T1, T2, Sbar;
    and (T1, D1, S);
    and(T2, D0, Sbar);
    not (Sbar, S);
    or(Y, T1, T2);

endmodule
