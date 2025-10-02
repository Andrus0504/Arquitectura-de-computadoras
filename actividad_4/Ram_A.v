module RAM_A(
	input [7:0] Dir,
	input [7:0] Dato_e, 
	input EN,
	output reg[7:0] Dato_s);

reg [0:11][7:0] RAM_A;
//inicializacion de datos
initial
	begin
		RAM_A[0]=8'd90;
		RAM_A[1]=8'd80;
		RAM_A[2]=8'd70;
		RAM_A[3]=8'd60;
		RAM_A[4]=8'd50;
		RAM_A[5]=8'd40;
		RAM_A[6]=8'd30;
		RAM_A[7]=8'd20;
		RAM_A[8]=8'd10;
		RAM_A[9]=8'd100;
		RAM_A[10]=8'd101;
		RAM_A[11]=8'd102;
	end
//Lectura de memoria
always @*	
	begin
		if(EN)//Escribir
			begin
			RAM_A[Dir]=Dato_e;
			end
		else//Leer
			begin
			Dato_s=RAM_A[Dir];
			end
	end
	
endmodule
