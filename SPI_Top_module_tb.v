module SPI_Top_module_tb ();  

//Signals Declaration 
reg MOSI,SS_n,clk,rst_n; 
wire MISO; 

reg [9:0] Input; 
//DUT instantiation 
SPI_Top_module DUT (.MOSI(MOSI),.MISO(MISO),.SS_n(SS_n),.rst_n(rst_n),.clk(clk)); 

//Clock generation 
initial begin 
	clk=1'b0; 
	forever 
	#20 clk=~clk;
end 

integer i ; 
//Test Stimulus generation 
initial begin 
	$readmemh("mem.dat",DUT.U2.mem); 
/*---------Test Scenario 1 - Reset ----------*/ 
	rst_n=1'b0; 
	SS_n=1'b1; 
	MOSI=0;
	repeat (1) @(negedge clk); 
	if(MISO!=0) begin 
		$display("Error in reset functionality"); 
		$stop; 
	end
	rst_n=1;
	SS_n=0; 
	@(negedge clk); 

/*--------Test Scenario 2 - Write Address-------*/ 
	Input=10'b00_1100_1011;
	for (i = 0; i < 10; i = i + 1) begin
		@(negedge clk);
		MOSI=Input[9-i];
	end
	repeat (1) @(negedge clk);
	SS_n=1;
	repeat (2) @(negedge clk);

/*-------Test Scenario 3 - Write Data----------*/ 
	SS_n=0;
	MOSI=0; 
	@(negedge clk); 
	Input=10'b01_1111_0011; //Data that will be written  
	for (i = 0; i < 10; i = i + 1) begin
		@(negedge clk);
		MOSI=Input[9-i];
	end
	repeat (1) @(negedge clk);
	SS_n=1;
	repeat (2) @(negedge clk);
/*--------Test Scenario 4 - Read from Address----*/ 
	SS_n=0; 
	MOSI=1; 
	@(negedge clk); 
	Input=10'b10_1100_1011; 
	for (i = 0; i < 10; i = i + 1) begin
		@(negedge clk);
		MOSI=Input[9-i];
	end
	repeat (1) @(negedge clk);
	SS_n=1;
	repeat (2) @(negedge clk);
/*--------Test Scenario 5 - Read Data -----*/ 
	SS_n=0; 
	MOSI=1; 
	@(negedge clk); 
	Input=10'b11_0000_1111;  //Dummy bits 
	for (i = 0; i < 10; i = i + 1) begin
		@(negedge clk);
		MOSI=Input[9-i];
	end
	repeat (9) @(negedge clk); //Waiting for MISO to get out all bits 
	SS_n=1;
	repeat (3) @(negedge clk);
/*--------Test Scenario 6 - Read from Address again ----*/ 
	SS_n=0; 
	MOSI=1; 
	@(negedge clk); 
	Input=10'b10_1110_1011; //Loading new address 
	for (i = 0; i < 10; i = i + 1) begin
		@(negedge clk);
		MOSI=Input[9-i];
	end
	repeat (1) @(negedge clk);
	SS_n=1;
	repeat (2) @(negedge clk);
	$stop; 

end 
endmodule 

