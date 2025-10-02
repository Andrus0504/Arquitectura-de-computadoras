`timescale 1ns/1ns

module ALU(
	input [31:0] OP_1,
	input [31:0] OP_2,
	input [2:0] ALU_Sel,
	output reg[31:0] Result
	);


always @* begin
    case (ALU_Sel)
        3'b000: 
		begin 
			Result = OP_1 & OP_2;
		end
        3'b001: 
		begin 
			Result = OP_1 | OP_2;
		end
        3'b010: 
		begin
			Result = OP_1 + OP_2;
		end
	3'b011:
		begin
			Result = OP_1 - OP_2;
		end
	3'b100:
		begin
			Result = OP_1 > OP_2?1:0;
		end
        default: Result = 32'b0;
    endcase
end

endmodule
