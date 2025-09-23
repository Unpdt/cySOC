`ifndef __BUS_H
`define __BUS_H

`include "../global_config.vh"

// master
`define BUS_MASTER_CH 4
`define BUS_MASTER_INDEX_W 2
`define BusOwnerBus `BUS_MASTER_INDEX_W-1:0
`define BUS_OWNER_MASTER_0 `BUS_MASTER_INDEX_W'h0
`define BUS_OWNER_MASTER_1 `BUS_MASTER_INDEX_W'h1
`define BUS_OWNER_MASTER_2 `BUS_MASTER_INDEX_W'h2
`define BUS_OWNER_MASTER_3 `BUS_MASTER_INDEX_W'h3

// slave
`define BUS_SLAVE_CH 8
`define BUS_SLAVE_INDEX_W 3
`define BusSlaveIndexBus `BUS_SLAVE_INDEX_W-1:0
`define BusSlaveIndexLoc 31:29
`define BUS_SLAVE_0 `BUS_SLAVE_INDEX_W'h0
`define BUS_SLAVE_1 `BUS_SLAVE_INDEX_W'h1
`define BUS_SLAVE_2 `BUS_SLAVE_INDEX_W'h2
`define BUS_SLAVE_3 `BUS_SLAVE_INDEX_W'h3
`define BUS_SLAVE_4 `BUS_SLAVE_INDEX_W'h4
`define BUS_SLAVE_5 `BUS_SLAVE_INDEX_W'h5
`define BUS_SLAVE_6 `BUS_SLAVE_INDEX_W'h6
`define BUS_SLAVE_7 `BUS_SLAVE_INDEX_W'h7

`endif