module RAM_v2 (din,clk,rst_n,rx_valid,dout,tx_valid); 

//Ports Declaration 
input [9:0] din; 
input clk,rst_n,rx_valid; 

output reg [7:0] dout; 
output reg tx_valid; 

parameter MEM_DEPTH=256; 
parameter ADDR_SIZE=8 ; 

reg [7:0] mem [MEM_DEPTH-1:0] ; 
reg [ADDR_SIZE-1:0] addr; 


always @(posedge clk) begin 
	if(~rst_n) begin 
		dout<=0; 
		tx_valid<=0; 
	end 
	else if(rx_valid)
		case(din[9:8]) 
			2'b00:begin 
				addr<=din[7:0]; 
				tx_valid<=0;
			end 
 			2'b01:begin 
 				mem[addr]<=din[7:0]; 
 				tx_valid<=0;
 			end 
			2'b10:begin 
				addr<=din[7:0];
				tx_valid<=0;
			end
			2'b11: begin 
				dout<=mem[addr]; 
				tx_valid<=1; 
			end 
		endcase 
	// Ensure `tx_valid` is reset when not reading 
	if(din[9:8]!=2'b11)
		tx_valid<=0; 

end 
endmodule 


