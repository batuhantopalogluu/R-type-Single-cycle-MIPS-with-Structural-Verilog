module _5bit_2_1mux(out,a,b,s);

input s;
input [4:0] a;
input [4:0] b;
output [4:0] out;

_2_1_mux_v2 muxi0(a[0],b[0],s,out[0]),
				muxi1(a[1],b[1],s,out[1]),
				muxi2(a[2],b[2],s,out[2]),
				muxi3(a[3],b[3],s,out[3]),
				muxi4(a[4],b[4],s,out[4]);
				
				
endmodule 
				