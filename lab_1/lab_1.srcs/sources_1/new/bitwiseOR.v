`timescale 1ns / 1ps
module bOR(
    input [15:0] A,
    input [15:0] B,
    output [15:0] result);
  
  or(result[0],A[0],B[0]);
  or(result[1],A[1],B[1]);
  or(result[2],A[2],B[2]);
  or(result[3],A[3],B[3]);
  or(result[4],A[4],B[4]);
  or(result[5],A[5],B[5]);
  or(result[6],A[6],B[6]);
  or(result[7],A[7],B[7]);
  or(result[8],A[8],B[8]);
  or(result[9],A[9],B[9]);
  or(result[10],A[10],B[10]);
  or(result[11],A[11],B[11]);
  or(result[12],A[12],B[12]);
  or(result[13],A[13],B[13]);
  or(result[14],A[14],B[14]);
  or(result[15],A[15],B[15]);
  
endmodule 
