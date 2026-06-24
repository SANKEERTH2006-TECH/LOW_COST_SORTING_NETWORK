`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:47:00 12/16/2021 
// Design Name: 
// Module Name:    Binary_Conversion 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Binary_Conversion(bc,u);
output reg[7:0]bc;
input [7:0]u;
always @(*)
begin
case(u)
8'b00000000: bc=8'd0;
8'b10000000: bc=8'd1;
8'b11000000: bc=8'd2;
8'b11100000: bc=8'd3;
8'b11110000: bc=8'd4;
8'b11111000: bc=8'd5;
8'b11111100: bc=8'd6;
8'b11111110: bc=8'd7;
endcase
end

endmodule
