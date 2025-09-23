`ifndef __RAM_VH
`define __RAM_VH

`include "../global_config.vh"

`define RAM_SIZE 8192
`define RAM_DEPTH 2048
`define RAM_ADDR_W 11
`define RamAddrBus `RAM_ADDR_W-1:0
`define RamAddrLoc `RAM_ADDR_W-1:0

`endif