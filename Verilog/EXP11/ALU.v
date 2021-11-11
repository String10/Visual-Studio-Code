module ALU (
	input 	[31:0] 	dataa,
	input 	[31:0] 	datab,
	input 	[3:0]  	ALUctr,
	output 			less,
	output 			zero,
	output 	[31:0] 	aluresult
);

wire [31:0] result_tmp;

endmodule //ALU

module Adder (
	input 			[31:0]	dataa,
	input 			[31:0] 	datab,
	input 					add_or_sub,
	output 	reg 	[31:0] 	result,
	output 	reg 	CF,
	output 	reg 	OF,
	output 	reg 	ZF
);

reg [31:0] datab_xor, result_tmp;
reg carry_n, carry_n_1;

always @(*) begin
	datab_xor = {32{add_or_sub}} ^ datab;

	{carry_n, result} = dataa[31:0] + datab[31:0] + add_or_sub;
	{carry_n_1, result_tmp} = dataa[30:0] + datab[30:0] + add_or_sub;

	CF = carry_n ^ add_or_sub;
	OF = carry_n ^ carry_n_1;
	ZF = ~(|result);
end

endmodule //Adder