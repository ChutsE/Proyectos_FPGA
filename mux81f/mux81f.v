//Ramos Scalabrin Victoria Hermila
//Esparza Soto Jesus Eduardo
//MULTIPLEXOR DE 8 ENTRADAS

//MODULO//////////////////////////////////////////////////////
module	mux81f	(a,b,c,d,e,f,g,h,s,o);
	//PUERTOS
	//sentido	tipo	tamaño	nombre
	input								a,b,c,d,e,f,g,h;
	input					[2:0]		s;
	output							o;
	//ALAMBRES Y REGISTROS
	//tipo				tamaño	nombre
	

//ASIGNACIONES////////////////////////////////////////////////
	//assign	señal=valor/operacion
	
	assign   o=(a&~s[0]&~s[1]&~s[2])|(b&~s[0]&~s[1]&s[2])|(c&~s[0]&s[1]&~s[2])|(d&~s[0]&s[1]&s[2])|
	           (e&s[0]&~s[1]&~s[2])|(f&s[0]&~s[1]&s[2])|(g&s[0]&s[1]&~s[2])|(h&s[0]&s[1]&s[2]);
	
endmodule
