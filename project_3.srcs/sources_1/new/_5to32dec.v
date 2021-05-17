`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.05.2021 09:10:57
// Design Name: 
// Module Name: _5to32dec
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


module _5to32dec(
input En,A,B,C,D,E,
output [3:0]Y,[7:0]Y0,[7:0]Y1,[7:0]Y2,[7:0]Y3
//output reg K0,K1,K2,K3
);

_2to4dec _2to4dec0(.E(En),.A(A),.B(B),.Y(Y));

/*always@(*)
begin 
    K0<=Y[0];
    K1<=Y[1];
    K2<=Y[2];
    K3<=Y[3];
end*/

_3to8dec _3to8dec0(.E(Y[0]),.A(C),.B(D),.C(E),.Y(Y0));
_3to8dec _3to8dec1(.E(Y[1]),.A(C),.B(D),.C(E),.Y(Y1));
_3to8dec _3to8dec2(.E(Y[2]),.A(C),.B(D),.C(E),.Y(Y2));
_3to8dec _3to8dec3(.E(Y[3]),.A(C),.B(D),.C(E),.Y(Y3));


endmodule
