`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.05.2021 22:21:33
// Design Name: 
// Module Name: _3to1mux
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


module _3to1mux(
input S0,S1,I0,I1,I2,
output Y0,Y1
    );
    
_2to1mux _2to1mux0(.S(S0),.I0(I0),.I1(I1),.Y(Y0));
_2to1mux _2to1mux1(.S(S1),.I0(Y0),.I1(I2),.Y(Y1));
endmodule
