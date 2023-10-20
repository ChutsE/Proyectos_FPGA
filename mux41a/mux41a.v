//Ramos Scalabrin Victoria Hermila
//Esparza Soto Jesus Eduardo
//MULTIPLEXOR DE 4 ENTRADAS

//MODULO//////////////////////////////////////////////////////
module	mux41a	(a,b,c,d,s,x);
	//PUERTOS
	//sentido	tipo	tamaño	nombre
	input								a,b,c,d;
	input					[1:0]		s;
	output		reg				x;
	//ALAMBRES Y REGISTROS
	//tipo				tamaño	nombre
	//wire					         x0,x2,x3,x4,x5,x6,x7,x8,x9,x10;

//ASIGNACIONES////////////////////////////////////////////////
	//assign	señal=valor/operacion
	//assign	x=(a & ~s[1] & ~s[0])|(b & ~s[1] & s[0])|(c & s[1] & ~s[0])|
	//	(d & s[1] & s[0]);
	
//	assign x0=~s[0];
//	assign x2=a&x0;
//	assign x3=b&s[0];
//	assign x4=c&x0;
//	assign x5=d&s[0];
//	assign x6=x2|x3;
//	assign x7=x4|x5;
//	assign x8=~s[1];
//	assign x9=x6&x8;
//	assign x10=s[1]&x7;
//	assign o=x9|x10;
	


//Comportamental////////////////////////////

//Secuecnial IF
//
//	always@(s)
//	begin
//		if(s==0)
//		x=a;
//		else if(s==1)
//		x=b;
//		else if(s==2)
//		x=c;
//		else 
//		x=d;
//	end

//Secuencial Case

//	always@(s)
//	begin 
//		case(s)
//			0: x=a;
//			1: x=b;
//			2: x=c;
//			3: x=d;
//		endcase
//	end
//	


	endmodule