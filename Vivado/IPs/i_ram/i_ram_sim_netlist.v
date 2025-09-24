// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Tue Sep 23 10:21:37 2025
// Host        : DESKTOP-U1I23HU running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim h:/ProjectFiles/cySOC/Vivado/IPs/i_ram/i_ram_sim_netlist.v
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 27568)
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
