`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:48:38 12/11/2021 
// Design Name: 
// Module Name:    Descending 
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
module Descending(min,max,a,b);
output [7:0]min,max;
input [7:0]a,b;
AND A1(min,a,b);
OR R1(max,a,b);


endmodule
