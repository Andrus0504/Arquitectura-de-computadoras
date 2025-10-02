`timescale 1ns/1ns

module ALU(
    input [7:0] A,
    input [7:0] B,
    input [3:0] OP,
    output reg [7:0] Result,
    output reg Zero,
    output reg Carry
);

always @* begin
    Zero = 0;
    Carry = 0;
    
    case(OP)
        // Suma
        4'b0000: {Carry, Result} = A + B;
        
        // Resta
        4'b0001: {Carry, Result} = A - B;
        
        // AND
        4'b0010: Result = A & B;
        
        // OR
        4'b0011: Result = A | B;
        
        // XOR
        4'b0100: Result = A ^ B;
        
        // Comparación: igualdad
        4'b0101: Result = (A == B) ? 8'd1 : 8'd0;
        
        // Comparación: mayor que
        4'b0110: Result = (A > B) ? 8'd1 : 8'd0;
        
        // Desplazamiento izquierda
        4'b0111: {Carry, Result} = {A, 1'b0};
        
        // Desplazamiento derecha
        4'b1000: {Result, Carry} = {1'b0, A};
        
        // Multiplicación (opcional)
        4'b1001: Result = A * B;
        
        default: Result = 8'b0;
    endcase
    
    // Flag Zero
    Zero = (Result == 8'b0) ? 1'b1 : 1'b0;
end

endmodule
