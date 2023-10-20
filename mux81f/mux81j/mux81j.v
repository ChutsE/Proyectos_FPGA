//Ramos Scalabrin Victoria Hermila
//Esparza Soto Jesus Eduardo
//MULTIPLEXOR DE 4 ENTRADAS

//MODULO//////////////////////////////////////////////////////
module	mux81j	(i,s,x);
	//PUERTOS
	//sentido	tipo	tamaño	nombre
	input					[7:0] 	i;
	input					[2:0]		s;
	output							x;
	//ALAMBRES Y REGISTROS
	//tipo				tamaño	nombre
	wire					[5:0]    X;

//ASIGNACIONES////////////////////////////////////////////////
	//señales
	//assign	señal=valor/operacion
	
	//componente
	//nombre   etiqueta   (puertos)
	mux21a     u0         (.a(i[0]),.b(i[1]),.s(s[0]),.x(X[0]));  
	mux21a     u1         (.a(i[2]),.b(i[3]),.s(s[0]),.x(X[1]));   
	mux21a     u2         (.a(i[4]),.b(i[5]),.s(s[0]),.x(X[2]));   
	mux21a     u3         (.a(i[6]),.b(i[7]),.s(s[0]),.x(X[3]));  
	mux21a     u4         (.a(X[0]),.b(X[1]),.s(s[1]),.x(X[4]));   
	mux21a     u5         (.a(X[2]),.b(X[3]),.s(s[1]),.x(X[5]));  
	mux21a     u6         (.a(X[4]),.b(X[5]),.s(s[2]),.x(x));    
	
	//secuenciales
	

endmodule
