//Contador de 59 minutos y cronometro

//Modulo

module reloj4 (clk,rst,btn1,btn2,us,ds,um,dm);

	//puertos
	//sentido    tipo  tamaño   nombre
	input                       clk,rst,btn1,btn2;
	output             [3:0]    us,ds,um,dm;
	
	//alambre y registros
	wire					 [3:0]    reloj_us,reloj_ds,reloj_um,reloj_dm,
										 crono_us,crono_ds,crono_um,crono_dm; 
	
	reg								 maquina;
	parameter				reloj=0,cronometro=1;
	
//Asignaciones
	assign us=(maquina==reloj)? reloj_us:crono_us;
	assign ds=(maquina==reloj)? reloj_ds:crono_ds;
	assign um=(maquina==reloj)? reloj_um:crono_um;
	assign dm=(maquina==reloj)? reloj_dm:crono_dm;
	//inciales
	//señales
	//componentes
	
	reloj2    x0   (clk,rst,reloj_us,reloj_ds,reloj_um,reloj_dm);
	crono59m  x1   (clk,rst,btn2,crono_um,crono_dm,crono_us,crono_ds);
	
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
