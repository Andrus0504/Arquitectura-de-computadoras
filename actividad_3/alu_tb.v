`timescale 1ns/1ns

module ALU_TB;
    reg [7:0] A;
    reg [7:0] B;
    reg [3:0] OP;
    wire [7:0] Result;
    wire Zero;
    wire Carry;
    
    ALU dut(
	.A(A),
	.B(B),
	.OP(OP),
	.Result(Result),
	.Zero(Zero),
	.Carry(Carry));
    
    initial begin
        $monitor("Time=%t | A=%d, B=%d, OP=%b | Result=%d, Zero=%b, Carry=%b", 
                 $time, A, B, OP, Result, Zero, Carry);
        
        // Prueba de suma
        A = 8'd10; B = 8'd5; OP = 4'b0000; #10;
        
        // Prueba de resta
        A = 8'd10; B = 8'd5; OP = 4'b0001; #10;
        
        // Prueba de AND
        A = 8'b10101010; B = 8'b11001100; OP = 4'b0010; #100;
        
        // Prueba de OR
        A = 8'b10101010; B = 8'b11001100; OP = 4'b0011; #10;
        
        // Prueba de XOR
        A = 8'b10101010; B = 8'b11001100; OP = 4'b0100; #10;
        
        // Prueba de comparación (igualdad)
        A = 8'd10; B = 8'd10; OP = 4'b0101; #10;
        
        // Prueba de comparación (mayor que)
        A = 8'd15; B = 8'd10; OP = 4'b0110; #10;
        
        // Prueba de desplazamiento izquierda
        A = 8'b10000000; OP = 4'b0111; #10;
        
        // Prueba de desplazamiento derecha
        A = 8'b00000001; OP = 4'b1000; #10;
        
        $finish;
    end
endmodule
