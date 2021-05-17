`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.05.2021 22:44:51
// Design Name: 
// Module Name: _2to4dec
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


module _2to4dec(
input E,A,B,
//output reg Y0,Y1,Y2,Y3
output reg [3:0]Y
);
integer i;

always@(*)
begin 
    
    if(E==1'b0)
        begin 
           /* Y0<=1'b0;
            Y1<=1'b0;
            Y2<=1'b0;
            Y3<=1'b0;*/
            Y[0]<=1'b0;
            Y[1]<=1'b0;
            Y[2]<=1'b0;
            Y[3]<=1'b0;
        end
    else
        begin 
            for(i=0;i<=3;i=i+1) begin 
                if({A,B}==i)begin 
                    Y[i]=1'b1;
                   /* Y[h]=1'b0;
                    Y[g]=1'b0;
                    Y[k]=1'b0;*/
                end
                else begin 
                    Y[i]=1'b0;
                end        
            end
        end
end



endmodule
