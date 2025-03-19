module SPI_Slave (MOSI,MISO,SS_n,clk,rst_n,rx_data,rx_valid,tx_data,tx_valid); 

//Ports declaration 
input MOSI,SS_n,clk,rst_n,tx_valid; 
input [7:0] tx_data;
output reg MISO,rx_valid; 
output reg [9:0] rx_data;

//Internal signals 
reg [3:0] counter;  
reg [2:0] cs,ns; 
reg read_addr;

parameter IDLE      = 3'b000;  
parameter CHK_CMD   = 3'b001;  
parameter WRITE     = 3'b010; 
parameter READ_ADD  = 3'b011;  
parameter READ_DATA = 3'b100;  

//State Memory 
always @(posedge clk) begin 
	if(~rst_n)   
		cs<=IDLE;  
	else 
		cs<=ns; 
end  
//Next State Logic 
always @(*) begin 
	case(cs)  
	IDLE: 
		if(~SS_n)
			ns=CHK_CMD; 
		else 
			ns=IDLE ; 
	CHK_CMD: begin  
		if(SS_n)  
			ns=IDLE;
		else begin
			if(~MOSI)
				ns=WRITE;  
			else begin
				if(read_addr) begin
					ns=READ_DATA; 
				end
				else begin
					ns=READ_ADD; 
				end
			end
		end
	end 
	WRITE:   
		if(SS_n)
			ns=IDLE; 
		else 
			ns=WRITE; 

	READ_DATA:  
		if(SS_n)
			ns=IDLE; 
		else 
			ns=READ_DATA; 
	READ_ADD: 
		if(SS_n)
			ns=IDLE; 
		else 
			ns=READ_ADD; 
	default :  
		ns=IDLE; 
	endcase
end 
//Output logic 
always @(posedge clk) begin 
	if(~rst_n) begin 
		rx_data<=0;
		rx_valid<=0;
		counter<=0; 
		MISO<=0;
        read_addr <= 0; // Initialize read_addr properly
	end 
	else begin 
		case(cs)
			IDLE:begin 
			rx_data<=0;
			rx_valid<=0;
			counter<=0; 
			MISO<=0;
			end 
			CHK_CMD : begin 
				rx_data<=0;
				rx_valid<=0;
				counter<=0; 
			end 
			WRITE : begin 
				rx_data[9-counter]<=MOSI;
				counter<=counter+1;  
				if(counter==9) begin 
					counter<=0; 
					rx_valid<=1; 
				end 
			end 
			READ_ADD: begin 
				rx_data[9-counter]<=MOSI; 
				counter<=counter+1; 
				if(counter==9) begin 
					counter<=0; 
					rx_valid<=1; 
					read_addr<=1; //Reading address is done so it go to read data 
				end 
			end 
			READ_DATA: begin 
				/*Dummy bits part*/ 
				rx_data[9-counter]<=MOSI; 
				counter<=counter+1; 
				if(counter==9) begin 
					counter<=0; 
					rx_valid<=1;
				end 
				/*Actual reading from memory*/ 
				if(tx_valid) begin 
					//MISO<=(counter<=8)? tx_data[8-counter] :0;  
					if(counter<=8) 
						MISO<=tx_data[8-counter]; 
					else 
						MISO<=0; 
					if(counter==8) //Finished reading all data , so we can read new address 
						read_addr<=0;
				end 
				else 
					MISO<=0;
			end 
			default : begin 
				rx_data<=0;
				rx_valid<=0;
				counter<=0; 
				MISO<=0;
			end 
		endcase 
	end 

end 
endmodule 

