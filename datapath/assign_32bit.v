module assign_32bit(out,in);

input [31:0] in;
input [31:0] out;

buf buf0(out[0],in[0]);
buf buf1(out[1],in[1]);
buf buf2(out[2],in[2]);
buf buf3(out[3],in[3]);
buf buf4(out[4],in[4]);
buf buf5(out[5],in[5]);
buf buf6(out[6],in[6]);
buf buf7(out[7],in[7]);
buf buf8(out[8],in[8]);
buf buf9(out[9],in[9]);
buf buf10(out[10],in[10]);
buf buf11(out[11],in[11]);
buf buf12(out[12],in[12]);
buf buf13(out[13],in[13]);
buf buf14(out[14],in[14]);
buf buf15(out[15],in[15]);
buf buf16(out[16],in[16]);
buf buf17(out[17],in[17]);
buf buf18(out[18],in[18]);
buf buf19(out[19],in[19]);
buf buf20(out[20],in[20]);
buf buf21(out[21],in[21]);
buf buf22(out[22],in[22]);
buf buf23(out[23],in[23]);
buf buf24(out[24],in[24]);
buf buf25(out[25],in[25]);
buf buf26(out[26],in[26]);
buf buf27(out[27],in[27]);
buf buf28(out[28],in[28]);
buf buf29(out[29],in[29]);
buf buf30(out[30],in[30]);
buf buf31(out[31],in[31]);

endmodule 