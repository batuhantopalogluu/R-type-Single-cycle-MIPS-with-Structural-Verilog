module _32bit_Adder(sum,carry_out,a,b,carry_in);

input [31:0] a,b;
input carry_in;

output [31:0] sum;
output carry_out;

wire temp_carry1,temp_carry2,temp_carry3,temp_carry4,temp_carry5,temp_carry6,temp_carry7;

_4bit_adder fba0(sum[3:0],temp_carry1,a[3:0],b[3:0],carry_in) ;
_4bit_adder fba1(sum[7:4],temp_carry2,a[7:4],b[7:4],temp_carry1);
_4bit_adder fba2(sum[11:8],temp_carry3,a[11:8],b[11:8],temp_carry2);
_4bit_adder fba3(sum[15:12],temp_carry4,a[15:12],b[15:12],temp_carry3);
_4bit_adder fba4(sum[19:16],temp_carry5,a[19:16],b[19:16],temp_carry4);
_4bit_adder fba5(sum[23:20],temp_carry6,a[23:20],b[23:20],temp_carry5);
_4bit_adder fba6(sum[27:24],temp_carry7,a[27:24],b[27:24],temp_carry6);
_4bit_adder fba7(sum[31:28],carry_out,a[31:28],b[31:28],temp_carry7);
	
endmodule