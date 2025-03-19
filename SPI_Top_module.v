module SPI_Top_module (MOSI,MISO,SS_n,rst_n,clk); 

//Ports Declaration 
input MOSI,SS_n,clk,rst_n; 
output MISO; 

/*-----Internal Signals------*/ 
//Tramsmitting data from SPI Slave to RAM
wire [9:0] rx_data;
wire rx_valid; 

//SPI Slave Recieving from RAM  
wire tx_valid; 
wire [7:0] tx_data; 


//Modules Instantiation 
SPI_Slave U1 (.MOSI(MOSI),.MISO(MISO),.SS_n(SS_n),.clk(clk),.rst_n(rst_n),.rx_data(rx_data),
				.rx_valid(rx_valid),.tx_data(tx_data),.tx_valid(tx_valid)); 

RAM_v2 U2 (.din(rx_data),.clk(clk),.rst_n(rst_n),.rx_valid(rx_valid),.dout(tx_data),.tx_valid(tx_valid)); 


endmodule 


