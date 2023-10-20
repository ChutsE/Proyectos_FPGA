//Ramos Scalabrin Victoria Hermila
//Esparza Soto Jesus Eduardo
//Sumador Completo de 3 bit

//Mmodulo///
module sum3b (a,b,ci,so,co);
	//Puertos
	//sentido  tipo   tamaño   nombre 
	input 			   [2:0]     a,b;
	input                       ci;
	output			   [2:0]     so;
	output                      co;
	//Alambres
	//tipo       tamaño  nombre
	wire			  			n0,n1;
	
	//Registros

//Asignaciones///
	//señales

	//Componente
	//nombre   etiqueta (puertos)
	sum1b      x0       (.a(a[0]),.b(b[0]),.ci(ci),.so(so[0]),.co(n0));
	sum1b      x1       (.a(a[1]),.b(b[1]),.ci(n0),.so(so[1]),.co(n1));
	sum1b      x2       (.a(a[2]),.b(b[2]),.ci(n1),.so(so[2]),.co(co));
	
	//Secuenciales
	
endmodule 