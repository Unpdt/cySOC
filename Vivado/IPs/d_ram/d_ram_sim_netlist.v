// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Mon Sep 22 10:17:36 2025
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
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
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
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
TTAGiGV4KrNiT+DW1s5Yl4VX8NFjlMtM
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
