//DECODIFICADOR BINARIO-7SEGMENTOS
//JOEL CHAVEZ

//MODULO
module bcd7s(bcd,segmentos);
	//puertos
	//sentido	tipo	tamaño	nombre
	input					[3:0]		bcd;
	output		reg	[6:0]		segmentos;
	//alambres y registros
	
//ASIGNACIONES
	always@(bcd)
	begin
		case(bcd)
							 //gfedcba
			1: segmentos=7'b0000110;
			2: segmentos=7'b1011011;
			3: segmentos=7'b1001111;
			4: segmentos=7'b1100110;
			5: segmentos=7'b1101101;
			6: segmentos=7'b1111101;
			7: segmentos=7'b0000111;
			8: segmentos=7'b1111111;
			9: segmentos=7'b1101111;
			default: segmentos=7'b0111111;
		endcase
	end
endmodule
