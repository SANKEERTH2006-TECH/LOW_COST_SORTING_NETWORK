`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:52:04 12/11/2021 
// Design Name: 
// Module Name:    unary_conversion 
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
module unaryconversion(uc,a);
output reg[7:0]uc;
input [7:0]a;
always @(*)
begin
case(a)
8'd0: uc=8'b00000000;
8'd1: uc=8'b10000000;
8'd2: uc=8'b11000000;
8'd3: uc=8'b11100000;
8'd4: uc=8'b11110000;
8'd5: uc=8'b11111000;
8'd6: uc=8'b11111100;
8'd7: uc=8'b11111110;
endcase
end

    


endmodule
