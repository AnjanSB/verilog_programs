`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.05.2021 20:29:52
// Design Name: 
// Module Name: _8bC
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


module _8bC(
input [3:0]A0,B0,A1,B1,
output YG0,YE0,YL0,YG1,YE1,YL1,YG,YE,YL
);
    
_4bC _4bC0(.A(A0),.B(B0),.y00(YE0),.y11(YL0),.y22(YG0));
_4bC _4bC1(.A(A1),.B(B1),.y00(YE1),.y11(YL1),.y22(YG1));    
    
assign 
    YG=YG1|(YE1&YG),    
    YE=YE1&YE,
    YL=YL1|(YL&YE1);
    
endmodule
