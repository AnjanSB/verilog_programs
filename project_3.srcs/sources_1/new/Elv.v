`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.05.2021 18:59:23
// Design Name: 
// Module Name: Elv
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


module Elv(
input clock,input [2:0]up,[2:0]down,
output reg floor
);

reg state;
parameter S0=0,S1=1;
//parameter F0=2'b00,F1=2'b01,F2=2'b10,F3=2'b11;
integer i,F;

always@(posedge clock) 
begin 
    case(state)
        S0:begin 
            state<=S1;
           end
        S1:begin 
            state<=S0;
           end
    endcase 
end 

always@(state)
begin 
    case(state)
        S0:begin 
            for (i=0;i<=up;i=i+1)
                floor=F[i];
           end
        S1:begin 
            for (i=3;i>=down;i=i-1)
                floor=F[i];
           end
    endcase 
end


endmodule

/*
module Elv(input clock,reset,[2:0]level,output  [1:0]floor);


reg [1:0]floor_reg,floor_nxt;
parameter F0=2'b00,F1=2'b01,F2=2'b10,F3=2'b11;
integer i;

always@(posedge clock,posedge reset) 
begin 
    if(reset)begin
        floor_reg<=F0;
     end 
     else
     begin
        floor_reg<=floor_nxt;
     end
end 

always@(*)
begin 
floor_nxt=floor_reg;
    case(floor_reg)
        F0:begin 
           if(level>floor_reg)
                floor_nxt<=F1;
        end
        F1:begin 
           if(level>floor_reg)
                floor_nxt<=F2;
           else if(level<floor_reg)
                floor_nxt<=F0;
         end
         F2:begin
            if(level>floor_reg)
                floor_nxt=F3;
            else if(level<floor_reg)
                floor_nxt=F1;
          end
          F3:begin
             if(level<floor_reg)
                floor_nxt=F2;
          end
           
    endcase 
end

assign floor=floor_reg;

endmodule
*/