`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:47:48 12/13/2021 
// Design Name: 
// Module Name:    cas8input 
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
module cas8input(s0,s1,s2,s3,s4,s5,s6,s7,a0,a1,a2,a3,a4,a5,a6,a7);
	 
	 output [7:0]s0,s1,s2,s3,s4,s5,s6,s7;
	 input [7:0]a0,a1,a2,a3,a4,a5,a6,a7;
	 
	 wire [7:0]uc0,uc1,uc2,uc3,uc4,uc5,uc6,uc7;
	 wire [7:0]w1,w2,w3,w4,w5,w6,w7,w8,w9,w10;
	 wire [7:0]w11,w12,w13,w14,w15,w16,w17,w18,w19,w20;
	 wire [7:0]w21,w22,w23,w24,w25,w26,w27,w28,w29,w30;
	 wire [7:0]w31,w32,w33,w34,w35,w36,w37,w38,w39,w40;
	 wire [7:0]y0,y1,y2,y3,y4,y5,y6,y7;
	 
	
	 
	 	 
	 unaryconversion U0(uc0,a0);//.........UNARY CONVERSION
	 unaryconversion U1(uc1,a1);
	 unaryconversion U2(uc2,a2);
	 unaryconversion U3(uc3,a3);
	 unaryconversion U4(uc4,a4);
	 unaryconversion U5(uc5,a5);
	 unaryconversion U6(uc6,a6);
	 unaryconversion U7(uc7,a7);	 
	  
	 
	 Descending V1(w1,w2,uc0,uc1);
	 Ascending  V2(w3,w4,uc2,uc3);
	 Descending V3(w5,w6,uc4,uc5);
	 Ascending  V4(w7,w8,uc6,uc7);//........stage1
	 
	 Descending V5(w9,w10,w1,w3);
	 Descending V6(w11,w12,w2,w4);
	 Descending V7(w13,w14,w9,w11);
	 Descending V8(w15,w16,w10,w12);//....stage2.1
	 
	 Ascending V9(w17,w18,w5,w7);
	 Ascending V10(w19,w20,w6,w8);
	 Ascending V11(w21,w22,w17,w19);
	 Ascending V12(w23,w24,w18,w20);//.....stage2.2
	 
	 Descending V13(w25,w26,w13,w21);
	 Descending V14(w27,w28,w14,w22);
	 Descending V15(w29,w30,w15,w23);
	 Descending V16(w31,w32,w16,w24);
	 Descending V17(w33,w34,w25,w29);
	 Descending V18(w35,w36,w26,w30);
	 Descending V19(w37,w38,w27,w31);
	 Descending V20(w39,w40,w28,w32);
	 
	 Descending V21(y0,y1,w33,w37);
	 Descending V22(y2,y3,w34,w38);
	 Descending V23(y4,y5,w35,w39);
	 Descending V24(y6,y7,w36,w40);//.........stage3
	 
	 Binary_Conversion B0(s0,y0);//..........BINARY CONVERSION
	 Binary_Conversion B1(s1,y1);
	 Binary_Conversion B2(s2,y2);
	 Binary_Conversion B3(s3,y3);
	 Binary_Conversion B4(s4,y4);
	 Binary_Conversion B5(s5,y5);
	 Binary_Conversion B6(s6,y6);
	 Binary_Conversion B7(s7,y7);
	 
	 endmodule
