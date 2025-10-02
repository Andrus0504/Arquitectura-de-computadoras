module RAM_S(input clk, 
	input [7:0] Dir, 
	input [7:0] Dato_e, 
	input EN, 
	output reg[7:0] Dato_s);
//Cables y registros

reg [0:11][7:0] RAM_S;
//inicializacion de datos
initial
	begin
		RAM_S[0]=8'd90;
		RAM_S[1]=8'd80;
		RAM_S[2]=8'd70;
		RAM_S[3]=8'd60;
		RAM_S[4]=8'd50;
		RAM_S[5]=8'd40;
		RAM_S[6]=8'd30;
		RAM_S[7]=8'd20;
		RAM_S[8]=8'd10;
		RAM_S[9]=8'd100;
		RAM_S[10]=8'd101;
		RAM_S[11]=8'd102;
	end
//Lectura de memoria
always @(clk)	
	begin
		if(EN)//Escribir
			begin
			RAM_S[Dir]=Dato_e;
			end
		else//Leer
			begin
			Dato_s = RAM_S[Dir];
			end
	end
	
endmodule
