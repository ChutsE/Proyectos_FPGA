//Ramos Scalabrin Victoria Hermila
//Esparza Soto Jesus Eduardo
//MULTIPLEXOR DE 8 ENTRADAS

//MODULO//////////////////////////////////////////////////////
module	mux81a	(a,b,c,d,e,f,g,h,s,o);
	//PUERTOS
	//sentido	tipo	tamaño	nombre
	input								a,b,c,d,e,f,g,h;
	input					[2:0]		s;
	output							o;
	//ALAMBRES Y REGISTROS
	//tipo				tamaño	nombre
	wire					         x0,x1,x2,x3,x4,x5;

//ASIGNACIONES////////////////////////////////////////////////
	//assign	señal=valor/operacion
	
	assign	x0=(a & ~s[0])|(b & s[0]);
	assign	x1=(c & ~s[0])|(d & s[0]);
	assign	x2=(e & ~s[0])|(f & s[0]);
	assign	x3=(g & ~s[0])|(h & s[0]);
	
	assign   x4=(x0 & ~s[1])|(x1 & s[1]);
	assign   x5=(x2 & ~s[1])|(x3 & s[1]);
	
	assign   o=(x4 & ~s[2])|(x5 & s[2]);
	
endmodule
