`timescale 1ns / 1ps
module bAND(
    input [15:0] A,
    input [15:0] B,
    output [15:0] result);
  
  and(result[0],A[0],B[0]);
  and(result[1],A[1],B[1]);
  and(result[2],A[2],B[2]);
  and(result[3],A[3],B[3]);
  and(result[4],A[4],B[4]);
  and(result[5],A[5],B[5]);
  and(result[6],A[6],B[6]);
  and(result[7],A[7],B[7]);
  and(result[8],A[8],B[8]);
  and(result[9],A[9],B[9]);
  and(result[10],A[10],B[10]);
  and(result[11],A[11],B[11]);
  and(result[12],A[12],B[12]);
  and(result[13],A[13],B[13]);
  and(result[14],A[14],B[14]);
  and(result[15],A[15],B[15]);
  
endmodule 
