`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.05.2021 14:27:50
// Design Name: 
// Module Name: dec_lgt
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


module dec_lgt(
input clock,reset,
output reg [31:0]light
);

reg state,state_pre,state_fu;
parameter light_on=1'b1,light_off=1'b0;
integer i;

always@(posedge clock,posedge reset)
begin 
    if(reset) begin 
        light<=light_off;
    end
    else begin 
        state<=state_fu;
    end  
end 

always@(*)
begin 
state_fu=state_pre;
  



end 





endmodule
