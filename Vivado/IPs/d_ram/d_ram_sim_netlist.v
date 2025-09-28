// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Sun Sep 28 10:57:35 2025
// Host        : DESKTOP-U1I23HU running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim e:/cySOC/Vivado/IPs/d_ram/d_ram_sim_netlist.v
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [3:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;

  wire [9:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire ena;
  wire [3:0]wea;
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
  (* C_BYTE_SIZE = "8" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.96495 mW" *) 
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
  (* C_USE_BYTE_WEA = "1" *) 
  (* C_USE_BYTE_WEB = "1" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "4" *) 
  (* C_WEB_WIDTH = "4" *) 
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
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web({1'b0,1'b0,1'b0,1'b0}));
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 27824)
`pragma protect data_block
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
fVtdEYnB/v4=
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
