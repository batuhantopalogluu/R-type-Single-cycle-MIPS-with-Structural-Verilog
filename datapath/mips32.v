module mips32(instruction, clk, result);

	input [31:0] instruction;
   output [31:0] result;
	input clk;

	wire [4:0] readReg_1;
	
	wire [31:0] read_data_1;
	wire [31:0] read_data_2;
	
	wire [31:0] alu_alt_bacak;
	wire [31:0] write_data;
	
	wire [31:0] extended_shift,extended_sltu;

	wire shiftOperation; // control unit belirler yada başka bir şekilde belirleriz
	
	wire [2:0] select_bits_ALU;
	
	wire [31:0] temp_result;
	
	wire not_instruction2,select_sltu;
	wire ZERO;

	not notg(shiftOperation,instruction[5]); // instruction'ın 5. biti shift operasyonları için seçici bacak olarak kullanılabilir.
	
	_5bit_2_1mux blokGirisi1(readReg_1,instruction[25:21],instruction[20:16],shiftOperation); //shiftOperation = 0 ise rs i 1 se rt yi almalı  
	
	mips_registers REGG( read_data_1, read_data_2, write_data, readReg_1, instruction[20:16],instruction[15:11],1'b1 ,clk);                                         
	
	signExtender EXT0(extended_shift,instruction[10:6]); // shamt 32bit e uzatılır.
	
	_32bit_2_1mux blokCikisi(alu_alt_bacak,read_data_2,extended_shift,shiftOperation);// eger shift operasyonu ise sll,srl gibi o bacak secilir.
	
	// control unit çalışmasi
	control_unit cunit(select_bits_ALU,instruction[5:0]);
	
	//alu	nun ZERO output'unu kullanmıyorum
 	alu32 alum(temp_result,ZERO,read_data_1,alu_alt_bacak,select_bits_ALU);
	
	//sltu kontrolü	
	not notsltu(not_instruction2,instruction[2]);
	and andsltu(select_sltu,instruction[3],not_instruction2);
	
	// alu nun ilk biti 32 bit e extend edilmeli sltu için
	signExtender_v2 sev2(extended_sltu,temp_result[31]);
	
	// alunun sonucu ile sltu için signextends edilmiş alu sonucu arasında seçim yapılmalı bunun içi mux konulur.	
   _32bit_2_1mux resultmux(result,temp_result,extended_sltu,select_sltu);
									
	//register a geri yazmak için result write_data ya atılır.
	assign_32bit ass(write_data,result);


endmodule