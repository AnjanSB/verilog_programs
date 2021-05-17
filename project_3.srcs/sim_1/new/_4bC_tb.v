`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.05.2021 14:49:23
// Design Name: 
// Module Name: _4bC_tb
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


module _4bC_tb;

    // Inputs
    reg [3:0]A;
    reg [3:0]B;

    // Outputs
    wire y0;
    wire y1;
    wire y2;

    // Instantiate the Unit Under Test (UUT)
    _4bC uut (
        .A(A), 
        .B(B), 
        .y1(y1), 
        .y0(y0), 
        .y2(y2)
    );

    initial begin
        //Apply inputs
        A = 10;
        B = 12;
        #100;
        A = 15;
        B = 11;
        #100;
        A = 10;
        B = 10;
        #100;
    end
      
    initial begin 
        $monitor("T=%t,A=%b,B=%b,y0=%b,y1=%b,y2=%b",$time ,A,B,y0,y1,y2);
    end
endmodule

