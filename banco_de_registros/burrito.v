module Burrito(
	input[19:0]instruccion
	);

//instruccion OP|OP1|OP2|RD

wire[31:0] C1, C2, C3;

bancoRegistro inst1(
.AR_1(instruccion [14:10]),
.AR_2(instruccion[9:5]),
.AW(instruccion[4:0]),
.DATAIN(C3),
.REGWRITE(1),
.DR_1(C1),
.DR_2(C2));

ALU inst2(
.OP_1(C1),
.OP_2(C2),
.ALU_Sel(instruccion[19:15]),
.Result(C3));

endmodule
