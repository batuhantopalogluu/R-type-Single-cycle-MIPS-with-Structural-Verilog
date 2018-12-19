module _32_bit_mux(out,a0,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25,a26,a27,a28,a29,a30,a31,s);

input a0,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25,a26,a27,a28,a29,a30,a31;
wire [31:0] a;
input [4:0] s;
output out;
wire [3:0] tempOut;

buf b1(a[0],a31);
buf b2(a[1],a30);
buf b3(a[2],a29);
buf b4(a[3],a28);
buf b5(a[4],a27);
buf b6(a[5],a26);
buf b7(a[6],a25);
buf b8(a[7],a24);
buf b9(a[8],a23);
buf b10(a[9],a22);
buf b11(a[10],a21);
buf b12(a[11],a20);
buf b13(a[12],a19);
buf b14(a[13],a18);
buf b15(a[14],a17);
buf b16(a[15],a16);
buf b17(a[16],a15);
buf b18(a[17],a14);
buf b19(a[18],a13);
buf b20(a[19],a12);
buf b21(a[20],a11);
buf b22(a[21],a10);
buf b23(a[22],a9);
buf b24(a[23],a8);
buf b25(a[24],a7);
buf b26(a[25],a6);
buf b27(a[26],a5);
buf b28(a[27],a4);
buf b29(a[28],a3);
buf b30(a[29],a2);
buf b31(a[30],a1);
buf b32(a[31],a0);


_8_1_mux mux81(tempOut[0],a[7:0],s[2:0]),
				  mux82(tempOut[1],a[15:8],s[2:0]),
				  mux83(tempOut[2],a[23:16],s[2:0]),
				  mux84(tempOut[3],a[31:24],s[2:0]);
_4_1_mux  mux85(out,tempOut,s[4:3]);

endmodule