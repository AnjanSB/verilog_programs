`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.05.2021 11:19:34
// Design Name: 
// Module Name: TLs_tb
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


module TLs_tb;
reg clock;
wire [2:0]TL0,TL1,TL2,TL3;

TLs TLs_tb(.clock(clock),.TL0(TL0),.TL1(TL1),.TL2(TL2),.TL3(TL3)); 
    always #5 clock=~clock;
    initial 
        begin 
            clock=1'b0;
            #100 $finish;
        end
    /*initial 
        begin 
            $monitor("T=$time TL0=%b,TL1=%b,TL2=%b,TL3=%b,clock=%b"TL0,TL1,TL2,TL3,clock);
        end*/


endmodule
