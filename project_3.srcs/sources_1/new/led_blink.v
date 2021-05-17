`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.05.2021 16:30:47
// Design Name: 
// Module Name: led_blink
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

module led_blink(input clock,start,reset, output LED  );


localparam POWER_ON=2'd1,POWER_OFF=2'd2;

reg [1:0]state_reg,state_next; // to handle state transitions 
reg LED_reg,LED_next; // to handle LED ON and OFF

// present state : design FF

always@(posedge clock,posedge reset) begin // Async reset
    if(reset) begin
        state_reg<= POWER_OFF;
        LED_reg<=1'b0;
        end 
    else 
    begin 
        LED_reg<=LED_next; 
        state_reg <= state_next;           
    end
end 


// Next state: Control FF

always@(*) begin
// default value
//LED_next =LED_reg; 
//state_next = state_reg;

    case(state_reg)
    POWER_ON:begin  
      LED_next = 1'b1;
               if(start==0) state_next = POWER_OFF; 
            //10sec count then go to POWER OFF
    end 
    
    POWER_OFF:begin 
    LED_next = 1'b0;
            if(start==1) state_next = POWER_ON;
    
       //10sec count then go to POWER ON
    end
    
    endcase
end

// output logic state : take output from FF

assign LED = LED_reg;

endmodule
