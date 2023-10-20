//multiplicador de 10 bits

//Modulo///
module mul10_t (x,y,z);
	//Puertos
	//sentido  tipo   tamaño   nombre 
	input 			    [9:0]    y,x;
	output             [19:0]    z;
	//Registros 
	wire               [19:0]    r0,r1,r2,r3,r4,r5,r6,r7,r8,r9;
		
		//Comportamental Concurrente Ternaria
		
//assign señal=condicion? cierto:falso

	assign r0=y[0]? {10'b0000000000,x}:0;
	assign r1=y[1]? {9'b000000000,x,1'b0}:0;
	assign r2=y[2]? {8'b00000000,x,2'b00}:0;
	assign r3=y[3]? {7'b0000000,x,3'b000}:0;
	assign r4=y[4]? {6'b000000,x,4'b0000}:0;
	assign r5=y[5]? {5'b00000,x,5'b00000}:0;
	assign r6=y[6]? {4'b0000,x,6'b000000}:0;
	assign r7=y[7]? {3'b000,x,7'b0000000}:0;
	assign r8=y[8]? {2'b00,x,8'b00000000}:0;
	assign r9=y[9]? {1'b0,x,9'b000000000}:0;

	assign z=r0+r1+r2+r3+r4+r5+r6+r7+r8+r9;
endmodule 

