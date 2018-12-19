module signExtender_v2(out,in);

input  in;
output [31:0] out;

		
		buf se0(out[0],in),
			 se1(out[1],1'b0),
			 se2(out[2],1'b0),
			 se3(out[3],1'b0),
			 se4(out[4],1'b0),
			 se5(out[5],1'b0),
			 se6(out[6],1'b0),
			 se7(out[7],1'b0),
			 se8(out[8],1'b0),
			 se9(out[9],1'b0),
			 se10(out[10],1'b0),
			 se11(out[11],1'b0),
			 se12(out[12],1'b0),
			 se13(out[13],1'b0),
			 se14(out[14],1'b0),			 
			 se15(out[15],1'b0),
			 se16(out[16],1'b0),
			 se17(out[17],1'b0),
			 se18(out[18],1'b0),
			 se19(out[19],1'b0),
			 se20(out[20],1'b0),
			 se21(out[21],1'b0),
			 se22(out[22],1'b0),
			 se23(out[23],1'b0),
			 se24(out[24],1'b0),
			 se25(out[25],1'b0),
			 se26(out[26],1'b0),
			 se27(out[27],1'b0),
			 se28(out[28],1'b0),
			 se29(out[29],1'b0),
			 se30(out[30],1'b0),
			 se31(out[31],1'b0);


endmodule 