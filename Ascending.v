`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:33:48 12/11/2021 
// Design Name: 
// Module Name:    Ascending 
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
module Ascending(max,min,a,b);
output [7:0]max,min;
input [7:0]a,b;
OR R1(max,a,b);
AND A1(min,a,b);


endmodule
