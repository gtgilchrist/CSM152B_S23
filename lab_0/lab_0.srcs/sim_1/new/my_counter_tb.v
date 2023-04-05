`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/05/2023 12:31:52 PM
// Design Name: 
// Module Name: my_counter_tb
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


module my_counter_tb(
    );
    
    reg clk, rst, enb;
    wire [3:0] counter;
    
    my_counter uut(.clock(clk), .reset(rst), .enable(enb), .counter_0(counter));
    
    initial begin
    
        clk = 1;
        rst = 0;
        enb = 0;
        #5
        rst = 1;
        #10
        rst = 0;
        #10
        enb = 1;
        #100
        enb = 0;
        #5
        $stop;
    end   
    
    always 
        clk = #5 ~clk;
        
    
    
    
endmodule
