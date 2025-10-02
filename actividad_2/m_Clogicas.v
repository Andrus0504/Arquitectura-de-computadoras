module m_CLogicas(
	input a,
	input b,
	output o_and,
	output o_nand,
	output o_or,
	output o_nor,
	output o_not,
	output o_xor,
	output o_xnor);
assign o_and = a & b;
assign o_nand = ~(a & b);
assign o_or = a | b;
assign o_nor = ~(a | b);
assign o_not = ~a;
assign o_xor = a ^ b;
assign o_xnor = ~(a ^ b);
endmodule 
