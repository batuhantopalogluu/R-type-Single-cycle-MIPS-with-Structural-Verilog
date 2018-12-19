module _32bit_2_1mux(out,a,b,s);

input s;
input [31:0] a;
input [31:0] b;
output [31:0] out;

_2_1_mux_v2 muxi0(a[0],b[0],s,out[0]),
				muxi1(a[1],b[1],s,out[1]),
				muxi2(a[2],b[2],s,out[2]),
				muxi3(a[3],b[3],s,out[3]),
				muxi4(a[4],b[4],s,out[4]),
				muxi5(a[5],b[5],s,out[5]),
				muxi6(a[6],b[6],s,out[6]),
				muxi7(a[7],b[7],s,out[7]),
				muxi8(a[8],b[8],s,out[8]),
				muxi9(a[9],b[9],s,out[9]),
				muxi10(a[10],b[10],s,out[10]),
				muxi11(a[11],b[11],s,out[11]),
				muxi12(a[12],b[12],s,out[12]),
				muxi13(a[13],b[13],s,out[13]),
				muxi14(a[14],b[14],s,out[14]),
				muxi15(a[15],b[15],s,out[15]),
				muxi16(a[16],b[16],s,out[16]),
				muxi17(a[17],b[17],s,out[17]),
				muxi18(a[18],b[18],s,out[18]),
				muxi19(a[19],b[19],s,out[19]),
				muxi20(a[20],b[20],s,out[20]),
				muxi21(a[21],b[21],s,out[21]),
				muxi22(a[22],b[22],s,out[22]),
				muxi23(a[23],b[23],s,out[23]),
				muxi24(a[24],b[24],s,out[24]),
				muxi25(a[25],b[25],s,out[25]),
				muxi26(a[26],b[26],s,out[26]),
				muxi27(a[27],b[27],s,out[27]),
				muxi28(a[28],b[28],s,out[28]),
				muxi29(a[29],b[29],s,out[29]),
				muxi30(a[30],b[30],s,out[30]),
				muxi31(a[31],b[31],s,out[31]);
				
endmodule 
				