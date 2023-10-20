//JESUS EDUARDO
//CONTROL DE SEMAFORO


//MODULO
module semaforo(clk,rst,r,a,v);
	//puertos
	//sentido	tipo	tamaño	nombre
	input								clk,rst;
	output		reg				r,a,v;
	
	//alambres y registros
	reg					[1:0]		maquina;
	parameter	alto=0, siga=1, preventivo=2;
	reg					[6:0]    cont;


//ASIGNACIONES
	//iniciales
	//señales
	//componentes
	//secuenciales
	
	//control de las transiciones////////////////
	always@(posedge clk)
	begin
		if(rst)
			maquina=alto;
			cont=0;
		else
			case(maquina)
				alto:
					begin
						if(cont==199)
						begin
							maquina=siga;
							cont=0;
						end
						else
							cont=cont+1;
					end
				siga: 
					begin
						if(cont==89)
						begin
							maquina=preventivo;
							cont=0;
						end
						else
							cont=cont+1;
					end
				preventivo: 
					begin
						if(cont==2)
						begin
							maquina=alto;
							cont=0;
						end
						else
							cont=cont+1;
					end
			endcase
	
	end
	
	/////////////////////////////////////////////
	
		//control de las salidas//////////////////
	always@(posedge clk)
	begin
			case(maquina)
				alto: 
					begin
						r=1;
						a=0;
						v=0;
					end
				siga: 
					begin
						r=0;
						a=0;
						v=1;
					end
				preventivo: 
					begin
						r=0;
						a=1;
						v=0;
					end
			endcase
	
	end
	
	/////////////////////////////////////////////
	endmodule
	