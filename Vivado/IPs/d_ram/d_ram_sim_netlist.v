// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Fri Sep 26 09:49:27 2025
// Host        : DESKTOP-U1I23HU running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim h:/ProjectFiles/cySOC/Vivado/IPs/d_ram/d_ram_sim_netlist.v
// Design      : d_ram
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "d_ram,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module d_ram
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;

  wire [9:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire ena;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_doutb_UNCONNECTED;
  wire [9:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [9:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "10" *) 
  (* C_ADDRB_WIDTH = "10" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "1" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.95215 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "d_ram.mem" *) 
  (* C_INIT_FILE_NAME = "d_ram.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "1024" *) 
  (* C_READ_DEPTH_B = "1024" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "1024" *) 
  (* C_WRITE_DEPTH_B = "1024" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  d_ram_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[31:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[9:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[9:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2021.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
oESHD2Q5NORrmTVTCApB+YFZJwjA1ezq7U6VZh96by+ofPCvSFp06AIoCLvB4BhPvxfob6kIkBpR
xVCOLM7HsDk7nO1JVWiYIJ6okoWTA8hAlPj3sdGuMwRlZNSBKn/c6F+CW5Jl37TEGotkhycSB3Bg
B/uu1THUZwIG87RPahE=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
RovEhaqHrFqzjckk+DIWG8LQeqg2Y/nACQDyXKKtSav7YHlgpKmgHZnsxwwNpqrqVRGyjTecSQ+e
6Mr/Pi9au3AgJVPL6VOgwNVE0yj2LpA4LPyWzxLN3+DiSDmsaCBNCBlVQi2MRKUabou8nLaXldbL
+7pv4pYhQdcyjDzuC2dx3HmzADqstdEiyXeU3ktJ29CDLDmGwDWdmsrl90s4YQSfBV2nj4/Vut3L
p/8dzphf1htPaNMujMxxgp3z4JzUEDJJokDL+gNutEEHiaWpI3URIA5v22vJu+NPD+eEraSioHfL
DPKAajZTwK5FHnonu4O2D0co8GWqWW5cUqZz9A==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
jBQ6Th9yy7jtKQD1h235YLT6qO6XiBaBKGJrV1Z8H9M9ePJ9R/fA8E1okt4LyBvoWjR7tmCbIg7A
0/vuKOogkLtDE/BtTlp4z1iurO8rQrAcdZy/e+7GATawyJxFY7kZhnXASu9zB8TiOBELSlapkpxe
WuAzXLde9FBMBkq4RSc=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
eucSNV2Zbm4zYc2tIGRlGmlVM8+WHY1NHe9drZdgDhGPOHz8PTqHapfnZ1kWuTLtPBLSMvcXNScn
UTvpULofBV6qD7WHLPg7UJcjpZVDL69lk88chgqrlc/RqaJXKNVv+Ubku53ZLU20uZK71bNymjSM
855RVWw5lvTHTCNC2MYIS94Fmrzuq8i0+tFh5qBKkHK2BC+fD7xVyyfuh4mZR2yr/hRs/emoI79E
IKoJnLiglVp6RXTsXFzZW4pIthbjWSuZlOQvoYkS2RMj8a0r9lyariphRQunoudc0bLO4Phk578c
40gusaaS/MI7idMT7k1Di96kvu5mHi23loRcZQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
E/syLaRG2Ss/xTTkuAkOKXzm53+rCptYO2DkVukWhvlLmEB2daHCPrXt4gKeuG+0hIGWedSwCiLJ
7KNtEAiTumJ/j+3p7s3oXN9ftCSRolXoACsCclEAmwYjVM0ubCXUx6JNFOGt0yDl2Jsd5+W10mSJ
bYEKvRKi7koXM/eYJqbhTrtsrHDwRJEY0JVUPh8EOkLLqaIKbnjb6ENEY6qZOamp5PaWsSS30gJM
N6fB8D1AmGKnFbfY+d5TexS55Z92aYcAHNX2XwHsKnm45az1vHeZ0rTEU/oONIaSZfikRni1iDBg
x2GOue6sLiwxTEHaVkTJsOVR4mx0VsfFxavwRg==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_01", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
dSHHpkQiOEzzKs4D71WVyDXLpkKuR9h9h3pBLtnCq2bXiwE/eQHmk5HeQb+qREg0Yv193OukqaQz
RZyuF5GQcqOpqFHMxO62HQ2pdjdpMT5CC7gHvmgiw9qBkJJrXpihIHER4X7OF2iNUfeqxJ8eiSz3
C0V20NlIwKG7Mxg8MVj++xmb32KMUqL7ptikkym20vVdhecVMNvpPoXp8uvaGT7991enWP9HGKUC
9kLY2DEYwRGE71UJJLGWo4n49R50ExFRj91xWnYfvp7uJsMNwnBp5l3GTZiMELX2RkRVSPOHr7l1
n2p5Vq7Uee2drny1IxZ/4c0hYY6y3QWSEqpESw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
HUtfqZ9dh5oZTOAt9a0ebo+wQbzg3izFQ0kVqZN81S4cBjQEF53WUiVlTKBDVjvLNUby4Se9WZjj
j86TQzuGJxLPDTohmbytErsg5JrlXHbHGwR4zGNGTbBs12X7PkxtS8wVCp+7b1rX6pOGOPqm6FoG
g6rZY/bTzVfGYF2CAOhjJUqUOXEAKnZRehspRyiBI28/ZZPSAUD/abKprW8PWCxMx2zPWztZz4No
R96jgvHezNzB1Ta8W7uRBFTMp+XVSToxTp2jzSXJZ0V5xJl+gdVjAMmf6+te2vqrK2wDWdMxk3Sf
iyLI4d0s25vCybcY2fZWacq5iO9pSlSaOQWgCA==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
vYYu2Kvhv3RZi0pFbjRTQ/BBwfilCrGpkMls+Dz6HBGTZvSaC/anWgymoDS0XnoSENGG3Pz3EBF0
19OqLbyna95IHFe2bA7f8RgU9SEUffZ8eXGigfOjAWpZCN07Q77RkhGUKal7okWe3Q6xHtZy83l2
kW8ma3kOYL7GzQjtpbP3lINHLMqpGEo0dzbOHiJ5r6W5U6DsILGsoLQOXcw+MwrevvNRB0KkSklj
QnL8K2AK8PIsJGM6F8dj5KwRYhSBYNb1opuVpiJWlbHgADoeM+dhiRxBLmnaDE8PWs1ReY6uMzzH
SvvO6UEyxQtvS/Smm/uogr1eUFedUaBHPMEXnYlTAv/SKrh942GeknsqfrjGkZxWTN2NEnvpRUwT
fS0pyd/Err0s94b0srmcTYyxZfJGRUct2T8MCphZFaScAlhn655pxW9RaHMfcvDJUHpW8Qa+KhRt
9CWYScPIH6YNDByLQbhKL5BTpAYMNYPF2W7vM2ZzDob2NB7m6GGeKRr3

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QSNmIeTT4pBji+CTjknWXN6sH9Wff8+t8KF+AC3fIoIw08jtLtShcB9ZGeEKG02RGCO4lNIUf5YB
2TVYk6EJ5XyCav12qDhc60n56UVrnpfo7drorY0NmOypuxECgO43h6SDWp9W7px3r4CJnQ4+X2Mj
943GdP30WfL5kbWHZJC1Dz9cBIqRa1EbNXvvAqBvRPS2+aXBXAPOC4rNVZGeIUspn/33IW3yJLSp
Jm5GIct87ZuSoz8+DXhUvsTj4hq8lgirVhfz1qhHm8SfODcE91FGUPw3vbpGWXsBX73t2zxFC1Hz
/6m4YqQJVxd+H5iGE4kbHxHyHnH7FIerqc8Phw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UhfxKxECbuHK/o9ZExa2zP/MIPmFXuDNZwgpiawuBmPeRI1nJsYB7vzbBGMPKny4yIHLT8mHrQRc
fs05atkjIAbLea4+WNoCdCeg7/0PzuodM1ol3it6BHQ6Yzq4mnZbzlk8Xtwmk8ACAbzOr2SYxYWX
ueuUlimUSRusIe4+NiPvzbfHMAOVPjdmSY7zaSyeJuhdAR+fUGeHy5B23Xe2X6cDPeJ75IqcBeul
ox3dTXi3L8r/s1bTKX3FhxRyPZuh/xCWuEajsF2fEYdwWHKtLX6IQniLBJ5ZnVSS8D7IYPsvV4t0
9rWJqto5O1n3rAM44OvKvc9pOYXJupuv7g3gWg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
fmo66vhS7nigYtLDMjdj7hgUnDG/fnO+cIaY/3qHrcwT7u/paj5enLuWHovegu9O9WRq3pPNnjuN
6vZRpuCgz5p4VAV7dVg9fuzg99BAjThp1Q/+HIPfdQ2LM14ZpTh4FXxthHGkTyS5PJArvZ3/UMpW
zwfdYd5+k2/emJ4/nuqoJHQG8k+O5EjSprLTvNZ/wrE1cT/fW/Lu2pxI4msHqVVYAXz7sJ13cQ+C
7tKxCV8vTyf0rpStdE+kZXg+jrc7vFKuPJO0U9axMsC0nXyeYx2jzfAHptGWKvfQaPg/Eo9mgLyN
qSJfFS6aIycuxNmg7L82WK401aWhnUn7GNrudg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 27840)
`pragma protect data_block
wD+rjCCEZZmrfkSCS2bAiOT/7+NwCbYwCJy8+E/1zQPBN+wYIIAnALtl7RlQrFH6Q/Dy3usEvRE6
BKvy49rNqkHaahxiX2qb9RWfXDDqNgawzK52fooC7k8NVyivCRrOsyossQgYhWvR58W5G3hQjp3M
Hiy00vO8FOmtS8m/NbPLqnixj34AHyyblc3wVTCLfbOrF+TNdCXT69i7qYxI78fO58O1q4KW0RuG
7B9byUmW+rkxk5xOKxg3+vmdDrtwqxtV0W1TW9tqQNG/2kxGYsWVyoNItxG68djwQnClZo7crftA
JL29rtt5SHQEFtmKFVtBjbDJI8K6Wx4Wsf7CyT8bV6HgeZrPM+Mbup1ByN8bwc3/sKBsvvd47TBf
1Af/1ZaIOjWpB2wzoVGj/P3LtnzfZSmjlF3bBRzwyzH8PIyyVLjAIMoBjo5UvA0ZgGsCfRj2Ekwx
Aq1nKyI89NW3nZrupPLsu5q5i5tWyAL/nr+uxnUxCUtb7OCFZsrHHN7tK1YqQeHVrQC6ytP1YyPw
SCyA9ghSmmbmwFZSd9MNt+lvI1TAtPooaAEZxYvKGwBC1ZwQUfoKA1VrATFQESKj86ogHnWd+1PE
J6XueQuekfWbTvkSiE+erYNiLHtYXcqvkxCIbIf/k+GJeaPkcON3lcXPRNVXpilR1G6ECci6sLfL
7x0LjfUTBQ0HUC+1hme9qExM4S88f08cOMtDxWlIVizwjuMr+114weerZtWLgEaZEsCwwPc3wS9J
1dDxjB3kGxAz4eFiQIePca9JKLeHF0PJQatJs1cwKsQqshK/CzB/z175omUM8FkAjJU0OHcEZGI9
wKMaARZXbOaiSamsGq6EC7ZJkQcF2Y3fu6C9OflQYbfe78twynkRBoKy0TCnhEuhgoQRHYElmzhO
Gnx2hKsS6MxI+rlUCiB/hbFKNg0DVw0XctkvsHQk1Lm+0Em6U4psKwMMVSB0rR3VbCVsjWnShtWX
gecZzyhZsSXWqQ2QHsMEPl/nhtt6sglp7yhQ0BfMJ3y8NQ50blI/RlHQ4ZFjz/CzgYYC+veK6v62
eo03WMBAkvUiYrK4jzSUvGIrzc9BpvziCGh/4oODGA0eXPqZJuZoRMjPmpK0IPDMpiRRxeuYFMCI
KyZe6tFeGKVq8ouxxyBWHw6cO4NNFSeyMxy6E687MsErn6q8vY3u1Nu/T8rYl0qELx0qFaYhBMKH
VXEOqjRNAaYuPVwMmiN+Ng9019gAfqhE1MnkjNMG2ZRXcDlf56ihr5nwoC7wkr+iD154zyWiYxiz
EruleioxzW4NkXRrtUIc8NtTNKFI0gjslCnbhhXQF6RZw2JrNw4pSp5Du9A4OOcDIst69yPT4fQT
uS31j3gnR6WbjX7o9SyjhmFxofzR16iRLJM0dQu0PKCsGoDtPXlob2LGLmVyho092qsRvn0KDPis
mmnyTmu6XBbZvv94/MSqcg85GmXEQyLAGOjQM7DvQNMggNYLDFs+4AS4QqZzjExbrEP8pyIKT8fc
XhJTlNKppOF+BY/HkMpNnf1O/akGUCiFvpc/hXV0t1P0Y+SBzDcm3Cq9loQIuROOBwc4ZUuuf4Fb
os5hZ2hXw2ICMvjXRYiKQg7QCY8krhlppq6Hr/6El6OkUmoD7L617whlyc3GI/0HClmQc3yZmoLI
Df2asTX6P4ajSXO4wCWlPAF2T6f9T1wVCVqVSyHAr4uJgaHsYXc1S6zOZV+qGPpAVtmcHNvnrDhE
xHWrC8qE58eeP4XtudpPaCbjU5Nw0pSOrjrm8eugXCfJn6bOZ/0Yz5sKnBDVBpLRL/CNddp1N+QR
pZoqH06hVWqrBGZcUQtAzKxNjpEuvwaeCsWWzjta/DIkXCZbPkKlHG80riAUkVBv637XcztF4O8b
+FzGSK3JgZKclx7D/hzX7DzfD3jFIQ7f5srBobup5SSRpFGyc6AULJCoj7h5NZDS9wAMBdGZqUmj
zpn9ir7rlw5in8knMPibv110sgF0wEuKSGTTM7NJ+EGpDnWr8mlKI+48wFzmaFUci6msobv4bklO
h3uovKoPGxSCDAF8JKzO/7Wc4+KmLhaBVBPaoTKKn/cJucUAYDlupBWY6fhHVMnHS6tvu3CP8qgE
b6iRamm1nFh1wk5aMMb0vsZzz+CRMouFsMGTTvxCMi1rMt10a72Edsah2LPyhyzI0hu2Zqz193Ur
i6Bhvrk0mgG6UZdr/JEf53bMTb/cFwwPlPHtkgkfKPQJwvwn0IMVuvePOT4tLOIBTVlsFC1R2aPc
IGb8PTD7jV1p/a3v0efLCAfmoFmP9r92NbPf3bNEQn0j5ID28Dq6Iwt+K/Io3SDfhP+sWby5tZGV
RPAADk7XWbqM9Kf8onGR/ai3OeA70IACmCjY09UfRBCzjRpmxJ0q2rNbPRNbCo5hScwE1ad5YsPt
oDZj9Qc/wY7AAdwj90VDrB1cl7//UA3V/nnp/Nu1wnTFw5UH9Qc2Aq7t5jpi2WPUM0kh56Vjel9D
Ggl5Q/YPRY0e1J/ony4CTnjtoH3I1fzeOGCrXd1jM+t0lemTLJuB31zZvml+m2zFSfKU/F58CxkE
PDQbkpVIP+SJJ4fL3FOKPxaP9YAcpRucAADA8DA3FnyT7jrwvMPcQYkX+yeVTOy/mWfNM4c0VcMN
6vF17QTklj9MniUDD+s241/4zbJZ6S+l5V5mZEYdhX8R5XI91EAawVyuiO761B/EJtMvSeTZ+2os
5jvhB1BvcxT9r9m5AuiwYUHNXavN3i4Il+bunAm02aidrfTJllBal4Ok2tYNRdCVe7ke2CHF/xAH
k0CN9Nh+EYFl6UjWMT9UABfjXc+kajmlIoebaFyrHrv+4jfUEOJPOHdxCUNw4jNgfaPy8J5ip45T
qMYUL7yuLOjiip2nTRRjOpXFQa13HYPxDtesp200dyv/OnhwNNO0xp4xk8cL4Yfam6pfZ+LDU0gk
3xMGHWLolZmc9MxHMoyZprqvuGyrgcXbDEUA2UHBIHmFyGZNxxbWINezrb/Hl5swvYa5iOe2YCZv
0+nvbg36KWQAHngSVdHNDymuddwJU2YFkmTe4c+UliQO/q7P5oyr355BcRjNe3gv5UN0PtG7H/2R
fAPfNZlHHRZZazrfAu9tO/4U6zcHqAxhwpKHAmWLhn8caWGnA6qodR4I7s3JFK0l0d2v1gQXDiCb
EI9P3YE04YKmDKEJ1ni8DVPr5V3xQxb+Vg576ItBh3pvAKUFzuE7ohN1S+vHS4ZzPAPpNZwFKU1J
9JwoEY0ZD/XnvqisWvdirE2mdNFXVCeZ4Nh5XXtFSujmRu63/cBBXCGNB/NmDR67Mwz5lZTAjrkh
dhz6AMGA6TlkiPdyNBkBZ03kDnQcqjewW1k8cVyqj8MoYp++FlEcakhdYLkuzLhsGLpPO/eybWFv
f4S4Vte/6Z4xNQ/EV7mjWlA/5NbJrSqRM6WGF2xeXai0iZ2B6flBz+r6eaSjozXltWFVsHMFY2jI
bn/jrevdJAtA1Z9Fu4rW0L5snx55XshgS+es6xPmz/DxmfVduCJQkHMpbUSuq33d+vRLG+iKlOP4
EOcNAqzDA+R5Yfag6NyHQ14OU/GUPEt/7RCAU3xXHP7Nogf9H11B6alkAap/g40Daz6cMb7IfAk9
GHTbHVcOFar/XeBLHGX3HRSN47uknTABZWMZXOkTp52CHCbTpsAOG95hyjiqzLny44Rf9v7Iwsyf
LNA/zkCdyuAxdNGJxpCInbFTCs9WLVIb0m8xJDyl4Y9PWiYH3LDzrFbNabsWnnajFHUS3cp2uRWF
uSrvskLZGMNb2Nxw6sffV4ROp/zmeQKIrC5tV3XXUj1M0BeaYz9RC42En2g/A65RaZI7CUZC7zJa
E8uSqcirBCDaGQZ1d0AkojWnGGazAm+2qYoTnS8ifsnUIrGBpn87VUtdjCYB1b/g3m5/KFWphB8B
zqNrtfYPDSplOVbjTP1BvALQ0AVcOjpTD0vVsIxLhLxppLlsiDuZs48ybkfUsScl97+mjQ8/SEq3
F4+cD2XTQ0pyaxfbSvngKPVs+a4aXPAG4mxFznH4x1Yiy8mYgzmgVHAk2fsK1Aanra4x+07ELZ7o
evVSz+5sdgV3GsDWbIoX3bG1IzL3d0TAwt8PmRmcrbW7Q6KCaY/8P1hk99t8BZFsZmamOhxLktsw
AMDvs8FaQ1/3Dh140L9ksx23qe26nDN9/okDkjF7vxZm2zNOFGsF+eTsO6qpGcuNshVqSxOSOc6i
DwgBnudI0vWLvmJ44oUmZlhbw9ZOYXPzeB1o26xn+c+FNuOYhdX/9FD6RhmQgw/naU68Zbqo7LZr
nL9TgeNqZiAZ09ykL/0c1Inhz7l+r+RrBWqYtbQPh2SCk4Xv22p5g7PGxRlaiKEKEWHLsvPzDc+U
/Jf0crEU5IhVggwH4dEuMFA/yva4s4lmQdrN/fgIW2o7z7kQ7GH/7ApFuDT2W8K6MVyUvNuiAyFP
rpZTlmmCDuEgWEZCVPfmh9Lh3znJljgASN0omyoE0B4w3yCgWuZgRmzl/H+ZrsLcI7qtJTW2W6/7
rw0KkUMtbOl19stVadyla9iQ7wnWfIjc1AU0NwJllm1PMOwlZSdVR5owkYxWLT0ZydfhhkN4ZlD2
mBm6t+bODldjYzZ2ySohiLwEW5z8WtNbAaLF5g9TMO6f6Du8UKBJewwLfSPs+bULyPiAGEMc092L
r882W+LA3yW/zw2PFLAV3JleLkkrJlmT40tA85zPfWuOQ1MfHWE7VMb3ba9uAdicx7JkMO7b/oED
MIbxNqYSWnKZh+J+M9sLqoqdE4b82/yM8AzLilYcEcX79bYUKkw3b3gC7BT0kFoylvl1fCJNqmXZ
YJj/XONAiLyxCfdG7ex3NMswaD53BhP6XvtwZy4jRIJ+E7hf5U8FDdkyBaYT226392E/iyKCD9iS
aRI0ez1cmua3I9H4LagG5sXpdrlIaFQXbkU+44WwZ481EHg92QAcS6IOlPV412eNkV/VCFyL5GPE
+HW3ZXeyyuoPhxCJfzZoqgMMsTPhCvkywPGsZECW/x9mKvzmgpKXgxHDnMpJ8dLGhTLI5YgrNUFQ
OIUuj4RIKdvwyLSzznNeSuwqmBLaw4ucFZHSi/KKoHAiHmhhQ5agB9o+TL0mx4Kup5MWyUMrSos1
C//mtk3zelMhCDfiIUUyjaWn4oK7/BQDl/DxpnTQeaA5ged+xz7Igr6MhvEmAPG1TTYpXaLwH4rY
uVyT3vCyoRkH/6JPCCB0ZEPqusAo8LgODW9I0Pg0Kxjtf4XwomUv/ndxlrzcMP0WrMJvq6TeXUic
6QgQvChG+CUCwoVQlyd/xdLtrFazjN37Z2UIXVBWDEv67BH9rjXPvZqnKUccziwmBncTd+AlmvHB
xcCJuYT3Pj2+yBsZ5D+T6e4S1bnG+/ODsLS/Y0HySrN/JryL96bZ5kGv6FR2QMRMAaaP0ORvRn2H
b/X7JN8vrl9uCwft03FTvBTynQPTOJTntV6dhBcOEnpua/Hmwo4oXvIk/84pOTQRM2ixdhi+hvBw
nxcShxUp8+noN4LqppSPfPs6kJamdvABqDarM+PjGa5JXNjrr/GJfPN59aQao/CJVYYJifsUrYH0
erxfQ7WjjPo9gwYQj1cB8tIQX4mL2XDemz3ppEbwwOQFQhj0F3M3k0A5THect7g/EYpl0dejViTZ
lPXzz9mdaws7LZuD2xxAlv9808JFxQa3blh7TOAGCw3egrSen4DJ+LAB6SpPFQEIL9iUQ22mH/tZ
51K+xCAwy4FIRYGiPWaFTNWhZ8vgQn3p1Fii5MKhze+l7cY1T+GxsNxbPLBGSFcTy+uP/fR8Cqna
rO8aketvMsG7FKX8ma1tKQuU4gR1seMyb4hh41t4rj52HRRa6yr+pA4Fyf1e8GUI+r0laBe2oaWa
phhdKgGwMln6wI4a2ZUkGgqHc0F8wBdVOp9AoWGiwkMk02rJG3wSY1NVMiv+iHOqRUi3rNIj4YA+
LjJFSemZhaEUi1v74SnvrFK1zYeV7ZkMHqVI2/O7P/P41de86j7ogvR0zpxq8xKrS1mSWxaO8t1E
eHswP+X3H4LypBCF+iOZ3SYudNElWiTkkCQjzvXpt0YdnwpuyX0CbuHYXoe7Sql9LtBNbKZ/hNOT
21p9hnDm9zuDcZrWTng2Hu0HKWrcbLvsYxZyToDQ/FjziGkbes28I6Tc+3L9fvak5J6D40dHN2qc
Mn/RLUNFFhD+Z4QLUe+vMBXT9ifW9Pbf54TmtPRaKjlAeGhjscyACof3M/w5fleTHm9IeCIclNN5
YrbUnY5yOybPMMeQxQiYTQEyVlqNJKmEAToUr/Xl61Q4sh2hStwrWEE0AS5dw13EBWWhtgn/FA5x
F525E/8wTkF4BtXeP7nnZL6IK9IXoEGcXeVOfSaCZbnFKloHdsVE5wxuLKHX3GMDdKIJ/sKuta1/
1r4V5+nfVr9jDDLaIu90+LwgR2M55Nc8aCdUFeykcADH0cj3H7dtaK3Y8Lf3nSeslrxzC4aZcR9i
xnRenY4DdBYxteriNda7eXsGbRE7KZsML46tdWM7AKe8Sz/Df+jd0UH3Pe/gQSeh26dRoQkGZ4Ju
GJ83SwWIl1BBs4yymPFvllm7c64f+EvUAhg/fU+1U0drSeID39gU+BsbJkAJsZU4b1lEczJTDgRD
4dZkqNMxW/WrtZOy2FPM2opWhvsz0MvVbc+58CD4kvDgEDBb62yXa4kzv5GFSN/xRDJPFQhfnwo3
mEqhUke27wEoNpOqZ6x9sm98NXc2EomJOZQx2On2GwG55g6HjIE7+w3sFOHLR+Rz6x/35ji62KyC
CCA9DNKEUxxojrBUnU35DcR42qG/rATWlDd4BYWdCuhZILqJSooO0SykPZ+mOt/yLYFrIixQFq8a
8HEmUbG1rn9qDFw4/HTGaEDu3iWsnF9leMCCEIC8FRuEl0sS7zfOnZdeJ5gOD0CjV8YCBpfEA70w
BuXxWt+eTiK1nBDiEOD3hPn5KSVInE2v7tEVtxvXb1uidFwPLYeSDnIgQKaPahcupzAzRgM9pMcl
mtruWeqYdryeVui+eu0fBO3jgTR8t3hgAMd3ZpVxaNxoURSHDy6SzVOb/IHf9iVzoTQ5xIvQOtNC
oQo6KInvTVgowze8+4cihfdR2LpGur/gb+uElbA4vMiAJr8p3VCaahryNBAjLzP8ZekoXNpY92jO
nePNg767yLo0m9OZ1sd6ilqLJjV5/z8tUwfxoYTFTE5fPuuozw6WRJx60XgNzu4fsmU1RN26EhhX
xhcQbGAVxlM//ok3uq5Qur8bhYt3/3i5bD4awwOYJcB6sN7+PkGbHs4XgjIuFYZi0xsTMSkWTBvF
kE0EBpJO2zcebAuzG6QQokcx2zZFNlGxnqUzzVVMF495IbsY01M/NxZeIatRQLIcUfKpmYO4WTfR
mEVm8WFOt4TKec3mrU+xO4k+JOoIGaf22wGqGOIzYJRnrtMo7KA5ap+/u2VJq0DCAnojxKMPoIlO
ePukP8fEJUTXYZ6l64qyMYRzWioONTKmlXwhR2Jk5ZcJKAY946F64XmB9TJ9nVBMq+gFkqVF9fme
wO1Gf9miuzinuKnUgiQIvyldsqVaDYlC43KvnDKoRmNLx7L9ThOKQi+Q7fPstgitUF7g43+49kwA
kHPOlDHcEdDgbZTK/xa8AnSvlV4o+iB8XBIasGOll+8D3KIIOlW9YjiFd8hEdi5w3PWMgyeHWVOv
v4s3Jmcyv7K6salFqo6IwR3zxV9WLnMnoCK1g73VScZ9CfW+Naio39JCxeUzJiZHUCIk+tcisKer
VtFghG6luDmsBDWvb4QKZuJuigECAH3qfd2brr8s3bgETZ28dG9wC+u5/8QcjfY8YC3tBIAzpVdm
i90vxnR2ao3yuhDMiUksKI+KXt3aQGI36gNDYsGpikmcqvia+edCcabxP6IOPE8i3NZHaa2xnmPj
9DH3zQaIjxkn04VX7v6wcKdz+4r7tvw3siGaaRIyAh/ZWJXewU+ZYdEXt3PDFe/epiVRaYZ+/cV7
3PlhK1J5seiJ/GI5U6v3Oil5vgezGuvpDqol2QTu7hH4q+mRhDJzkwUKU9P1T1kX3P3z9ORC8PPi
/E7JKB443ZN2RJtBWhauMnV7AjQeg8AX26x8C8PDUvVdDlk+pzG8J+xWEiw4sDXQ3eOObzT3ZPzx
ZENuGp8Mi5NOcKf7DDVrMVbAc6i7A5NPEhwYu+CPRaHRBAm82Xh0XiXZSJYjLBhGtxRNxNNr5N9/
LnvPq6YHF57lG1+Q+pNFeWNlXGzpjUkjvtECDx7vVf+1Q4xQC9e807q1mPrUGqAN7zrO0gOBIpYd
hvdkbQHiPSWgoqsQE15oJZ3Xo5aks2tkJyycvYtj1cawcAPjdO43Ehf5adCJiW1do927aEoBjVfo
TL5gUlNQmuTrcY/O+nppAScbIP5fmER5vp52ifLuEFNFrwK9d7NGn7hhVxXyKXvzDqTMyUidTqWm
AtadFMr+ZMOfpN0Z+stuoLWbFkx8cAQpqT1j9dnmfJPCwYVKobm9mjSxgi48E+92R/OYiTWXKgSM
RvROZ4O8PI9ucV/JRw2V5+E8zLOCskwWu0VBAfUR06tN3+0KosfbrTm4hJcqUSQfCo4JlihA7MFq
YAXRWI2ZvRANIut7NnWcL7NAZerjj9udv6wm/tu4sTDsPLrBRVH7MzDWO8Y1NvDug3clktwXaRSj
ABxspF2S5TPVm5DogKwhIVtySv6xNCIF6N+EGDNILCOcm4dzz91JR0cox6GKhsBUZWbvQnhvs3wr
OmN9B60DjeVdjptuqTiTwdhxSBhrzBGh4tbiAJK4YhqtmnozepMGg6aTq0hG9vVG+J3Rv+tUIMY0
XuPa9f/kYl53VFadiBmr3N6HwKhvmV0nIxyhVQAZQjWz74ALI3FlYsWrlO2Qt4YlVCJ+nNk7sykd
v0K+p3uf9UNyTH9/e/ZXx+QFaXjpiyzxxFYFETzrKMYlZYRwUTAJ0tP/nu3YbdNAa0dXONK3sbwY
AwBjRpb6Ot1MyJllwbn0qQUac6Z5HA04QZNcjSHDgtucwXN7aTj/Qd1i//7Atu9soDgcazhub0gj
8dQHMbB4Ew0FIXQduL4IoZm51PMundjDa99YaMEG9OJAiSae+vQ9TwMFiSFo6u/DtlRzpHj4PcVJ
yglyca9oMU0LctTGsyGBKf7NYS3SIoJgiPSVwykjqmVRdg/SbhtXi25x6aPccDy6A+i5nfkJ51Dl
eFbRHCX8QyStsAjJxY0w7SLMf03H9QRgJwtxEnaGFbBJGFwc3cB7AFJE6fsr8Dp/0Vg/SGGsgsCh
PDUeGoCZVn04PL9nDJBzbmOx+kcQUG+I3HTKaWSNXdueh6YlgeBfWzZ936hXUWOCw9S/9ifJdtCj
O6VZeXwKN37yE4nqt9umgAW04rkKzoL28bcPX+g8YjQMOZRDMVEIC+XI7LMkmbSHE+B7aJrAAYyZ
SIooQ548y8oqRwOaXeZ85ONWNaFZl9i7Ufy+/DWsH7SWWlXDoxj1yBeh+WZq4LNgyh7/QG1SpzaC
8nq/yNOUq8CWanHUZbzQ5XsoSKAAWNa3I8stMqzzlfCH43+MIUrkMKUQLlzRXdX+xFlo/FR+Cpq4
ewEbDtiYiHaNgyevI6QV7RAofJ4ru5Cnm6rB6YRqr9m9mXDEY7g/zhOOK62wL1CPY9n1w4qRtD8z
kq1o4qNS0XKUh3M7iH3mOyMsL8QgQKfW021rp2mtcLDFJqHWTEm25axDPzZcL/fyEWxuwHsepHok
BZIBxCScvv9Qf+8LoCwccO3VQBtfohxz7WY4063vMYL0gKWwU3wjEDHu2sAW/jkf//2Wou7m4tPk
Ed9KscbTwP5ImOsLd5vuRIX00xdpegrNj/4UTJfxapi2nnlw8aaMBFzihBORZrTXBK4G4FIKwSND
ymOXV9fPJtfkpCJgGz+zLOXdZGtos4q7f4xdCR5TC+5CtKp9koOOnPhsMAjg0cbmhZ3eGSE0eUaP
aXOfmY796aiW/iVwPK0D/XfMbBKn3SPFFluG6RFXwmRI8lETCNvh6AWN9dKbgScQF3kp+QYGHe+I
OYg4aXlFhG9u7QK6T7mV0FY3nYEd0TH/9Ivus8d5c5rSw+/Snp9btvNRJNeVErGKqgyWLbqyTgbb
8IL5cAD+7fPcbhHwjR5bglbYYoTBuCK6qj3JF+BNU86uTXnCFAADUQjIPgYSZ6UQQadQR0bwOH1F
ieM9fx8eLcSkl9GXf7eFfS5/d9Cg5Lk7rRrphioxa1GCeFJ0Lt6vK9ehwDEORAxDlJC+qW/BgjIm
VN7we+e/GYMxTFlGHPxnL+BIJk5luUIaVAVBkMD6S2qH7StCw8XGzxGBio46zqz3IRag3poz3vi/
j9flsvbb7GRyuBNP6f7t7GNqyE2U8XxxX20Ze+k7Ir3hxKJrxBMQ6BzRhi0bXRKYHvNHovX4kkOK
h63cyNDvqDFBpbIqFufRX3hclcME5z8fFWQEzhoFqUOs496+fx/F1BI3sgE01h70UGAMdYhlf8KJ
Ezn/UFgg2fscLygUQhSpSjXwcIfjO4BhGQoMmAOQDCmFpCkAhE3ceOloiwOZ8m27BTSS9Q0R09cX
LN2O+3CY6ycP8cxGh9jmMpj5v8DknrQx3jNmn8dUChZBsX/YtpitAUSarKMvwbe5XGAj+c7IU2QO
3pGvhGaCOyXl0RNEoRwyRA/sy9gKqrBPnRHHWP0bP5YAHdItBvOfBr4B/Fqc74znksOw4gt+rvq/
Zz9RYmEidEM3/4NfPkYHaSXF2nAjK6zt3WGO4wQnBsKLZMz3xmnR2f2Rn+gSN16OPrsmG3AJOl4w
PZQB/1ICbStoKUeuteSyrvgi9RwdH87eUtHOTBd1SdRfn+OH/R4z+wwI97AllfRiSbh91LyU9u5R
bnxjmDqPjnTxvyc1newXWW112N7xlLIBgHACVTwEdNwGl/VUEeH+PFPWABNz44CAG6Sf+s1MCA+m
ssOPjur7wUjNmH3GsYgKlqTbHnSkH9iGUIWKn2bh9SJPRinPAejcRH0qIK8T1wfdZjV0DWhekbAz
CezvSxreLSAOmTqZ+g65VErtpWcWooV09Xb3uoQeO9e6L3Svy10qdKE5CIgxmMjJW1Sv5q+YC8Y4
1HTWE92o7/ggjN644QI2qBrVIQJBqju4GBee0yqfcd0ybxweU8gtQwy/brpYYgb11ewW9+gzXsau
cuGYbZJYmXayhvdzQD0FCeboT0BOidfIFW31bWIFPZrfiRVZ8X0bZKTt0lDlxITJgmey2rnSts9Y
uq8dm9TOA6kwTGcm327ymbfG0nprE6JOOAA3ptPx6BrphAYwf3KkPWoSg84dudwj1ICF5Yjbb5Ke
cOlphnqXuy2lALtIB8icg6oKIkqug1H54wP8HVVhcIWqmvLtBuXz+CQ1ppGIzAc2hGrVSOl8MmdB
o2/1MUPW4Wn1DFbV01LjsRjhn7UH52qmQuKVNwjbcc7xfa0Zpt2EKyf/WH8qd0BwQK2OE8KRFdtQ
CqdPB4+m204I9bOgwB4kOMrc/OXb1t+D4P4hsHPSH1VEybLm2EKjWP7+EhIs2PBBQYjx05ZBDsG3
D2ZufEMQU1iCV6QE9xZZkj9NocCpQSu8oXmo5xnn39fBIqdvwUNcwRcQFQOVSbqjZ9YuiugWV1v1
TkMxcm6EBXN3UJq2phXjIFbvY2G4kBSRvPedOEIOhVzykWVTS3SKBUg8iXdTv5gP1UfNTaz6epdG
2dM+pZFN4E5/RSXoUxKV/TxQ0BxpShLWu7FGuGghS5eyT8BnWHMjU4ZPUWXPHdPyRlny634Iivmi
/JL/xK4HIMT4hj/qYhmThEpNMoTnwAZNNLBG59jNdSmLbQ3ZNgpCulW0yQCtKVh5bDOYrBre2mWv
j3Zsnv5NnveGXjE9swFkxF1DKz9LWzJepVhGUlyuY3Wk2/Ypof6S9vTTNZC3ZZix6tfNnaAvVN2j
HvKjKtiAMxXgW9QXdsGmuhCGblTv0465rhYp72Rd8hhR8wI1w+Ex41VtkKvZLbwK+HFifpDT9hw8
7XRgh0wcWfIkxo8sxngiVMfq0DVZJkGAHWB8P2ppR+JtPNSEXVW1lVOxjQsSXTy+6GD3xY763+y8
eYY56uuFN8Cp2b/NiMHqBYuCTfan4/9jsjjX2436jrYyAPh6serbQ3KU2kS+4H0DvdULnCgVxkTW
/VgZpJT/LFeQFrWSEO2FfSFdQoQnCgSPTTQOG71/qScZtJjz6VQWj6KGCIsx9WzJ/dOGH6dtf34y
edpe1cxgjQr1mR68l1KBSrT1i6UDYLldiKzpwmDTQ0vflDB70gNz3fDoq8JKkjKTXTSQ5fvBHqbo
xRiWE9NAOPMZ/ALbETk+czGQW2gy213S4RNYYi2gi/JK0tUolWhwWIRciiLijZivuJRp4sgJOXkY
CFOo7lfJ37GiW5KI6GPmd7Z8MDTYepw07/+JbD2Oz+vZ3kO8P8fxvfOAQ/i9QMHM4sFbb0FkgLfN
VimDLSzOSJHcaEKgwdOwGNsjID1EpS0JKLiZQlS/v/eWTFOrmpOdlQU4Ct/pj6YtCcgl6TzeuDLk
cyIex1ZqP2+59Vs+Uo0hOuPzb1o0xLdzyzQcmBHUHiPXT7WUwhuBPj3oivHBqv2Gd5rQdDUv/HtC
+X0st48Ru2cxKECljc48n1mFSZpH9wGTt/Ut+jLZL+ZZ2e+ulE3H8S+yB7Q/VI9ySMN66JY17Xff
hTYD08kqh23ukdqhz4XvDzaHEItYAn9XJHEmXlDBe669StHneZH6APFZlRmDxjHXR1ZUsAOCEqng
Yv3AovtIrryr0EDPadkVl4DhxPRwiUyzyDI786WafQfzUW29H5de4pcfTGiNECQrhPKd+XA0rl6M
z8CkRqDb5HXjR5FDgqDJ3iiQR0MUmrRGKU7MHbsf6A9qnf3EoXspJo3Z8wqJPndLZNooGBNXTknn
BPO959caRe9xr+ldtuD/0v6BfMOO2BEh1P35Eb3Sda/pDmpico3VU0d8OgBBzz61+uqfHHZC+qXO
1i3jA5lQzP0An/QUqZ0U4ld+L2VAaaV72dVcEG2eqwGP3aO09azgHElxTqq45pwW2Zu+KMN1CZev
OYlDgkl/GL7xNT0j/px7AqO47pmNM10ZsGD4zgQezmG4u/8DXrEQ2qYzpF5WZYE7YJFYKvmZKEzA
bk/AdMjyIMJ4jwTeuhlqsvo0VyYOSsv+UnTUvUC9nFv4FC6DQhBmzqua7hu27Jvzx1N/6Hqmugp4
2uhmJnAv5T5yd8SzSpb+2zJarWmuFTboaKI5VcEkPaS8valiSo93X2Kb3375ZVABg4MgnV8CJyUF
ufDWvnjQfU1jRCx9HuhaX5ti7fVpjd+SnnMMSzccdXhfQL3Lb82x3pjJ0S/Fs0HETpW5F6SrcmdC
XFtj95m+Ne4ly/wFnwP41ijccEsmatFnKYY0if360tYRDtbS32iutaJ35TGjxN6VaNxLVhMWNVfT
pWzuNfSPxX4XWHwN/TGbFuktzfKP9rmUSclDbZmneGZiQL6LP0MI3rQYYKW8osZm+D1h1jeKX/gO
dXVsIeGFLgNqkq7PSF7+SaySRdBZq6t+YKKK99Ho8Bp6Ld7nxNp9ZI1RhA1rdG4MLEnKLfmSHpoO
dChyD0DrlPJP1R9ofBHchNAqrpCVDp0Ysi1KbN/vRFUsNnehvPlwb+VoKkmBJvr967M6HW17ub7g
FmutBZeDXJU8+15qpi7bY/x7C4tHe8d2RQf3HmX473kHqjNLQy8SXSpbQxpyJkFaAaGUdA0Yugn1
jOuCBtyDqGSAhaceT9XIZDXkU+9qbX04nxVxXbjA7lJX2+Z6gPv9B4E7w9EXFGk6Tpyo86P2GS0t
MpeVNKUGlh7xnUi2evZAEJymW71ierQKintHXL9nhlgfny/P3zJTxHZbqZ44p/m7KnToGDFo9jIG
pPrypoVC8z1jWP7yCbegw5k1HN1jSzoGbaf5m5dDk++wre/AdBVXzP0tiKa3wVRoc7N7/gl/Bu5V
35GKHjaZwiq2FMBMUAi6XuJeK6zRMqmk/IVb6XY1NdZGbxbPUYJPzhTSUR3iNBP/CAozAwY73gD0
pZq+gz7FgCgwRP7+cdfmVc9k7yPxn9q+yrDN2CE+r7qJELcVd/qlQWkuJ1wR4nQjn8c9gF6Yrjve
IsecEnpok+GGXp4PTtRUWitoNrXzccA7JgbRcgnpvI2g1fb+00tJaJG+YVFrVSlF25Ss9NL/a9bi
+r0j2+H9eLSpZeU+Xkkpy1SSlrnvnFUDtafCX2D7DRwL4QVgo4LIAabJujOkwAQwjcTf0HWZssJk
ov6yyeqcojM5niwk5JKM4U38bYDR8vz0DiuZ2OaZQi1M/yVyk0DX3HSDnGdZ5vjXF5f+Von8YUMH
MCuYHzf8aSvSIzXRV5IZcO9UXwQ3XTeza6Yi+/6tiDJXuzrgtitCnA5n+oVo6TF/IqiIH0grf0NH
K70HV4lSqKJAPOaugB5hjvGK/tUVDZ3QNRVd0AKOzz76xho+oGel2c/6RynEFcTdCKFxEhKE6EHq
sBlzuMuG08ywc/3dv3n7WGtQoMVcUYRyaY9qjmSfI3Kjz7O1JzBmNtnbpZk7piK4teA7tQoc93XJ
QYj/hVx54wlwFPxK0fmymIA91ouRnCLA49cozr3pxHrGwo5H7FrP3KB6ITvtUULDiSikWGbg1xo3
SasCKAnlKq303ZpPRRr3Eo/cmEPRty2qdq9pIGqU5iVosuJnHhMnpkySG/W33+uo7gvDBE5JWkCJ
v36ZXM1xIKacHTtqx/9MPaNB4Seq0ZqpWdqnTSnHXNvm9NKCzCOka4OUu7TmfHx4xBnVW5BDxLBF
IekFcxbAto/LynSwZ+ir59IVfVQgjJKbv1nDacEw3AojRnkfR+2YCzMI3BsUMnZ4U2XCMdBgCRl7
HZ02ZLiTV0yVz+0GD+5ztHh8OwX/kdFm7YlbetAvQ0Q+q5O5yciBsnkkWKoPjzNGWTmr3wSct246
+/K5NvFa5Y5cZtRBeu6hdjVZf61ZcGJQBY/wi1EOGMPsCE8j9VB49I4hTepO0vk3hci9b360DRLo
rlupRlfhucKlEBo+3LtCLf0INNSas/gk/NhzOslp7HAL86Eq1cJgvL1N7kLnp0p2YIVrxwwZjFpH
j1wkgvGm32apAC+RWPHlqvgwOySFfBM3xCbegQrIEz0FEr9+YXurzzc2gPUcWqBYPakTtjNu5cik
1hrm9ZfgcnxTsqixI3PMpzSYpPplvX6dMxgv0oFnXnNHMmw7UV4sCx4DC9G/Yj7HM5RvSqrCXFQC
zpQbX6EhomqYFtuAyEO/SOIFYS/SO22FSiknvBZE3NgACXToxTJ6hhaZz8COvQ2pL/hizxMDuom0
IXe1BGz91Bgc+nw25+QPE4PEm5KEq7MSH1l/eYNI/6D5fXY7oc6KryJpDGABKbGr9xOawynnVlnt
gUi2QVYqlxRHMlxajRFksS9/OTVHXU7I3Ma6he2EVDTNop8L6mUlIysOOMGKdtQngq+cmOaYzBIt
qDft1U3gm56p57ih7Nj825ulgab9EYw92h0r3Tih28YBUT0dBr4Zr7K1TreJtV4tKX3IcT7OZ5NM
QbzZw4plbCcQYaFOEVMhSWgiW94igZCeckzr6KSul90YlFkVMFOwe+RPGInChMTC64ILmujQKzsJ
RMT0jxy+IPsckRn1zCF8ziXC6XrqyPeN1Ah9ir1/GDAggjhgST01/1YB+W1LGQlIXJab2Td/mX8P
B+6u318OKsOWw1rKngDqYvUUZ2rK23tvcJDHrRdTT1sL9zjZmB7bngT3IdO9ySLSMzWiYevpoh8Y
wYLwSHxAqFDcYm2TQknk5NmXEmboItF6JQOaPUDhZwFk3mrV4ydE5HWHtv268Py5npwIpKOu9DGs
WqL9938lnwqM3kqk0KhyoJzrv5cc0LEcW67qSQ/dF7eooGTiaKvysZPj1WpswL3g2+cwlDz/t/ek
v2lpgsXjGlcGoiColWaGAhf5tNs1gE3UQLKdGaa/Z5suZH2XehHky11+nuMJUVQyntNdLlgR3Zj9
Vsj30pEpEKANlSytcgG0pSySlsXeL+rw1TB54AC046gQZSHWoNNSj0J7PmZLauof20LcQyjT7jLo
XwJoidUseJt7g6WiyG3P+0BXhXC4VIvO2mw4HcoU1p/6O7+JSdVZ59GIjh8rznnNhOPzmBPT9ufR
+nzEVb+69toJE9PDfrj6fIPvRVOKLUQEP1jT/IDGkF0qx4BC6x6E8G4ogUF5VcqrGhcXTxi4P0k9
MVQ6eNWB/PUQPjyTjKjf1TKxDtvfY8Wi5IrTRxWpW1PJohlG8+Xvbwbpc1Fm20/ZXDQvbxmhnAnJ
nXHOso30O/rFMuJaxm7efOkbNWJBgDj6y2I1sMsPgsg+FYFvuEj41F58a/mkq78E8kLpzlTvzkt+
i3ypjNfYnaNxIPnFKz29qg+695kJKgzjcDyIscOMoC6O9Dly47IR8iv2AA+XgGmgM8UeTyCjMuVq
KJYl9lh0ZMyVlVBncg2PbBM70a8B9BCNV/rwDKqrjvpjYBz6ypTCcrvFAWwbfvfsbKUWnTtcCCop
F50MOnksnIiyP1ZFInbQdjT2CED+jSbHnBkdLmQc8WzIzlSRvsIhDIEHpGYg75AjdYnlyG84OZlU
2up+e4lMlVs4op6nVHzIpET31jsKZXnDX0Nn3iARs4yPr+EvC6f9r8Pltz7T4FI/R+W+LvOv/70z
Q09jU/CJSZwMtV9TNdNc8aRxFObQA2VfxfYJpjDNqdsk/Ge4yOKz+40uJbRH3DIKjLQCmESC6MbR
kMqYNxK7ROI/BzDEPODK+zryOenyN4hKMFrgu1Go+1UA/+wpmMSWlyIMG8g6Q+X2Nh0SKLgeeNck
yyQ1zl41xKuVZSEnx7Wria0V8G03in47lWHDkmmvgv9sD8oMmY3IF8E9ZybPDbPznWGvPBpFlS/m
Vj5qq1EtTQqk1CmQe67cWEpbzIDlxF1YQm786IjCrFuYwpwfWj934fWfgjfRgAQKIDFMz+nLYhBX
vTs9c7GD7d0oZ8IfaVc8JfGqGioxJEFRxxgnWwFXiHXz6MH5KcA7hYJyb8l9Sm1YjpS286k2gcus
GJ8LvtEbvyL1+fOUmPy6nk/Qfb07hRJ2mL3EGCy29clpd0l6KVxGz1zJ4Y2zmglradGkUttdskqo
kNSM7CZ5qksOu5jffmWPKeM8LRdhCCN924A8Np1eLLVFkoxBf1PLyPAq8yi6cLPOlY7GPpGtdVLM
UySsk02AwTfbuzYQ0aSAgylrbDSdH7NGcYNb6hBZgOrxoHDox8absfCqCwCIkIdtf+Dj2yrr4Gu2
szs9HzXhE6E2902R5zq7glJBovo0SwdJA+ECaWgRoMQuO446/9JjpNzdEPV3qKLIu829KDm/ZHkU
OEt8RXksVTWWCPDzGYT4W+c7HjF+L0J3mZp2YH+k//2+dqY6FY9h96mBFzfljmpYobj1rigtgEdr
4oGdTGHPFzC7EjdnryN1UksHt3bKDJYiyrP++gXLKtzfSUVD4ham7eDe79lwsnusoTCf47SnnY/F
nMnYgSniD6cpQjuIHHODhoAHlRZ3LaaMlzIxDtaNcZ0y8JXELCTW/8tFNyr0FR34SNByFYRcmrmK
DhccRANSCvUqOL8sF4o2H3jExTYRukpJ2DpKBONEqmp3JxJIay7qR5n0d8Om90B/PrbGIPu3jx63
96l1fxvvkl9NNeJtY9rUIiwZUKwSeuLZlG3vVgCaWPSJC3/wEGTzs0OUr1EsmyQ7v2+waGuuZoVu
Ll1WLiHGQ8Lgy54BhbIwqb011brLMLoMI6GxxyGr6PAlIRDhcfdCsziW2aW6Fkwu+jfMnW/LIQFH
9jpq4asXbNzHo1Vj4MjCwPSyZEbhXhVM2glsytVjsoXCmjpFmRnRXShql6sUTpPrH4UzACgvYjDa
zR7LP4XK8nNK6Fc3QzvgjWY2Q2jcaCJEq7fABkLoEBXZp9skN/+EfCDuW4QXIOWO2ttlQmaV2HFq
ELQkLVV7+TRi2NvDFqN0q7K7iDdhfvnrd9nZtjAwuAfCAZ1rn5/I1TvT0A5qidDhC7bY0e38Rv83
DCrz6YyH+8h4Ks5Tl0pXiMc3cqzUM+Q1EdXx1Onqe2geem22zYGff55wHzE3BrC8wZb62BEKZBAD
QyLnkk14p4d/c9LEnv8mi/BzMHj676cP29dBS4wjyVbvQ5t4lrn0QGurqa7LzUZ4UEAze7TpJIc7
ibm85F0nDrfoeknR2AMyiMNgNs6bdea1gd2w87bLJtk3HSSs7CMbatFYcwSQjiVjZPu6wj69byRV
fKCkQpuFyaD6+dNbUOA9mZ+U18JY7XWj6j5GBd551Xa/IzHn3zkemxHR7H+CiMdbzhdmCUZOvwo3
hNqommRLZ2zS0Myv2Td26lGQwGEceaxuApBVAvodPy3Dpl1+VALW8QAPp7lkiGoO8kElLr8qo4MB
yVitYmrY+jpITIlynLM86WRJ+zQUG9NWeg1W6PFxB4Ll7mf4JgX5SRxgS0NXKrBOdN3jKoZaQKIT
1OIPiVrcnb64iUZo5pQkLhw18XtSoEaAGLmmdt2kyGvcZBqV/rMoRB/v4aLfABMGqG35kjNrb534
nDEb+bxooJXGj1bPgaMI49uNDt5KgvYTjVMKm40lAmu65VQ+Ggn4TrM5baWKkb+q/+i8mCiIiMcw
NpJkZ8i2YKk2l1yJ3JTSsgC7JbGZc194iCIqQp0Az+HnuPoIV0nPnuDD9ePV8hj6X/bbymbN3JMJ
1oYHCKvaw+jmfirThQNgJ2spMutDPaq0oh9afltke7eskWHrQljZ+fbh85J7duKBo74znvU+3z/V
2SUiNd+HTqQbr5R+aF2Dc2cEjYz58V24dxCiosurhSusAtRzsGldnWD1re3mJ2YKGG+JLr2sSAx8
XghwJrXEC22mt/Oj1I81MkAgQvySYSppmH+ZoAHIq9QesfwKfFkKnv83S1XAJ3l57Ui0ASyZNB6/
1CTueAw2wQN92GG7R53MZzSM2zV8NiE2bKjccEIQmpDtNXwGP4jk0xi7TVXqoR9FgPlsVckyLXPL
bLGhEAPIoRozyBtxmKr9JV1AbV+ECTFmFpB3G7QdTplJRYDBZBUBTI+CW8mBn8KXKmYWLKCLTfe2
1mpPEpFoXGGzdPompGbVHTl18x0i1ZJXdG3wMAQafWw0gkT7OQ16ibImj9MrsQ5sFoK1VeWXfcyA
9TmslfSYtZ/kWCZqRaKraZiq+sAWpjcIE84801I8YQ2kBA2T9OfM5BiK6i9jIH8oQUtvw8N0g9O0
icMCinR7SP2jBkQ2MTc45U6gSpwv7lZepkipknQlSPpm71SyQbMdb5kM6dBlnxK/MswBuITCtzeN
bKp42pm4cOgK3J5FNI6DaC1SqWuvJLqrYwk/n2uIvgJYw6Y1mVGZzu8CpQvpdCGJOYkavXcU54qp
3ndphkaDbFNcQACtJwPfEeNEkUTbSxZ3AVZvIVcrEUEyypZd+mSWrUd2veTvTs8pJ6Jvwfw26/zs
xagqUPy/0NURdd80HxScE+cDPCqf9pb2BHKQ/MVa+SijgbzcuRJ9U3CU3azU5wMZUeJO4aQ5Tg3W
Jy5jpfoJOdkLwwDB54qWWT2EgJyKDhIFw+KreUzifPBzdHlKqNcCjI8cW0CZ/v+LUKrY+GdmlyQY
lg/yjx0x4g1pH/qSDXpnkDi40Xj/pmc12WSO58DJsKva9wCyzw+2XsLlk3s6+PEo9QYd86uBMK6+
mzVzbGho+uSpiRx2WrP49BH8kNx64OC9L78whwB+B1FcMx8vrz/qwAOu1zjSmR243fMEuTE8BTpB
BtZhD3a7OYUO4F8bi0l9I1QJJgylhTw3MsaVaiaTn8kkZN/roiJyZYaAJgjUtFXODFLNFEHE8vQh
gGvZz0VjGysjck1IrxDtzOY5P1RTtFHR+mf1BPaKW01NncqmiE6AmbEZufmZ9mwwXQmDaFg1uP3n
xzpl+hubZoL7akxYpy9JoU+t+I4p67xS85QKWqfX3mD4b/Z0GPJLmVZ3jnwWnweeGsW53uwSVg/V
w6hf/o0V2tW67DW8HZL7I82s+vnozOs1Ahn/j4qxrwsPFSjCTN2S9dgu3l4frh6pNG1kkk8uX3Wx
Ifb+G82tS/7DFHj+5diHrockRJVs9eRA7c8zf+izPpWiWxNLUvcmOG4FnOvE9J2P+Z+OP4cuw8AA
1PSbLwwj1EX7EuLOISEw38PZl54LmmCBQZuwMMHVZX4QDdUCCv2Y5vMSOttCgG7/wxb+/ieKMMZg
jpvjWRVZRkF0X7/+CxMq46EwrThuO974YFWgelZpEtCX1/tSXCmyQs+enTfdClNPSenvExdvXR7E
I/jiPxIbxbSobZD7YrGcSWz13KNUzEYC0sJjwyN3gzsmdn/4MOMvg4kdRwUC1f8EADtAeieKC+O5
+JdQSViGKqx6B1la5P9kcJUqNuFaMYNnauZgHnm76RFB4Vlmh3eTKDcVzvPf+wdcG6ZLkrS2AW/+
V9KVe4T6TFm48FNw9Ya2HE/fQ9SrQMz6uzcICE7jNi2u5odoQ5sYKwV1dR7//uICxIso7srfuwpR
W4JGIGs53TvHwoqUgW8+g/pQ1O6sQcu5DK5d7801dy5gZjmaN/w7NicSJ/CrZlXLk7sS7Op1nsxb
AE8njBEjBKVOJvVXxjhpuQ8Nx/SW8rsDCziUJfIxY/1VL1vo1BoXN+o2YwQsyJ2uTpIjjN5t6vUN
63qVFjZRqf4qeMTB2FsiuTcQCyM4FwrLBlyepyH9EFLcI7a1WwKkxfNuGb7S+bs/9M6klAsQ5+1W
eB+/q+6m9+teopgcZclXlwdeNDkpZSfY+F2ggctkNhgrMHJSwWJGSVmIF942J3y3iLbopzSbn+/o
NNEshLMTAfN5JPfjLIcTVyEETOJeKEXmMNe5XxhO9ALRjK4lvIUAMoXlW91CpRh8PKk5uZdP76wa
ektLDgOQJCN9ymfs/n/B/xTGWF0SeAXo4SSHdFthlKuRxMfVXMcYfTMNnbeauuxbXT7Aj/bx3CC8
LqjO7nrAiufph85Vv4qXvEas4imt0LwD+xodBV29RHz/5MW633R6wUMD9CH/CZZkJrrRYkrgWQVl
tYmEZHD74XdY03Q5jtbLSDxlYBlzQAA/R/Z6zyv21gnjoETX5AyU35JjhWB3lVGVKLcD8RIhg6pW
EwDbU6XeBdQt3lQLRAjcGMg+9sJs6FnzzyZ4mdxeunkoqaKZrF4MyXz8cu3HonC3Iym+C7f9mgMC
dtPksDjcD5Gl4Mc79y84aisL2k4lOVq9hygDQKvvDUTCjaD9jHkDJd4AS6aQkwLSAq1PAu91IFGq
OyMTMru9yTpd5eud78IXCVn6wJ00rv7EK3g7TWf5FSLSgsPYs61u5fS/uGCWlG9+pH3F2LdR/ZiJ
XOEeird1EXC/twK14OyPotcKbS5tuzyC8uJ48+b6HBXgNIccDMFXWSqm0BIXyl2OrfItaPuo6PaA
bOOD8RW6R/bqjPVF1wTte1EGR89cWNwphYZeD6vPkBdLqN0YSvS3hTA2bUN+n6kVDX/74vXA7V2E
xNE421KLHFnbeMUEXU5CwGxknzWQsmPXF8bamvxFwX94+VJhFLvdrr47nbaesINVjbSBl6w6g2eV
KZl1TsDeafM4pQ+cY0eqiVJuTeBRqBzFqVAClLbrQUFOWHF5EMKtnACKvAgVr+9G0gSszrziQen+
UtRxYElwNhRIeGGdo08mA4QNoOHIzK2npfkCrQHNyrqDfWiBobnrsxLouFlAnzYb18hEB2Fj1PWh
GOqWFfkDeFf0B+vAEfgHD17as6rODWJrsAwwHyfRQ9ABBl7fgvxQAjq3C7MHJWzD/dY0XHL5ZfX9
YyCtiwfewm1kzPmtVBLvE6vZb/PGrccxHS2rsvwEZcnpvOuR24Wb4gdK1mMAhCkhAg51O1LzCepm
dgwMx0vPkVpGDuIhr6l6vbNjtwHpLxmM8iJAjIn1PPnP5X1z0RzTT2vULIuk/sGt7KI56nbwKWdh
XIT2SPmawL/YrGdFziF272dyW68Wc/LEilUCQAFhm329rK5awNJN1dFGoXh/UYKTUMdjrsGb+J8N
Vse1AY++H6EuLn32tbqXtJd0kF4IkopiKwqqRIu05NFcVhWlp0Qeqcd4LIdxrY5xFfmnv1dTavQu
3nISg/FUNJM4FeW7T/tunDGCNUDD4tQXlgNmM1ocKV5Z0fNvzaDB5DF7CDNAA3+/XTfzSI1yK/Lq
eRTL2zNcartE1DPrwL3aOIoJUyPMKdKwtLcu0UfPBrA4hQjlijPj+ff5rp5m0f91YayjSTder+um
i15pWsXzWYQdLhNcbU1YGglmMfONN9WDJYZdC+WFOdFTDh6QIz3ne+DNB0vktIRwF5g1VmUsx7Vo
SlhlyypoYRjYtVOmkrhg9Y1DnhuUqddjP6YZMEM6M+U1BInrmaTQjWZgMB74+dbMwMPqQZBYJ/9h
WK9HJorZXWa5FAhLMUf3rjN0OFKaoU3vkLiePQPLi9NfF+qEIMhKBcHDNt1ixIn4/TiW/NuzLPd6
MmORFhAnPYd4/bryemClzuCgIG6/bgSRNaw0cUQ8cqmQWdYiMkgO+ojSUiyC4ShAN1dHGxhihh96
sfBUtUU+bm/k0esfSaVUZrlY59hnPoin/ckpJOPT18V8MUHEv6TvCfr0dzYsFRG8pdZbL2AKufS1
AsHzELgycjzi9W69gMHjeHE3TdULbwWl6NBXglcCZOfeiYj/fKluiYAT0r7DcPnZZGPMoxfbUH0q
AfaIbQVW1U+89uG9bovQZxLEDQz2mIrdPtYs9z5avCRTolDApWGs21BbrUrxx7NwerVoTnldjDMu
l1HXaYoaf9Ae5w29rcuszRVz88ynL5bgHZw4r2CVoaccoIKpZfSvZQPm0SQGNcUmFYa0ILtj1cji
oqtyF8yH/z+SHumgcfdaSn/IvFJuijHVCozEzz3coN7/MYeQzoatO/HpegFHpntGKREkp5Zrh8Kb
ySnjIpbYd1zYPtcCBVW5OFwHOspQ0s4w++FbtL0SMRntx/taNApoNKZIqh7LnIQLZb2UPLuHa0vG
Se1Bbl6osf9uK8+WY15FdSQI0k3UDhaoRXUJ/EN4Oh71VvM3tp2xN6xrTtbQNphWZK+yEnlrnS6x
LDZrBqBUzEaGHxZtsHerjhS58P34/F/Ubd1xX8TL++PCR9aNb8Nz4dmjGgIgAbL1tsY4tovXLSrk
6WVLvokqlyCrtqVo3k6x849/FFFaJEy1wUX8A5FQtWbrVyl+uhv0koKVZhX1fRCiEmjPhYyjy9H8
mPfaN1Lii0cVBXvaIpuUQOwYCjXHR6K64+A9mXWSKALTSBPWyJkpLhWRsrBuufOXjZKEiHWY7yjd
X3yjnN8SU3wFeGjy8n/bO4GYIjLOqOTeNzL5cd06hkHAgJ5vgAuh3bKs/vEgZP+fDIeWYXlv5/vy
Ub2EwkScVSdt9Jx0/foG+0U0fEhNMuGAtmg3BLhi3Y6kEeAs1scRtpyFlOS4tIflOJv4W5QKJkTA
RgRpP18PO9tEpShXb5n8yDdTsdMKmjbqNvell2jynF6elkX/pHB/cYu0SOUYNP/rBQ/iHwQQgZdA
rJQNuJ8w3yp/rNPGSk1MOu6G+ric2L4oZBuHyShcRdDMLZbSFcOemAFe7ISXcEhaLf94VFgboX8f
s6jIN++KaUFuN55218wPEMaoGcYUHQw+xRKm0iI90DV7R04Wu0TG71mFlHEtNv155NFnIRUzm119
1iWYtwv4VUjLoewIg3HpFgAeKemZqtNJCJKvILV9ELYOCRu4Nx3HnozJ48QrtgLabAfHcJs2XOak
X3TS20sWTSLcytyuddLckvcRAr35BYDhtFBtDo3FboC6Twuk1JiHyIM8UCcHbTplDROOlUdAzQVp
mI4KwPICsFcp9Wv9sHzn/TmpV5nls8w9QlQ9J/RsB7v1HaT5MG2cxbczjNUpo0URo7aEjxnxJ0aF
wAbNfYBEwIUvjk8L1vh2DRsFLxIThxPz1gRXgeUKUPFD+uQdi5UH4rdSwbzp1i+HsvIE0e/IdEm1
x5SW1koAbrLvlrtJnma5z4gjjwZlsRqa/sA3ZzLJDXzzO63sjcnzmKefQ16GEZR0Mqr8hBhKOtd3
cJJMU5nOek9Z5JDsRaMnnK9MFI+1lX5zOAIW3yYSCqo4twv2c37j8vX3SnPmJm4ZqXFFHxwsrXI3
I0dlHOCoScH9KHChdllo8hm6+jxcxgqIm5tvKYWu4dlt5mzPqor0l/kBMF4+rrpMjaBZR8LF9Mf4
riWD+y1AZatIOZjH/AJW367Yv4/4VcemD5CEhw5h3MY/j7O/8jxj6/DItfLI2iRjISWVPy9jLfRU
WpMWnGFmJWe/MjN1P1V9u5jWqvDRdio+IdfaRnrQCext0FCLJRyhAHUl8SJxolzJT6opEfSzqC9D
RMZ+35z7xg0YjyVMAUNQV+muIkLB/T5wt41ApI2Gdi4CZHGrphYRGrwSZr22yAe6lVIfd6hkqvtu
k5NrlL2TTMURXhcCyz9Z2iQvKJyUGwTJ3BuLnvaS8IbQFhuArgwAKoK4/yLpLArwCDvFVE2L5aam
n5zbSTu/VwgqyUnkKjZkD7zM5Pj0dSyEkdf0J5l89vh4EllTeJgQk4yeePwpqCkBpxbB4zwSVw7A
snB6GFWoshw8H7T9U65MqcwekI6Um24QTcLxvb9OW/4JLuep6e50oOoBnSbrMgVOqstl3wi1NJAZ
0NTqT0y1ADVhmdifk7lftvgoGnxZOOa1SfM9URxYs9xo/aH8UFoQJK4bcKQdO1nT5tb+UeDL89Cz
qUYT491PigabcFsxTEwoosbEYgWuL8p7aNpLRzjiNyZEQMnr9Ck9dzNoGJ6eikGVcxyeP0NbGUe2
OmVrRDJtiVfdK0AGU0DY9V3xVUS0Hhz7NrVO9DECsqmjf+sM8VO2+eCYzqQtPKSL6LdoBHDIHmBU
ZLt0O63jcXnl4fA3LZyP5vbdL+sxd9aE2LtNgGiEkPloArmBaehQhQQON1djcUmA50ceAE7vJJNt
qzlabu+EwPxDTV/hJwN/kCVh67IpmLFhh842y4ofYOeuhp4MENbd/XJuRLnkHgORF3C7KZh7Sv49
wR+ed5hUAhmeA/SbLJFUg+e0FSGddNSaIIuTJjeu1nEazlN5ByteonrjBfZT/MHCiqHviGDfM06y
rCfGivD6QXJlDAvcIvPOcaMvlCuHmzpt2DyiImDPlUpLkyNtZZMwJn95ShNu6QzIGjdmjbntxQo5
xCpC6na+EVNrgvA6zm37cQElQ3D72Ox7CJVaXyxkNQkyhFbo1eGzfOinF1fanWjt9DTbhBRpwOC3
5oHFW6TzvGsT2DBY78A2je73KUZt1IaDMGQRjQOSfsUzeYLUES10LIosiWR5aWlIMhmrba3PElSJ
jv1P99R3FimjWkO44qmZvUNGEbmlSMEJ7W1C7pgi5MlZd4+5a7dWgnAqyRp3GwJexiDWDz12KgpM
PJ4T2EJLuyZ24TWU/W2sCP3igqBEJE/Lha5xcd77qaiBY0eM/Q3AmUn/OMxC9X+qSSObcarNuIA3
jDiOWPYRV1NL7jSIEFSU7uDV6tgCB+h1Ky2GMrctNg0lDZipz5mvhf/Mn49IBjDTVGuKbldjZU9U
+3QL+9QkI9aCpWLbf/86zyd7ZyN1gHHDvtvPHev3qzuK50FfUj8levVxZ8hDxXOwCjhtnRQuFaDp
AC4znzoa0E7vU/IxIZckuY7+pbg3ZGSsTRSAxqGVrN8sfKY0+HNxE8AxG9OguMIvUYUFZxCJFgpl
K1d955mGpYofGJPNQ2a1KsPYY1wErrRya1WLcn8Fikj9/xEjQXHEFqVYSNC9WByYztu9LdM9iZcj
exf+JFvbIvk5zBILpf92p7xw30hjxr0bp8nLEkujgYifsCiRJNiKAsGyEvQ3Pj0WkMFZJJXNYxE0
DxPG8chMKy2beRW0IiDfKfFkxiVsCEpZootUN37edwSQUEwe+rxhFoPQyVntBXfZ6EVPGgN/XYyL
IuenSXjcOjKuVlbidAoCAGsJYPul91OdcMHjT5U4Iy+42Bl+ws5Q+VL4vEy6tfdUA+dFvzSdhlT0
40AhcunY+uoibF0+1OZj0vzPCiP2bHZokXOLLHGmaZ9G0M1uC8I5zMxsf65x0IzlltOdoMOFlIlX
Om6ACZi3ZX0W3sj1DDKlEYSbxicvYu+x7yXIULdeWpbPaaHYoUYOSTEw+yiYfjJTgwQeGt/WQZy/
kv4nVr8tvlmBy4IW4PxUZIdwXH17bN4m9kytFBmqYhIZVRBCklKzjuXjYE6Yj+uN8YdG29cSat7N
Y9lkwVxchfnsDbF3uqkiY79TgsmVFmCwb+LHghdPZSjG83azpOPxEn19fJsAlGbm+pGN63lhGvj5
rPcAqOMGhrlPBJNurARfeBLeI7YiD33l61cm2ALJzGubVv4DGdlusS9E8Pah2BoSYAX7wd8qMk7L
/nCpI5h+nBzBejvUM+HjOacj5aO+mjVi56IwajKDU3Gc+qUlNYEevuawSuEdAE/5WWzMI5QnDfsg
FWpt0OTD8zvdvKpzdelnp8vQvMJExStSRNFRCF3aVWDFNg24OVj0VzeSmaAisj1mcIgrZT95SWh9
xbHpCmDrfDNXvrqws53UWdTu1wteIz7ogKkl+dJuv2Imehrv01SDsYbSUtdnRmyzzbJLUn3622ON
pFOZsambl3BF1hsOiAML9cz9xDZAr0tOx5KyHZdI/03i/BUUNRy/LaolH2Ft0obbI5mneOhkwBDr
svUCOxvA0uQM9uJXrGlvWrIyJpBARKiM+NzQfkf27BuPHgZoxUJeGf8baRunHqo3ObtpXbPNnKsD
ntGl+uZdKHdAyj7ngVLu92f8Q+ietltfQRu9P0QCVGdTVsC42P6yw1stApgSVt574AIJpT6301Op
gantVjeR63B5KiGEvCL7qfZnUacvQStC2qPmveUG/kQL3BXocyjCsbIjPS6oXlyQ1VwLiwlkiJSv
Eq0yfWIXCfl0J5HgL/thvwfPk/ORlwJ3PHws90t1+VLPr4JgGEKP4Gu1h98/5a6K169T5m0i7e/Z
xDolAOxAjQZ138URvid3+AkkCEn26XJjDPzsW/dE1/Qx25gKkvymLIG/3ryh9n/ZV+9OhXlnBTM2
3kATra+FNHuS/8OXnc8QO5VigI9dNDXRC2uyZpKxN3ip+3ZFWTReCQBhlObkr1IXgyCJMG+5ru+j
2JFafQxSew2g3bh9fQo47fkAYxFxySxY5CacwItHBJQbB8GV8QiQtY8i4HTf+8TqpF9pafZvSuBP
MtkilQ/wPiquac4DtxYcqOyrHum0gzkGhto3x99DmIAXWwjX1Kjv/2phuBfFmfXhUZ/N71UNSpwe
v5kbVVzC0U6G+/XJmn828Jg7mqOhCWL571iWc5AeHCAhksTnwHmbeNk1znPBNe7u4ZcfLXdxoYC3
jJQLEphefHbbL01zsSNCqzXBq4q6onUPc5AHGT8QLJk4xgAwfRA6XtHPUwr7hmfgpzXwWxgAE6+C
YUGvR3F1FQYoB4mWGdL+62UJgqhYj6jVdSbGR6JNw797gcSA8/ElHZTZ0hABAQQR8PTOZ9RH1iHa
DijUorI2fSVfF7xmiOuZPQqXUn9h26yVsR1xL9Ed+a+T/smprpIRws6r21fn/x5s1gGff5ogTDRt
ZNaLZqYPx+EHbSltNrIEVi6gm3p6GvviieDNAT/mFoEEnV92DafY1JzHts8PMRqwqkk/sHeIt44F
HTFKSKnOnPMz/SS518dbQt2pmzWwNJGvnuz8U9Y/xKFT7v/ddGa3uHf4OQMugIKHhUfG0h7FuzLt
6CYP9FcIZmtUsiYy+nTpfUP5Sv9uDp24wQN26AoXrwI6wCoCBRbVw8h5ZVgX9j5WWdxmkksbmwoQ
iMGtbNGR5YiD/m31CfQ7WI30TcQGlGZOfeKRsaA9DSe/nGNATAyYbdd/eTy0goamC/ilvke33ayt
Q1JSCLW6HZVR8w55yZ5P1c1trTJZ/QPRunhv0ugXoK4IaCzg52g/MOrmv/HB8KKkbyVWVkrWKTpA
QKVfW/1/DtvpGycA2QhotBE7FGVh/6x27tEKrltl/u2HJ8hRgAVx0cSCy8KSZ6qxI6EfSF/Km2uP
5lcpfw07Tl2AKxCuY5anRzXxPiZI0UaGhQ8v6xmwYaKOJykVKahonN4jGzEAOS0gWogIGb20+8Qq
d2bn9N47ysxunGVWCgUpGKeDSHZvGOZWk0AuIa1IyHxa4IdUQEsw0iBO9QfLHe72zEf5dvIFenZQ
x8Mo+PtvCZC/TMtpS/N4/rzwWbNkZyoMTTSDZjBE0pZdhkaX/1ipvyfmrOt0xwcVVgey7UouP1Mj
7bn1BvOAGuKPT3GLmodw1aIONCXV3LN9x5g1z1+DdfFGx/NwyRU1grqQQTOCRp2JE29HKng91sfS
yH2Kq+P45Vq76c4175HWRJNTTdwCBr0RBFNR3nrUwnS+/94Gs7jqFAWsbISV/YC0HYKxk8teGa2L
Qgyba6Ki4KA985aTWXCl2LMJEe+Rowf7mrre89aXNBE5BM0dUDNQ03LXOgHpmn0x8QmROY8RipiC
lTk/+iRHTiylYamksTT2MzhL/MEKgAygC41rNkqQ4tFFB2KVX/+oXcJqRV2GUXKX3s4LpKax+cS1
wROdkiJGH3QQToDvv36brQalxuGjWJBmCVMVf/+XwXJiukIYsAg2lEss6iEfrodjEiEXdEz88gPo
R8NBCR7z6tTU+UWH6GPRf4lqGTEBU9FxNatfGkIeVS6opzoO30LMmRy0AIgWNkpkg8TLinGj92XZ
yNcbPvhTEMZMOOzi2ejNsrzgx4tm1W0YqzTqzPsrJE+dpwOnsgfBe/L/mqkv3ZYIwzd8KR68PYpH
iEEgvCANw/EhxkgB/o/022kHKeYrEYjjbhNPKsbEXMiFjeQWls0ULhOfORw0OYZNBGM4DNyDfsaf
17O+IL00kHZEOTjvfrrfhmX1PtkI5oL9Gwy4CwlzD34MtTYg9Jlxh99e4AU5NW9H0VH5H/52gxKh
Oc4NryoYY+gAL4l1pyEIQXL4pRuUqT89HYrEIXUcU15qhG9m9Qqto65T/+Jw29ZR0rrBsZBZz+OX
EWTd+1UfaUrJ3XjrAkX91VPLLN47uTmZJlEavczzqdqhxv8OWJjklowEc/TT9hI/gQf/rQJBrBSg
4NK+Q/3uv/eURak0a0hItSc10maAAdsfL+9/AZob7eOhBWja2N365uePiZADZG+lUi+P0wrw/VHI
Re0Ky6ZuaPR1uu4oOQpyrP/GudFOStixk4kx84zICIf8ck16yvd9irGnt/y+JDYnhDE/F4xqFpAF
oQB7MtC4G1A/V+lREUnCEMq95Y5IZbnOoPCJiWRyT4iQGHvcX3fneZ2IldaaAkoosCudq1XV+MzD
s8dFxGdFowCcY54yrripjac4Wti3dMep8rPJ8N3pilvXj7CPqEgMC55JFtdAsahBzVOwLcRHBaDM
6gT1Ss2k8ZBdZzagUn0EAWIUbycotseOybJdC3pedeeUZTeNOQyD9cxDzGW7+cf+dvS+a1/Fj3SG
anK8lgie1GVbyiH1+Nh8qgEE1yD4lzUn0ulstknrXYY8lhKS1K6h9LHAkotBIV825Idiaqk7NTRn
8AXdNHyIeV2oigfum0mxLutIf/03Uy4mJ9KW8WVJjvc6srxDbE4/0x1v/okHhWM0BiTS5CSHChwH
dqTwn/8qih6xL7jrMu+1EIKJVcem+ZLW+zrh6auv09ZLbtqwVmLiLPsH1Mg1kgM+BHywttVfWZRC
DAZD6A5s8K2ySKOimvQQj3jTcrIIL6DenC1syQrqQIAefQuC71NT1Hge43z5hAFbfGy/wbXlSBvL
qbRUfnirBRv9T/yt0dRVuXw5sb1c5aJRxZ+VgUwB35SI7JXYhdP05tcxCWIcCrt5ghKx3Zmj09+Z
tVJEE9Hj3+ymwYnLCkybx3XlPuUesh97q1tusQ37qJfoecosJCUccPEsu03MitLpOqeh108oZXH+
rw+6iddTmOyqC3h7GZv3f+sf8+/K+2eMNoyUP23fK1XaE+d5jsPCvNB9vuC0Fn14qgaMB0z5LPee
w/eRB653u4s7K3AotEI7lcI+OD8b8KVZaj3K4EXK7J5qQCEd9uNl94qBAWjZSE9fWYS+Dpc8njvT
bWHxruxHuLU1Um727ZROE7vMaGtZPByTyxKlLdjylUyx0eYqgQ8ZkgjtovVwqHXXQ8SKQRKXw+Dz
Y9qP8t9sxRdLDZmxm4FuYZxzYTyeoHNkRRjyBMAl/t+boE/Gg3g5l/PseT8iOmsNHr/GlQ3Ghuw5
bMgZiilZlX/YtV/zfFv1Bbtaks5WKtAMR/eMzZlAFRXc5JzYxV54ex9VTh6Uz5ejkZFx+ycKEVzK
91dV1TP2CoXWTyLWyc+gxHtJUlh4kd3WL+EmSwaRc51ir7ARNPMBuStILelROHgkV1GVhV98vMwY
It3LtyCoqiz78aF54cBffh+/cK0cusyiyZiwjaZfivJsSE7bKyAWqETPxSsQzS04mzgEaI9vZdcQ
eC64Q7JIyGVZSt1eCA196z+tGSIKuFKNTQBkbDwceYlcK1hXeKjAK79M3QcmtaHeJebHRzaPrSvU
l4hcjyp03YdjxAdMgsxSuaK1l/F53NGnBs2z7mTHOeQDU2uHGRi4GPp/bSXU2adSB0Q6KXXzUmXV
cywYSjiJpxx+ibQU2+FAkPOq77Bm+I+V0jcxyQVHsKU4pBAbYLfQeDbEEVfDM53B19F4RrsWsyFp
AoRgzKmkEwrMuf9Aox01FciBRgg0jnu4/3u7V0wmVGVc8HHPg7SE4zpuCrjdGtHhZnser3MMgYuL
gqWaDaoIQtkXin5GmWwnw/iENt4Km9MF+vpYOApLWIzRcfpl4ay7J9+AlqsVmTc5UfmzKGWjpeQG
C8leIOu9pKFg4SdMJrys22vnpa8Hlxfr68q97rrCgON3d0k9LR2ivExC1IDSYnbXSSormZXJnD7I
BML2xnvFbcy5o2psUbBcW5Uel27Mx1EyFY/miaBREl2pEpo0O+EljAhMDdOLJj4lrxOiUZerzifI
XsC0Xp2NRfADu7f287OF6kKY5rA0MTzzs7eKA5fHBkRNJbKwG2CNYKTxv0UfVLKcrSjFa0M4FYi0
yWxzaU6GI8fDT/Pj+1EOM2TiAAu02sGrmDAYzt8y8ywVh2MtjrRc8Jej/t+6DmKUSMcEbt6U6ool
e/ymr7OpBkZviYAh9lmODEO/UziowWORV9PRzJn0BGBpnkOAFvp3vshjeH9hOGgGogByUdQ07fSF
tNrWSZZzOTX2cSOc/dFfnD6bXOpgNlFMTe2XD+kzARq080J0Xk1Rf/ukXuKOzpWTF7s3RgVRDfB8
9A+7leuPtqugFCB4mMS/3kEnxBiyOtbgZ8bJl9mCQ1+RdWWEmMFpAhnC5nb3BSZknAPwdZ1XTJSK
DtJfpzZBzUQ01SdUZB+mH6RFS4zF2Hjx+QAl1PoGWr38dbbhTMR/lN9BUIROtoI1lXIB2QP4/XbH
3PeqWSOo141iDeZpjAwXv78czXPN0oADoW4LbH/e6qkaIhu4Am+kwqtP/PcFLJHq1m44taM5RbJU
7BFP8pD6HHe/jFWfLRge0F1hQ0TyoRRTbB0fzzxvoOS4PSwbdEdIJkLd/mMlV1UnJcaEsx8ah62a
jYxVe8zFmJpgyj5eCXQVOSTx7a9T2GR6ST+iL4Qb1syPMkUWwSvIFbCNXlK/+z6+wGWdzlyYoVgX
z2uxfMFbAh0JfGYh/EzzSXsrh38Y7B6k+Wn4aJUOh+o7A7lEh+rFBX5RaDPZRUq92tFBGqLM2DpG
K+8KqeXkmSYS+vCtQc44SAoyoCp5WBoaOTuZfBJWrMOS6vd3BvgW622u+mA5rlNlqPcF+/L8MWqQ
mgXTg1656e1hKIAQODzXlxCSdz64AM4JPNdA0kyx0ukvvu2/RMq7MBpkQ0bmoplAPueo+csn3E4Q
yghuCmNDiVWnpJNedlyWvAmx1Xz5gcP012jaBJm0mFV+SXnKO4G8/j3jvb/eUVp7n5CevgOTbPBx
WGEA2X2/y/HygiAVllSzbKPDrTnC6acj0lnIueGohpHkzsKR3Ez/2NiGy/7bYkPsdxc+NThDVL8E
1BeH677CHWgpXbrytRr4uoy8kfqmyTgSXyh73uNEyNTQBRl+1Cxr6mrSJnvgWfcOjCqMJ1gipISq
4tHjQpuH4bTHMEYcrlDy/IXnQJSzGvME/MBR8x12mdMr3DcbvWTf0Srx/bYduhklc0qg27+wpRdX
aApsPttOFKT/j2zQisqA6YLi/gdfw9SnmRqQ5l0dXS1ooZZxhnYKtqe/IoOIyVzkKUNyeZ3snsPY
9d9qNrI2DfKiVHVBhPlSefMgCUpDxB0tHHZ8gW8eviWJJwfPieVfbVtc8DenLXoHwBRg5myCLs9b
dLzJQ4R/0quuL19fNaWGlSSvH0Ud6SR6CqMG+oTQquRv3QHK4Hs3oR9tNsjjyt3eLhcpdcnLs119
i/PQZUmY0DGeIjGouLfwvP9/CMF01IM6QU7/s/wZujXbcqSaU7K/tG2tY+9Q9OjwT66WADFo+Vj8
yuOMpSn8SJZDwo6eLWrd0+HBJf7GWBClVnKnYUoVZvq8RvdlCIoLPkDVfi/ZWu6j21dw2G1tr8hc
1+1TZ3cyn0exnXUe3OUa3PvbNNPo4qGQWvVjcheUs8eYSjz3L9ewvE98Yhp3hHI1myO1ctqXhoDZ
MlAOthh2LInbzLJ3pIP8NdJ3fNamVc8NHkP2HIaq7cPjJUtrZbefBSaXg5S74AUl7KdqBD3iqNAC
gA16zOKkHxdHCrNU02930N5h8mkFVNKaEovbQSAe6oJl9Jjh1kcEi2bbNiCR4G25Li9yUAYLCngs
oT+vwnsI0i9wPoPqfceTVfk2Mq8dFuYp6fuLny75hWOuSlajfuhpsvvBJ+YV10rLabKcGk/8bLDg
qTSlOhx2QLP5WWMwEcx1ooTSdInRZ1U64WVzf6r42d8vSOs+/TZqROYzandAQhV64KWIGPToa5yX
GR7140L49fZ9D523zfxxoRNfayAPt9Dk1D0k/H2NdHk+10qjOAUnQroUvR8ALTLmsv3Hy7m5JoLE
lgrliMTGPLU5v4g81Ijh1Kn3oGs+LLYBXvWhetF9TCNvIegCZcgMYLocrGonIdfBooyBqooWftr8
0+MY/xF4IMIYeTrcf0JPojiHTkfD0ftewHCpP4Nu+C6/uvePgcKjOz4tDTMyE0IuSOcWlmd+e9nb
CsgVMj6yFsajrllFb/bhUy4By2jrEeatr3rGv228OL7m8U7YGbKsQwwJbrrE/C3FO/aTi6pVd4t+
A8HAvi+qfN05O/uU1dqrBcoHeqgn6wMaC3FywPthsZSmoADwBD6aJLPfOFJU1WgKkN3tI3uU/Cug
zbxoND65x2+sWbrOf4wuyEsHDu+rU45dgQC/Esr0yUbDIh5TCIc+qKjIXR7HoK/i78YFXNfOvBow
kmm/SKpSHyrO85b8ML0jBafamW5VweNdmNrNQSPb3bZ0Pt+Wa1Cc/bdOPjticKl9Ri4FemI4pWf0
dUOZ6kZH+FA9BZQBTCPhbGdVuWmmsn6uwAxdDvmMDqQ0VGW+kkNaywH1co4nPc5bQsgytDR6ean9
yl/4HKSVMA2fqmoTdBEcNWcUuwJGaVmBAFmvmbToeyYPRGCdyVN+gW6ONVNrqdxCgQGkdz0bDGEl
1eXAipX9++bkmg9kB9yWhhfYPcUnROYYx53iPCpLIKfC8N/PhX8RguunWK3198VJgR0OvfSm4kY2
MwMW7eEYohpqQTNbJ/IgXkpibD8xvXD+F92OTLjz4lepQUmWR7rcCf14EWP4V6zLl2pQq50kVXpr
ZvvuUhuE0Afc+AbApZvFYqX3TK4Qz78qg7+diGajUnyo5wfiFhtF0ATDqQO9sbbfdgL97qGgtkb/
+prSpgQVwB4L1ojur2GWP0OZPJMFM//oi2Uc5GxXCkZkWnzAC6YbSvd3vAKFkW+sWI+gYVts8xG0
W5nJHztOO1UXM1mjAEref96kVRL9tJwjCT+Z+0ZzfY/6HItXONUmn9TBtWfM757qxeceH4NXkk+Y
7zm6dWvzeFLL35iSPSG7+WZIhiyK7+xGUehYGqS6Lsq15q+JTb5536LzPeCSpEJrHOQh9UDREA5u
9S5zjp7ybaBrxo8P4lmBAaMFB8cu4r0mpKQZTmQXgA7FnKBA15ZJ2yMnr6MA5+6g0k8MPi0AkgMe
tMk+EOGt5jP7mpgd7kIn7j2SJTbfeaq/nqVcrddEPLxrvbpWJA3G5BpFR0kYom7GLMNqvaJovXYk
xtH1BPhBReAnNC6Im+e09oSx7B8+u42WinzPwcmuGePPAJVl8dg3JhDNfE14k1WfZK7Hlhy9tP5B
NpYHrNcRtj5sazNvBTAAkElrHp4h8nkrRUN+OadsTAmqHEUZxxbd0vFHTMeq4aykB27hDdFo+F6T
q4QWvV9i/3MkgFF74ns/4ikCRVtk25GPn5Rtk0D5k+yydw+UUtf6me99276RO7wqHH+RQkqx1iFT
+UL86hKPfBexMxSeUSXtSC+MWnagiy/DzxrtGbyCbKFDnf+pSdk0RXD1sF4jlAuSok9XHgHkNGrO
NzJW82OZuVG/iQpBGvzPX+gKbrzl+UGZNb44cAvQJYLIwv4FUCjvSbULkPcL2FYhUQoil0jTfbSR
sT8nFBgCt6b8iD99+rpqUeCrr1MmlHipDAdefUMmz7hkvQL+tVbmNCd/icXH0QdbmgORu1aA96sn
V6vxqtxckR7ptQFeg81Bd25jKY2IV1h7I57moppumRnIPM27BygQzKro6NmgD9UCrlkDTiKD520c
GTpdO+EDA6BszDJijRDtcWWJYVVe/rAZbRI+ejmIY5K/t/zgZoHBrKWizP2cMEfKlu6BN+4hAfgU
px1/wdHMtudS7ufZcg5YT+wQFFw2tyAlFsnXj4chyI3ZavDnFTMLauyTX8wHKdMFeHUnO3HBMcGB
s7WFNvUC6ouCH4waknnoarovW/YGwBDjRk13YRqZD8nvtsMFkQjIYbxGECL9R/fOOz/ndsb/NIj5
VaPuAe1Rc9FCMNQca8Jj0f9Y8lzRFFr2YrgtjaWPt26gx5HHvjEfb6I+vLPdg55XUuPnvmtPKWld
YS0Mre5YzlYx7KUNXwndAVPFL38sre5KdvluH5P+d12BXRnWoJfWtPgKgBRmFATKHWPHnObFZwV+
UPc2KNlQYns87l8jzquhADqIbVaCw0eAHq8y/q50z0O0c7OZ8f3fOSxJ1u8JfvPGzVwUu+0VyMHh
LhqmR8ljhkClGiMl0WYSsbQJ+fWi52U1Om+9VeXbVPNmy0JCLuMOXC5Fx4hXcCqljWowxPiqtNuW
uhXImB7YjukqzyTYPQzKVARMRZfclBRmB+BvIDYMyMjUiG2RidVicqWH5oqbtcUS0iMUTaXDHq6U
MpJQmNjUCrmWpjZ7V91nYOaJu1QDzZgBJcliZRuZpS+u0I4/xHCJU1JWm8TX31KmT4CSa7dY4vZN
29tWeeaH9b1gqAGmTcEzU+B1/3jy+9gmwInEfDGe/Tm5M6kEJF4d375RKt2k8dLkFEExERDTlmGN
4Jd13UiPiyqh1PPX/x9/WzjI+cwI0ACP2DvkjUAwXRwxO9ZmsP4WCnguAyWWajqN3Y/IRYVEhNNv
l7hWMMSg3Epkhc1oRZfQUZ0wzL1ziWChi9ICRDwNWJQy8o+VecK5w4PdmS2FtkAqLysAeCEvqJEh
DFZKKsUOcBOLK1cFYBk8n7iX83GrLfrjpHZk2Uytfnjvv3UFW3xiog5wANxK80VbaYaRPWpw5tzw
88n3N+b5gBpJfBzHxRA4LlOlf/rtxCwQIwsSseKdAPR7BdK+k5IrohEUoylk2+cRcJbZvPNJ2nIP
OvpvjkUuugiyqBFxOwItWwRTWhytLXRtDv03T4G3/mouRRBx6uzs21a9N9pYq02gIZVPNQoJmzkS
42Mul1mLVmYGqk48YDO52K3dOngPa5iOGmm/W2i6E+5kGV64QC2WAMskEsrI+SXgDRPEYzCFUMaq
VR3+30jczv8Z5hVo00CS/EcHEPggYIXM0DXqLzoV2QishmoHlnwTtq9O1VET6KxPBCx/ntft92v1
t3+AsyRJUhzKQKWLtk+FYTdDBEO0Eq5kUVJLh9/C3PNdXAJTS71NkiKzWIXgfEJoOEdwqK0Q+IzE
tEr81i3xNKnjaICW2MepFJgJn7alTlzqi75rauYn/LLeUjxKjahlG9LB4dfFgPVtzzimwIkIEy8X
VsYSY2kGEjZ7S1Zh9FQeWOnOIS71ShKDmg6GnDNjSj0T796+bbtzaOzYQISzNHTbO0jd3SoMv9c8
EIQPuI0K3r/VUt6wTzswd4CNcPk3J2saucIc4orSrkm+X7ool0N4UBXAcb209r+7WFK42ZCwWZGA
k81q3PZftZ0MI1r9sX4otbfc1msqLsPDZUCrNILpcy+4PuVdt+hm+L1DqPCOzjrurPoihsygcc1C
NhYtc5X+Wo45DqIcEOIU6FqYnTO/exL52AdD2+zKJ171KZ4vfctqAD8kyAoPfnobsXkqAbP3CMQx
WPp2uke4s+aXhP0jBcbu/PgXZb3eo40Y9tvBez4lzlQMjxPv/NwuKQwC0EX4VElrrkmDt1lOKHO2
336ZC1ttOVYAELeggIj5OQRXeR5q89w5QM4MNMRJbB6RecDT9OZuF/tlORQRQiIOgF+syWPYDBdB
D88rk60vyH7zvO5t1yWqJhsmoBtT0bSxYGSdXbXcB/7fhwPjOrrRPS/1Agm9d4VKMv4CJbeyTFWx
PvYzWOI2gFqvQBHJPlmeVK2YjXPa6PwvgEn1oupbREVGEJ0tpAW4Ys2QC+UfITiVi84CPgXl+LZM
bjqqKM7MaR9nvaI0/fg+J2mebITqZaX8
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
