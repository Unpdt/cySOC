// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Fri Sep 26 09:46:35 2025
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
