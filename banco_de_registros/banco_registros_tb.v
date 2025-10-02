module bancoRegistro_tb;

reg [0:4] AR_1;
reg[0:4]AR_2;
reg [0:4]AW;
reg [0:31]DATA_IN;
reg WRITEREG;
wire [0:31] DR_1;
wire [0:31] DR_2;

//reg [31:0] BANCO [0:31];

bancoRegistro dut(
	.AR_1(AR_1),
	.AR_2(AR_2),
	.AW(AW),
	.DATA_IN(DATA_IN)
	.WRITEREG(WRITEREG),
	.DR_1(DR_1),
	.DR_2(DR_2));

initial begin

