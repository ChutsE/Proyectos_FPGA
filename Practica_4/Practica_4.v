//- Reloj (00:00-23:59)
//- Calendario (AÑO-MES-DIA)
//- Alarma (HORA ESPECIFICA)

////MODULO///////////////////////////////////////////
//module Practica_4(clk,rst,sal);
//
////Entradas y Salidas
//input            clk,rst;
//output      reg     sal;
//
////Registros
//reg				[25:0]	contador;
//reg							clk2;
////Alambres
//
////ASIGNACIONES/////////////////////////////////////
//
//	initial
//	begin
//		contador=24999995;
//	end
//
//	//señales
//	
//	
//	
//	
//	//Escalador//////////////////////////////////////
//	always@(posedge clk)
//	begin
//		if(rst)
//			begin
//			contador=0;
//			clk2=0;
//			end
//			
//		if(contador==24999999) clk2=1;
//		if(contador==49999999) 
//			begin
//			clk2=0;
//			contador=0;
//			end
//		else
//			contador=contador+1;
//
//	end
//	
//	
//	always@(clk2)
//	begin
//		case (clk2)
//			1: sal=1;
//			0: sal=0;
//		endcase
//	end
//
//endmodule

module Practica_4 (clk,sal);

input clk;
output reg sal;

reg [20:0] cnt;


always @(posedge clk) begin
 cnt<=cnt+1'b1;
 sal<=cnt[1];
end 
endmodule
