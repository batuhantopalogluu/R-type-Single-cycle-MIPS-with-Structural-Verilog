module control_unit(select_bits_ALU,function_code);

input [5:0] function_code;
output [2:0] select_bits_ALU;

	wire s00,s01;
	wire not_f5;

	not notc0(not_f5,function_code[5]);
	
	// s2 nin hesaplanmasi	
	or orc0(select_bits_ALU[2],function_code[1],not_f5);

	// s1 in hesaplanmasi
	xnor xnorc0(select_bits_ALU[1],function_code[1],function_code[2]);
	
	// s0 in hesaplanmasi
	and andc1(s00,function_code[0],function_code[2]);	
	and andc2(s01,not_f5,function_code[1]);
	or orc1(select_bits_ALU[0],s00,s01);


endmodule 