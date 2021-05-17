`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.05.2021 08:56:10
// Design Name: 
// Module Name: TLs
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


module TLs(
input clock,
output reg [2:0][2:0]TL0,reg [2:0][2:0]TL1,reg [2:0][2:0]TL2,reg [2:0][2:0]TL3  //[2:0]TL[2:0]
);

reg [1:0]state;
parameter S0=0,S1=1,S2=2,S3=3;
parameter RED=2'b11,YELLOW=2'b01,GREEN=2'b00;



always@(posedge clock,state) 
begin 
    case(state)
         S0:begin 
                state=S1;
            end
         S1:begin 
                state=S2;
            end   
         S2:begin 
                state=S3;
            end
         S3:begin 
                state=S0;
            end
        /* default :begin 
                state<=S0;
            end */  
     endcase 
end

always@(state)begin
    case(state)
        S0:begin 
            TL0<=GREEN;
            TL1<=YELLOW;
            TL2<=RED;
            TL3<=RED;
           end  
        S1:begin 
            TL0<=RED;
            TL1<=GREEN;
            TL2<=YELLOW;
            TL3<=RED;
           end             
        S2:begin 
            TL0<=RED;
            TL1<=RED;
            TL2<=GREEN;
            TL3<=YELLOW;
            end  
        S3:begin 
            TL0<=YELLOW;
            TL1<=RED;
            TL2<=RED;
            TL3<=GREEN;
           end 
        default :begin 
            TL0<=RED;
            TL1<=RED;
            TL2<=RED;
            TL3<=RED;
           end  
    endcase 
end

endmodule
