`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.05.2021 21:11:19
// Design Name: 
// Module Name: _2to1mux
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


module _2to1mux(
input S,I0,I1,
output reg  Y
    );
    
always@(*)
begin 
    Y=(S==0)?(I0):(I1);
end
endmodule
