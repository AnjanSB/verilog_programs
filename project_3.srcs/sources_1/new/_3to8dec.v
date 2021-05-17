`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.05.2021 08:40:08
// Design Name: 
// Module Name: _3to8dec
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


module _3to8dec(
input E,A,B,C,
output reg [7:0]Y
    );
    
integer i;

always@(*)
begin 
    
    if(E==1'b0)
        begin 
           /* Y0<=1'b0;
            Y1<=1'b0;
            Y2<=1'b0;
            Y3<=1'b0;
            Y[0]<=1'b0;
            Y[1]<=1'b0;
            Y[2]<=1'b0;
            Y[3]<=1'b0;*/
            for(i=0;i<=7;i=i+1)begin
                Y[i]<=1'b0;
            end
        end
    else
        begin 
            for(i=0;i<=7;i=i+1) begin 
                if({A,B,C}==i)begin 
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
