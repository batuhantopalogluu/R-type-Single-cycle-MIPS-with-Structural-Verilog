module _32bit_Sub(sum,carry_out,a,b,carry_in);

input [31:0] a,b;
input carry_in;

output [31:0] sum;
output carry_out;

wire temp_carry1,temp_carry2,temp_carry3,temp_carry4,temp_carry5,temp_carry6,temp_carry7;
wire [31:0] tempi;

not not0(tempi[0],b[0]);
not not1(tempi[1],b[1]);
not not2(tempi[2],b[2]);
not not3(tempi[3],b[3]);
not not4(tempi[4],b[4]);
not not5(tempi[5],b[5]);
not not6(tempi[6],b[6]);
not not7(tempi[7],b[7]);
not not8(tempi[8],b[8]);
not not9(tempi[9],b[9]);
not not10(tempi[10],b[10]);
not not11(tempi[11],b[11]);
not not12(tempi[12],b[12]);
not not13(tempi[13],b[13]);
not not14(tempi[14],b[14]);
not not15(tempi[15],b[15]);
not not16(tempi[16],b[16]);
not not17(tempi[17],b[17]);
not not18(tempi[18],b[18]);
not not19(tempi[19],b[19]);
not not20(tempi[20],b[20]);
not not21(tempi[21],b[21]);
not not22(tempi[22],b[22]);
not not23(tempi[23],b[23]);
not not24(tempi[24],b[24]);
not not25(tempi[25],b[25]);
not not26(tempi[26],b[26]);
not not27(tempi[27],b[27]);
not not28(tempi[28],b[28]);
not not29(tempi[29],b[29]);
not not30(tempi[30],b[30]);
not not31(tempi[31],b[31]);
	 

_32bit_Adder subb(sum,carry_out,a,tempi,carry_in);
	 

endmodule
