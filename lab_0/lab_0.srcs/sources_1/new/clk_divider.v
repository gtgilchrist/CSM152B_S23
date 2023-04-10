`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/05/2023 01:49:55 PM
// Design Name: 
// Module Name: clk_divider
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


module clk_divider(
    input clock, 
    output reg one_clk
    );
    
    reg [31:0] one_dv=0;
    
    always @ (posedge clock) begin
        if (one_dv == 32'd49_999_999) begin
            one_dv <= 0;
            one_clk <= ~one_clk;
        end
        else begin
            one_dv <= one_dv + 1;
        end    
    end
    
endmodule
