`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/12/2023 12:48:53 PM
// Design Name: 
// Module Name: addbit_tb
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


module addbit_tb(

    );
    
    reg cin, a, b; 
    wire s, cout;
    
    addbit uut(.cin(cin), .a(a), .b(b), .s(s), .cout(cout));
    
    initial begin
        cin = 0;
        a = 0;
        b = 0;
        #10
        cin = 0;
        a = 0;
        b = 1;
        #10
        cin = 0;
        a = 1;
        b = 1;
        #10
        cin = 1;
        a = 0;
        b = 0;
        #10
        cin = 1;
        a = 1;
        b = 0;
        #10
        cin = 1;
        a = 1;
        b = 1;
        #10
        $stop;
    end
    
endmodule
