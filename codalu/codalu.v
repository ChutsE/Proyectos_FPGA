//Jesus Eduardo Esparza Soto
//Contador de decenas

//Modulo

module codalu (clk,rst,ctrl,sal);

	//puertos
	//sentido    tipo  tamaño   nombre
	input                       clk,rst,ctrl;
	output       reg   [3:0]         sal;
	
	//alambre y registros
	reg					 [3:0]    maquina;
	parameter e0=0,e1=1,e2=2,e3=3,e4=4,e5=5,e6=6,e7=7,e8=8;
	
//Asignaciones

	//señales
	//componentes
	//secuenciales
	
	//control de transiciones////////////////////////////////
	
	always@(posedge clk)
	begin
		if(rst)
			maquina=e0;
		else
			case(maquina)
				e0: maquina=e1;
				e1: maquina=e2;
				e2: 
					begin
						if(ctrl)
						maquina=e4;
						else
						maquina=e3;
					end
				e3: maquina=e4;
				e4: maquina=e5;
				e5: maquina=e6;
				e6: 
					begin
						if(ctrl)
						maquina=e1;
						else
						maquina=e7;
					end
				e7: 
					begin
						if(ctrl)
						maquina=e1;
						else
						maquina=e8;
					end
				e8: 
					begin
						if(ctrl)
						maquina=e1;
						else
						maquina=e0;
					end
			endcase
	end
	
	////////////////////////////////////////////////////////
	
	//control de salidas////////////////////////////////
	
	always@(posedge clk)
	begin
			case(maquina)
				e0: sal=2;
				e1: sal=1;
				e2: sal=5;
				e3: sal=4;
				e4: sal=3;
				e5: sal=1;
				e6: sal=1;
				e7: sal=6;
				e8: sal=4;
			endcase
	end
	
	////////////////////////////////////////////////////////
endmodule
