`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:07:50 12/15/2021
// Design Name:   cas8input
// Module Name:   C:/Users/dasar/Desktop/BACKP/SORTING_NETWORK/TB1_CAS8.v
// Project Name:  SORTING_NETWORK
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: cas8input
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TB1_CAS8;

	// Inputs
	reg [7:0] a0;
	reg [7:0] a1;
	reg [7:0] a2;
	reg [7:0] a3;
	reg [7:0] a4;
	reg [7:0] a5;
	reg [7:0] a6;
	reg [7:0] a7;

	// Outputs
	wire [7:0] s0;
	wire [7:0] s1;
	wire [7:0] s2;
	wire [7:0] s3;
	wire [7:0] s4;
	wire [7:0] s5;
	wire [7:0] s6;
	wire [7:0] s7;

	// Instantiate the Unit Under Test (UUT)
	cas8input uut (
		.s0(s0), 
		.s1(s1), 
		.s2(s2), 
		.s3(s3), 
		.s4(s4), 
		.s5(s5), 
		.s6(s6), 
		.s7(s7), 
		.a0(a0), 
		.a1(a1), 
		.a2(a2), 
		.a3(a3), 
		.a4(a4), 
		.a5(a5), 
		.a6(a6), 
		.a7(a7)
	);

	initial begin
		// Initialize Inputs
		a0 = 8'd6;
		a1 = 8'd7;
		a2 = 8'd3;
		a3 = 8'd2;
		a4 = 8'd5;
		a5 = 8'd0;
		a6 = 8'd1;
		a7 = 8'd4;

		// Wait 100 ns for global reset to finish
		#100;
      a0 = 8'd7;
		a1 = 8'd5;
		a2 = 8'd3;
		a3 = 8'd0;
		a4 = 8'd6;
		a5 = 8'd2;
		a6 = 8'd1;
		a7 = 8'd4;

		// Add stimulus here

	end
      
endmodule

