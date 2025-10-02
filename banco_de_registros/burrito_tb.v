`timescale 1ns / 1ps

module Burrito_tb();

    reg [19:0]instruccion_tb;

    Burrito DUV (
        .instruccion(instruccion_tb)
    );

    initial 
	begin
//			     LES    $9   $6    $11
        instruccion_tb = 20'b00000_01001_00110_01010;
        #100;
//			     MAS    $1   $4    $11
        instruccion_tb = 20'b00010_00001_00100_01011;
        #100;
//			     PAC    $10   $11    $12
        instruccion_tb = 20'b00100_01010_01011_01100;
        #100;
//			     LES    $12   $5    $11
        instruccion_tb = 20'b00011_01100_00101_01011;
        #100;

    end

endmodule

