`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.05.2021 13:17:50
// Design Name: 
// Module Name: _4bC
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


module _4bC(
input[3:0]A,[3:0]B,
//output reg y0,y1,y2
output reg y00,y11,y22
);
/*  
always @(*)
begin 

    if({A[3],A[2],A[1],A[0]}=={B[3],B[2],B[1],B[0]})
    begin 
        y0=1;y1=0;y2=0;    //A=B
    end
    if({A[3],A[2],A[1],A[0]}<{B[3],B[2],B[1],B[0]})
    begin 
        y0=0;y1=1;y2=0;     //A<B
    end
    if({A[3],A[2],A[1],A[0]}>{B[3],B[2],B[1],B[0]})
    begin 
        y0=0;y1=0;y2=1;     //A>B
    end

end
*/

always @(*)
begin 

    if(A==B)
    begin 
        y00=1;y11=0;y22=0;    //A=B
    end
    if(A<B)
    begin 
        y00=0;y11=1;y22=0;     //A<B
    end
    if(A>B)
    begin 
        y00=0;y11=0;y22=1;     //A>B
    end

end

endmodule 