
//bloque para multiplicador de 5 bits

//Modulo///
module bloque_mul5b (X,Y,Sx,Si,So,Co);
	//Puertos
	//sentido  tipo   tamaño   nombre 
	input 			    [4:0]    X;
	input              [3:0]    Sx;
	input                       Y,Si;
	output			    [4:0]    So;
	output                      Co;
	//Alambres
	wire               [3:0]    Cx;
		
	//Registros

//Asignaciones///
	//señales

	
	//Componente
	//nombre   etiqueta (puertos)
	mul1b      n0       (.si(Sx[0]),.x(X[0]),.y(Y),.ci(0)    ,.so(So[0]),.co(Cx[0]));
	mul1b      n1       (.si(Sx[1]),.x(X[1]),.y(Y),.ci(Cx[0]),.so(So[1]),.co(Cx[1]));
	mul1b      n2       (.si(Sx[2]),.x(X[2]),.y(Y),.ci(Cx[1]),.so(So[2]),.co(Cx[2]));
	mul1b      n3       (.si(Sx[3]),.x(X[3]),.y(Y),.ci(Cx[2]),.so(So[3]),.co(Cx[3]));
	mul1b      n4       (.si(Si)   ,.x(X[4]),.y(Y),.ci(Cx[3]),.so(So[4]),.co(Co));
	
	//Secuenciales
endmodule 
