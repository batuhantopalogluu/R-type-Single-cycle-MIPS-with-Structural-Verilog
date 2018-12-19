module mips32_testbench();
 // Alp Hoca derste bu yapıyı kullanabileceğimizi belirttiği için test kısmında bu test inputlarını dosyadan alıyorum

	reg  [31:0] instr;
	wire [31:0] R;
	
	reg  clk ,clk2;
	reg  [7:0]  index;
	reg  [31:0] testvector[0:8];
	
	mips32 io(.instruction(instr),.clk(clk),.result(R));
	
	always 
	begin
			#5 clk = ~clk;
	end
	
	always begin
			#15 clk2 = ~clk2;
	end
	
	initial begin
		clk = 0;
		clk2= 0;
		$readmemb("test_input.tv",testvector);
		$readmemb("registers.mem",io.REGG.registers); 
		
		instr = 32'b00000000100001011000000000100010;// ilk test instruction ı burada veriliyor diğerleri test_input.tv den okunuyor.
		index = -1;
	end
	
	always @(posedge clk2)
	begin
		instr <= testvector[index];
	end
	always @(negedge clk2) 
	begin
		$display("opcode = %6b, rs = %5b, rt = %5b, rd = %5b, shamnt = %5b, funct = %6b",instr[31:26],instr[25:21],instr[20:16],instr[15:11],instr[10:6],instr[5:0]);
		$display("read_data_1 = %32b, read_data_2 = %32b ",io.REGG.read_data_1,io.REGG.read_data_2);
		$display("result = %32b",R);
		index <= index + 1;
		
		if(index == 8'd8)
		begin
			$display("10 test completed \n");
			$finish;
		end
	end
		
		
endmodule 