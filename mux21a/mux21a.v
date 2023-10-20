// Esparza Soto
//Multiplexor de 2 entradas

//MODULO//////

module mux21a (a,b,s,x);
	
	input a,b,s;
	
	
	output  reg x;
	
	
	//assign x=(a&~s)|(b&s);
	
	//Comportamental Secuencial If
	
	always@(s) //INCIA CUANDO S TENGA ALGUN CAMBIO
	begin 
		if(s==0)
			x=a;
		else
			x=b;
	end
//	
//	//Comportamental secuencial case
//	
////	always@(s)
////	begin
////		case(s)
////			0: x=a;
////			1: x=b;
////		endcase
////	end
	
	
endmodule