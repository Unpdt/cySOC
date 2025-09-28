`ifndef __STDDEF_H__
`define __STDDEF_H__

`define HIGH 1'b1
`define LOW 1'b0
`define DISABLE 1'b0
`define ENABLE 1'b1
`define DISABLE_ 1'b1
`define ENABLE_ 1'b0
`define READ 1'b1
`define WRITE 1'b0
`define DATA_READ 4'b1111
`define DATA_WRITE 4'b0000
`define LSB 0

`define BYTE_DATA_W 8
`define BYTE_MSB 7
`define ByteDataBus `BYTE_MSB:0

`define WORD_DATA_W 32
`define WORD_MSB 31
`define WordDataBus `WORD_MSB:0

`define WORD_ADDR_W 32
`define WORD_ADDR_MSB 31
`define WordAddrBus `WORD_ADDR_MSB:0

`endif