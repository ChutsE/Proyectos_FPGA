//Esparza Soto Jesus Eduardo

//MULTIPLEXOR DE 4 ENTRADAS

//MODULO//////////////////////////////////////////////////////
module	mux81_if	(i,s,x);
	//PUERTOS
	//sentido	tipo	tamaño	nombre
	input					[7:0] 	i;
	input					[2:0]		s;
	output		reg				x;
	
	
	//ALAMBRES Y REGISTROS
	//tipo				tamaño	nombre

//ASIGNACIONES////////////////////////////////////////////////
	//señales
	//assign	señal=valor/operacion
	
	//secuenciales
	
		//Condicional if
		
	always@(s)
	begin
//	
//		if(s==0)
//			x=i[0];
//		
//		else if(s==1)
//					x=i[1];
//		
//				else if(s==2)
//						x=i[2];
//		
//						else if(s==3)
//								x=i[3];
//		
//								else if(s==4)
//										x=i[4];
//		
//										else if(s==5)
//												x=i[5];
//		
//												else if(s==6)
//														x=i[6];
//		
//														else if(s==7)
//																x=i[7];
//	
//	end
	
	case(s)
		8'b000: x=i[0];
		8'b001: x=i[1];
		8'b010: x=i[2];
		8'b011: x=i[3];
		8'b100: x=i[4];
		8'b101: x=i[5];
		8'b110: x=i[6];
		8'b111: x=i[7];
	endcase
	end
endmodule