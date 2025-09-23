// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Mon Sep 22 14:20:07 2025
// Host        : DESKTOP-U1I23HU running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top i_ram -prefix
//               i_ram_ i_ram_sim_netlist.v
// Design      : i_ram
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "i_ram,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module i_ram
   (clka,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;

  wire [9:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.1309 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
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
  (* C_INIT_FILE = "i_ram.mem" *) 
  (* C_INIT_FILE_NAME = "i_ram.mif" *) 
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
  (* C_WRITE_MODE_A = "READ_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  i_ram_blk_mem_gen_v8_4_5 U0
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
        .ena(1'b0),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 27280)
`pragma protect data_block
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
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
