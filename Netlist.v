// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Fri Mar 14 22:20:18 2025
// Host        : Sandy running 64-bit major release  (build 9200)
// Command     : write_verilog {D:/CUFE/Kareem_Waseem/Project 2/project_1.v}
// Design      : SPI_Top_module
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7a35ticpg236-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module RAM_v2
   (tx_valid,
    MISO_reg,
    MISO_reg_0,
    CLK,
    rst_n_IBUF,
    \rx_data_reg[8] ,
    rst_n,
    D,
    WEA,
    tx_valid_reg_0,
    Q,
    E);
  output tx_valid;
  output MISO_reg;
  output MISO_reg_0;
  input CLK;
  input rst_n_IBUF;
  input \rx_data_reg[8] ;
  input rst_n;
  input [7:0]D;
  input [0:0]WEA;
  input tx_valid_reg_0;
  input [1:0]Q;
  input [0:0]E;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK;
  wire [7:0]D;
  wire [0:0]E;
  wire MISO_reg;
  wire MISO_reg_0;
  wire [1:0]Q;
  wire [0:0]WEA;
  wire [7:0]addr;
  wire rst_n;
  wire rst_n_IBUF;
  wire \rx_data_reg[8] ;
  wire [7:0]tx_data;
  wire tx_valid;
  wire tx_valid_reg_0;

  GND GND
       (.G(\<const0> ));
  LUT6 #(
    .INIT(64'hAACCFFF0AACC00F0)) 
    MISO_i_4
       (.I0(tx_data[1]),
        .I1(tx_data[3]),
        .I2(tx_data[0]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(tx_data[2]),
        .O(MISO_reg_0));
  LUT6 #(
    .INIT(64'hAACCFFF0AACC00F0)) 
    MISO_i_6
       (.I0(tx_data[5]),
        .I1(tx_data[7]),
        .I2(tx_data[4]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(tx_data[6]),
        .O(MISO_reg));
  VCC VCC
       (.P(\<const1> ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(D[0]),
        .Q(addr[0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(D[1]),
        .Q(addr[1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(D[2]),
        .Q(addr[2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(D[3]),
        .Q(addr[3]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(D[4]),
        .Q(addr[4]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[5] 
       (.C(CLK),
        .CE(E),
        .D(D[5]),
        .Q(addr[5]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[6] 
       (.C(CLK),
        .CE(E),
        .D(D[6]),
        .Q(addr[6]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[7] 
       (.C(CLK),
        .CE(E),
        .D(D[7]),
        .Q(addr[7]),
        .R(\<const0> ));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "U2/mem" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    mem_reg
       (.ADDRARDADDR({\<const1> ,\<const1> ,addr,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .ADDRBWRADDR({\<const1> ,\<const1> ,addr,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .CLKARDCLK(CLK),
        .CLKBWRCLK(CLK),
        .DIADI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,D}),
        .DIBDI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .DIPADIP({\<const0> ,\<const0> }),
        .DIPBDIP({\<const0> ,\<const0> }),
        .DOBDO(tx_data),
        .ENARDEN(rst_n_IBUF),
        .ENBWREN(\rx_data_reg[8] ),
        .REGCEAREGCE(\<const0> ),
        .REGCEB(\<const0> ),
        .RSTRAMARSTRAM(\<const0> ),
        .RSTRAMB(rst_n),
        .RSTREGARSTREG(\<const0> ),
        .RSTREGB(\<const0> ),
        .WEA({WEA,WEA}),
        .WEBWE({\<const0> ,\<const0> ,\<const0> ,\<const0> }));
  FDRE #(
    .INIT(1'b0)) 
    tx_valid_reg
       (.C(CLK),
        .CE(\<const1> ),
        .D(tx_valid_reg_0),
        .Q(tx_valid),
        .R(\<const0> ));
endmodule

module SPI_Slave
   (MISO_OBUF,
    rx_valid_reg_0,
    Q,
    mem_reg,
    D,
    tx_valid_reg,
    WEA,
    E,
    clk_IBUF_BUFG,
    SS_n_IBUF,
    mem_reg_0,
    mem_reg_1,
    tx_valid,
    MOSI_IBUF,
    rst_n_IBUF);
  output MISO_OBUF;
  output rx_valid_reg_0;
  output [1:0]Q;
  output mem_reg;
  output [7:0]D;
  output tx_valid_reg;
  output [0:0]WEA;
  output [0:0]E;
  input clk_IBUF_BUFG;
  input SS_n_IBUF;
  input mem_reg_0;
  input mem_reg_1;
  input tx_valid;
  input MOSI_IBUF;
  input rst_n_IBUF;

  wire \<const1> ;
  wire [7:0]D;
  wire [0:0]E;
  wire \FSM_onehot_cs[0]_i_1_n_0 ;
  wire \FSM_onehot_cs[1]_i_1_n_0 ;
  wire \FSM_onehot_cs[2]_i_1_n_0 ;
  wire \FSM_onehot_cs[3]_i_1_n_0 ;
  wire \FSM_onehot_cs[4]_i_2_n_0 ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_cs_reg_n_0_[0] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_cs_reg_n_0_[1] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_cs_reg_n_0_[2] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_cs_reg_n_0_[3] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_cs_reg_n_0_[4] ;
  wire MISO_OBUF;
  wire MISO_i_1_n_0;
  wire MISO_i_2_n_0;
  wire MISO_i_3_n_0;
  wire MISO_i_5_n_0;
  wire MOSI_IBUF;
  wire [1:0]Q;
  wire SS_n_IBUF;
  wire [0:0]WEA;
  wire clk_IBUF_BUFG;
  wire [3:0]counter;
  wire \counter[3]_i_2_n_0 ;
  wire \counter_reg_n_0_[2] ;
  wire \counter_reg_n_0_[3] ;
  wire mem_reg;
  wire mem_reg_0;
  wire mem_reg_1;
  wire read_addr_i_1_n_0;
  wire read_addr_i_2_n_0;
  wire read_addr_i_3_n_0;
  wire read_addr_reg_n_0;
  wire rst_n_IBUF;
  wire [9:8]rx_data;
  wire \rx_data[0]_i_1_n_0 ;
  wire \rx_data[1]_i_1_n_0 ;
  wire \rx_data[2]_i_1_n_0 ;
  wire \rx_data[3]_i_1_n_0 ;
  wire \rx_data[3]_i_2_n_0 ;
  wire \rx_data[4]_i_1_n_0 ;
  wire \rx_data[5]_i_1_n_0 ;
  wire \rx_data[6]_i_1_n_0 ;
  wire \rx_data[7]_i_1_n_0 ;
  wire \rx_data[7]_i_2_n_0 ;
  wire \rx_data[7]_i_3_n_0 ;
  wire \rx_data[8]_i_1_n_0 ;
  wire \rx_data[8]_i_2_n_0 ;
  wire \rx_data[9]_i_1_n_0 ;
  wire \rx_data[9]_i_2_n_0 ;
  wire \rx_data[9]_i_3_n_0 ;
  wire rx_valid;
  wire rx_valid_i_1_n_0;
  wire rx_valid_reg_0;
  wire tx_valid;
  wire tx_valid_reg;

  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \FSM_onehot_cs[0]_i_1 
       (.I0(\FSM_onehot_cs_reg_n_0_[3] ),
        .I1(\FSM_onehot_cs_reg_n_0_[0] ),
        .I2(\FSM_onehot_cs_reg_n_0_[2] ),
        .I3(\FSM_onehot_cs_reg_n_0_[4] ),
        .I4(\FSM_onehot_cs_reg_n_0_[1] ),
        .I5(SS_n_IBUF),
        .O(\FSM_onehot_cs[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_cs[1]_i_1 
       (.I0(\FSM_onehot_cs_reg_n_0_[0] ),
        .I1(SS_n_IBUF),
        .O(\FSM_onehot_cs[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0F02)) 
    \FSM_onehot_cs[2]_i_1 
       (.I0(\FSM_onehot_cs_reg_n_0_[1] ),
        .I1(MOSI_IBUF),
        .I2(SS_n_IBUF),
        .I3(\FSM_onehot_cs_reg_n_0_[2] ),
        .O(\FSM_onehot_cs[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00FF0080)) 
    \FSM_onehot_cs[3]_i_1 
       (.I0(read_addr_reg_n_0),
        .I1(\FSM_onehot_cs_reg_n_0_[1] ),
        .I2(MOSI_IBUF),
        .I3(SS_n_IBUF),
        .I4(\FSM_onehot_cs_reg_n_0_[3] ),
        .O(\FSM_onehot_cs[3]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_onehot_cs[4]_i_1 
       (.I0(rst_n_IBUF),
        .O(rx_valid_reg_0));
  LUT5 #(
    .INIT(32'h00FF0020)) 
    \FSM_onehot_cs[4]_i_2 
       (.I0(\FSM_onehot_cs_reg_n_0_[1] ),
        .I1(read_addr_reg_n_0),
        .I2(MOSI_IBUF),
        .I3(SS_n_IBUF),
        .I4(\FSM_onehot_cs_reg_n_0_[4] ),
        .O(\FSM_onehot_cs[4]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "CHK_CMD:00010,WRITE:00100,READ_DATA:01000,READ_ADD:10000,IDLE:00001" *) 
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_cs_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\FSM_onehot_cs[0]_i_1_n_0 ),
        .Q(\FSM_onehot_cs_reg_n_0_[0] ),
        .S(rx_valid_reg_0));
  (* FSM_ENCODED_STATES = "CHK_CMD:00010,WRITE:00100,READ_DATA:01000,READ_ADD:10000,IDLE:00001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_cs_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\FSM_onehot_cs[1]_i_1_n_0 ),
        .Q(\FSM_onehot_cs_reg_n_0_[1] ),
        .R(rx_valid_reg_0));
  (* FSM_ENCODED_STATES = "CHK_CMD:00010,WRITE:00100,READ_DATA:01000,READ_ADD:10000,IDLE:00001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_cs_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\FSM_onehot_cs[2]_i_1_n_0 ),
        .Q(\FSM_onehot_cs_reg_n_0_[2] ),
        .R(rx_valid_reg_0));
  (* FSM_ENCODED_STATES = "CHK_CMD:00010,WRITE:00100,READ_DATA:01000,READ_ADD:10000,IDLE:00001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_cs_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\FSM_onehot_cs[3]_i_1_n_0 ),
        .Q(\FSM_onehot_cs_reg_n_0_[3] ),
        .R(rx_valid_reg_0));
  (* FSM_ENCODED_STATES = "CHK_CMD:00010,WRITE:00100,READ_DATA:01000,READ_ADD:10000,IDLE:00001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_cs_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\FSM_onehot_cs[4]_i_2_n_0 ),
        .Q(\FSM_onehot_cs_reg_n_0_[4] ),
        .R(rx_valid_reg_0));
  LUT2 #(
    .INIT(4'hE)) 
    MISO_i_1
       (.I0(\FSM_onehot_cs_reg_n_0_[0] ),
        .I1(\FSM_onehot_cs_reg_n_0_[3] ),
        .O(MISO_i_1_n_0));
  LUT6 #(
    .INIT(64'h404444C0400000C0)) 
    MISO_i_2
       (.I0(\counter_reg_n_0_[3] ),
        .I1(MISO_i_3_n_0),
        .I2(mem_reg_0),
        .I3(\counter_reg_n_0_[2] ),
        .I4(MISO_i_5_n_0),
        .I5(mem_reg_1),
        .O(MISO_i_2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    MISO_i_3
       (.I0(\FSM_onehot_cs_reg_n_0_[3] ),
        .I1(tx_valid),
        .O(MISO_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    MISO_i_5
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(MISO_i_5_n_0));
  FDRE #(
    .INIT(1'b0)) 
    MISO_reg
       (.C(clk_IBUF_BUFG),
        .CE(MISO_i_1_n_0),
        .D(MISO_i_2_n_0),
        .Q(MISO_OBUF),
        .R(rx_valid_reg_0));
  VCC VCC
       (.P(\<const1> ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \addr[7]_i_1 
       (.I0(rst_n_IBUF),
        .I1(rx_data[8]),
        .I2(rx_valid),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter[0]_i_1 
       (.I0(\counter[3]_i_2_n_0 ),
        .I1(Q[0]),
        .O(counter[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h20228888)) 
    \counter[1]_i_1 
       (.I0(\counter[3]_i_2_n_0 ),
        .I1(Q[1]),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[3] ),
        .I4(Q[0]),
        .O(counter[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h6C00)) 
    \counter[2]_i_1 
       (.I0(Q[0]),
        .I1(\counter_reg_n_0_[2] ),
        .I2(Q[1]),
        .I3(\counter[3]_i_2_n_0 ),
        .O(counter[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h6CC40000)) 
    \counter[3]_i_1 
       (.I0(Q[0]),
        .I1(\counter_reg_n_0_[3] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(Q[1]),
        .I4(\counter[3]_i_2_n_0 ),
        .O(counter[3]));
  LUT3 #(
    .INIT(8'hFE)) 
    \counter[3]_i_2 
       (.I0(\FSM_onehot_cs_reg_n_0_[2] ),
        .I1(\FSM_onehot_cs_reg_n_0_[4] ),
        .I2(\FSM_onehot_cs_reg_n_0_[3] ),
        .O(\counter[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(counter[0]),
        .Q(Q[0]),
        .R(rx_valid_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(counter[1]),
        .Q(Q[1]),
        .R(rx_valid_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(counter[2]),
        .Q(\counter_reg_n_0_[2] ),
        .R(rx_valid_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(counter[3]),
        .Q(\counter_reg_n_0_[3] ),
        .R(rx_valid_reg_0));
  LUT4 #(
    .INIT(16'h80FF)) 
    mem_reg_i_1
       (.I0(rx_data[8]),
        .I1(rx_data[9]),
        .I2(rx_valid),
        .I3(rst_n_IBUF),
        .O(mem_reg));
  LUT3 #(
    .INIT(8'h20)) 
    mem_reg_i_2
       (.I0(rx_valid),
        .I1(rx_data[9]),
        .I2(rx_data[8]),
        .O(WEA));
  LUT6 #(
    .INIT(64'hDDDDDDDD8888C888)) 
    read_addr_i_1
       (.I0(read_addr_i_2_n_0),
        .I1(\FSM_onehot_cs_reg_n_0_[4] ),
        .I2(Q[0]),
        .I3(\counter_reg_n_0_[3] ),
        .I4(read_addr_i_3_n_0),
        .I5(read_addr_reg_n_0),
        .O(read_addr_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    read_addr_i_2
       (.I0(\FSM_onehot_cs_reg_n_0_[3] ),
        .I1(tx_valid),
        .I2(\counter_reg_n_0_[3] ),
        .I3(\counter_reg_n_0_[2] ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(read_addr_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hE)) 
    read_addr_i_3
       (.I0(\counter_reg_n_0_[2] ),
        .I1(Q[1]),
        .O(read_addr_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    read_addr_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(read_addr_i_1_n_0),
        .Q(read_addr_reg_n_0),
        .R(rx_valid_reg_0));
  LUT6 #(
    .INIT(64'hAAAAEFFFAAAA2000)) 
    \rx_data[0]_i_1 
       (.I0(\rx_data[7]_i_2_n_0 ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\rx_data[3]_i_2_n_0 ),
        .I4(\rx_data[9]_i_3_n_0 ),
        .I5(D[0]),
        .O(\rx_data[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAFEFFAAAA0200)) 
    \rx_data[1]_i_1 
       (.I0(\rx_data[7]_i_2_n_0 ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\rx_data[3]_i_2_n_0 ),
        .I4(\rx_data[9]_i_3_n_0 ),
        .I5(D[1]),
        .O(\rx_data[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAABFFFAAAA8000)) 
    \rx_data[2]_i_1 
       (.I0(\rx_data[7]_i_2_n_0 ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\rx_data[3]_i_2_n_0 ),
        .I4(\rx_data[9]_i_3_n_0 ),
        .I5(D[2]),
        .O(\rx_data[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAFFBFAAAA0080)) 
    \rx_data[3]_i_1 
       (.I0(\rx_data[7]_i_2_n_0 ),
        .I1(\rx_data[3]_i_2_n_0 ),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\rx_data[9]_i_3_n_0 ),
        .I5(D[3]),
        .O(\rx_data[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000FEFE000000)) 
    \rx_data[3]_i_2 
       (.I0(\FSM_onehot_cs_reg_n_0_[3] ),
        .I1(\FSM_onehot_cs_reg_n_0_[4] ),
        .I2(\FSM_onehot_cs_reg_n_0_[2] ),
        .I3(Q[1]),
        .I4(\counter_reg_n_0_[2] ),
        .I5(\counter_reg_n_0_[3] ),
        .O(\rx_data[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAEFFFAAAA2000)) 
    \rx_data[4]_i_1 
       (.I0(\rx_data[7]_i_2_n_0 ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\rx_data[7]_i_3_n_0 ),
        .I4(\rx_data[9]_i_3_n_0 ),
        .I5(D[4]),
        .O(\rx_data[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAFEFFAAAA0200)) 
    \rx_data[5]_i_1 
       (.I0(\rx_data[7]_i_2_n_0 ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\rx_data[7]_i_3_n_0 ),
        .I4(\rx_data[9]_i_3_n_0 ),
        .I5(D[5]),
        .O(\rx_data[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAABFFFAAAA8000)) 
    \rx_data[6]_i_1 
       (.I0(\rx_data[7]_i_2_n_0 ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\rx_data[7]_i_3_n_0 ),
        .I4(\rx_data[9]_i_3_n_0 ),
        .I5(D[6]),
        .O(\rx_data[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAFFBFAAAA0080)) 
    \rx_data[7]_i_1 
       (.I0(\rx_data[7]_i_2_n_0 ),
        .I1(\rx_data[7]_i_3_n_0 ),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\rx_data[9]_i_3_n_0 ),
        .I5(D[7]),
        .O(\rx_data[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \rx_data[7]_i_2 
       (.I0(MOSI_IBUF),
        .I1(\FSM_onehot_cs_reg_n_0_[3] ),
        .I2(\FSM_onehot_cs_reg_n_0_[4] ),
        .I3(\FSM_onehot_cs_reg_n_0_[2] ),
        .O(\rx_data[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000FEFE00)) 
    \rx_data[7]_i_3 
       (.I0(\FSM_onehot_cs_reg_n_0_[3] ),
        .I1(\FSM_onehot_cs_reg_n_0_[4] ),
        .I2(\FSM_onehot_cs_reg_n_0_[2] ),
        .I3(Q[1]),
        .I4(\counter_reg_n_0_[2] ),
        .I5(\counter_reg_n_0_[3] ),
        .O(\rx_data[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hA0A0FFEFA0A00020)) 
    \rx_data[8]_i_1 
       (.I0(MOSI_IBUF),
        .I1(\rx_data[9]_i_2_n_0 ),
        .I2(\counter[3]_i_2_n_0 ),
        .I3(\rx_data[8]_i_2_n_0 ),
        .I4(\rx_data[9]_i_3_n_0 ),
        .I5(rx_data[8]),
        .O(\rx_data[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \rx_data[8]_i_2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\rx_data[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA0A0FFEFA0A00020)) 
    \rx_data[9]_i_1 
       (.I0(MOSI_IBUF),
        .I1(\rx_data[9]_i_2_n_0 ),
        .I2(\counter[3]_i_2_n_0 ),
        .I3(MISO_i_5_n_0),
        .I4(\rx_data[9]_i_3_n_0 ),
        .I5(rx_data[9]),
        .O(\rx_data[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \rx_data[9]_i_2 
       (.I0(\counter_reg_n_0_[3] ),
        .I1(\counter_reg_n_0_[2] ),
        .I2(Q[1]),
        .O(\rx_data[9]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \rx_data[9]_i_3 
       (.I0(\FSM_onehot_cs_reg_n_0_[1] ),
        .I1(\FSM_onehot_cs_reg_n_0_[0] ),
        .O(\rx_data[9]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\rx_data[0]_i_1_n_0 ),
        .Q(D[0]),
        .R(rx_valid_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\rx_data[1]_i_1_n_0 ),
        .Q(D[1]),
        .R(rx_valid_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\rx_data[2]_i_1_n_0 ),
        .Q(D[2]),
        .R(rx_valid_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\rx_data[3]_i_1_n_0 ),
        .Q(D[3]),
        .R(rx_valid_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\rx_data[4]_i_1_n_0 ),
        .Q(D[4]),
        .R(rx_valid_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\rx_data[5]_i_1_n_0 ),
        .Q(D[5]),
        .R(rx_valid_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\rx_data[6]_i_1_n_0 ),
        .Q(D[6]),
        .R(rx_valid_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\rx_data[7]_i_1_n_0 ),
        .Q(D[7]),
        .R(rx_valid_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\rx_data[8]_i_1_n_0 ),
        .Q(rx_data[8]),
        .R(rx_valid_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\rx_data[9]_i_1_n_0 ),
        .Q(rx_data[9]),
        .R(rx_valid_reg_0));
  LUT6 #(
    .INIT(64'hAAAAFFFFAAAA0080)) 
    rx_valid_i_1
       (.I0(\counter[3]_i_2_n_0 ),
        .I1(Q[0]),
        .I2(\counter_reg_n_0_[3] ),
        .I3(read_addr_i_3_n_0),
        .I4(\rx_data[9]_i_3_n_0 ),
        .I5(rx_valid),
        .O(rx_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    rx_valid_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(rx_valid_i_1_n_0),
        .Q(rx_valid),
        .R(rx_valid_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hE0000000)) 
    tx_valid_i_1
       (.I0(tx_valid),
        .I1(rx_valid),
        .I2(rst_n_IBUF),
        .I3(rx_data[8]),
        .I4(rx_data[9]),
        .O(tx_valid_reg));
endmodule

(* STRUCTURAL_NETLIST = "yes" *)
module SPI_Top_module
   (MOSI,
    MISO,
    SS_n,
    rst_n,
    clk);
  input MOSI;
  output MISO;
  input SS_n;
  input rst_n;
  input clk;

  wire MISO;
  wire MISO_OBUF;
  wire MOSI;
  wire MOSI_IBUF;
  wire SS_n;
  wire SS_n_IBUF;
  wire U1_n_1;
  wire U1_n_13;
  wire U1_n_15;
  wire U1_n_2;
  wire U1_n_3;
  wire U1_n_4;
  wire U2_n_1;
  wire U2_n_2;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire mem;
  wire rst_n;
  wire rst_n_IBUF;
  wire [7:0]rx_data;
  wire tx_valid;

  OBUF MISO_OBUF_inst
       (.I(MISO_OBUF),
        .O(MISO));
  IBUF MOSI_IBUF_inst
       (.I(MOSI),
        .O(MOSI_IBUF));
  IBUF SS_n_IBUF_inst
       (.I(SS_n),
        .O(SS_n_IBUF));
  SPI_Slave U1
       (.D(rx_data),
        .E(U1_n_15),
        .MISO_OBUF(MISO_OBUF),
        .MOSI_IBUF(MOSI_IBUF),
        .Q({U1_n_2,U1_n_3}),
        .SS_n_IBUF(SS_n_IBUF),
        .WEA(mem),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .mem_reg(U1_n_4),
        .mem_reg_0(U2_n_2),
        .mem_reg_1(U2_n_1),
        .rst_n_IBUF(rst_n_IBUF),
        .rx_valid_reg_0(U1_n_1),
        .tx_valid(tx_valid),
        .tx_valid_reg(U1_n_13));
  RAM_v2 U2
       (.CLK(clk_IBUF_BUFG),
        .D(rx_data),
        .E(U1_n_15),
        .MISO_reg(U2_n_1),
        .MISO_reg_0(U2_n_2),
        .Q({U1_n_2,U1_n_3}),
        .WEA(mem),
        .rst_n(U1_n_1),
        .rst_n_IBUF(rst_n_IBUF),
        .\rx_data_reg[8] (U1_n_4),
        .tx_valid(tx_valid),
        .tx_valid_reg_0(U1_n_13));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF rst_n_IBUF_inst
       (.I(rst_n),
        .O(rst_n_IBUF));
endmodule
