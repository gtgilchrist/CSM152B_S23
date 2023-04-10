`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/05/2023 12:19:35 PM
// Design Name: 
// Module Name: my_counter
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


module my_counter(
    input clock,
    input reset,
    input enable,
    output reg [3:0] counter_0
    );
    
    initial begin
        counter_0 = 4'b0000;
    end
    
    reg [31:0] one_dv=0;
    reg one_clock=0;
        
    always @ (posedge clock) begin
        if (one_dv == 32'd49_999_999) begin
            // need to be smaller time scale for simulation
            one_dv <= 0;
            one_clock <= ~one_clock;
        end
        else begin
            one_dv <= one_dv + 1;
        end    
    end
        
    always @(posedge one_clock) begin
        if(reset)
            counter_0 <= 4'b0000;
        else if(enable)
            counter_0 <= counter_0 + 1'b1;
     end
    
endmodule
