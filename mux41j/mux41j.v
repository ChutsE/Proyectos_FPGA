//Ramos Scalabrin Victoria Hermila
//Esparza Soto Jesus Eduardo
//MULTIPLEXOR DE 4 ENTRADAS

//MODULO//////////////////////////////////////////////////////
module	mux41j	(a,b,c,d,s,x);
	//PUERTOS
	//sentido	tipo	tamaño	nombre
	input								a,b,c,d;
	input					[1:0]		s;
	output							x;
	//ALAMBRES Y REGISTROS
	//tipo				tamaño	nombre
	wire					         x0,x1;

//ASIGNACIONES////////////////////////////////////////////////
	//señales
	//assign	señal=valor/operacion
	
	//componente
	//nombre   etiqueta   (puertos)
	mux21a     u0         (a,b,s[0],x0);  
	mux21a     u1         (c,d,s[0],x1);
	mux21a     u2         (x0,x1,s[1],x);
	//secuenciales
	

endmodule
