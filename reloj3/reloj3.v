//Jesus Eduardo Esparza Soto
//Contador de 59 minutos y cronometro

//Modulo

module reloj3 (clk,rst,btn1,btn2,uni,dec);

	//puertos
	//sentido    tipo  tamaño   nombre
	input                       clk,rst,btn1,btn2;
	output             [3:0]    uni,dec;
	
	//alambre y registros
	wire					 [3:0]    reloju,relojd,cronou,cronod; 
	
	reg								 maquina;
	parameter				reloj=0,cronometro=1;
	
//Asignaciones
	assign uni=(maquina==reloj)? reloju:cronou;
	assign dec=(maquina==reloj)? relojd:cronod;
	//inciales
	//señales
	//componentes
	
	reloj1  x0   (clk,rst,reloju,relojd);
	crono9  x1   (clk,rst,btn2,cronou,cronod);
	
	//secuenciales
	
	always@(posedge clk)
	begin
		if(rst)
			maquina=reloj;
		else
			case(maquina)
				reloj:
					if(btn1)
						maquina=cronometro;
				cronometro:
					if(btn1)
						maquina=reloj;
			endcase
	end
	
endmodule
