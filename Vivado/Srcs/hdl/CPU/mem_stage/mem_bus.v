`include "../rv32i.vh"

module mem_bus (
    // input  wire                 clk,
    // input  wire                 rst,

    // 内存管理单元接口
    input  wire [`WordAddrBus]  addr,
    input  wire [`WordDataBus]  wr_data,
    output wire [`WordDataBus]  rd_data,
    input  wire                 rw,
    input  wire                 en,

    // 数据总线接口
    output wire [`WordAddrBus]  bus_addr,
    output wire                 bus_rw,
    output wire                 bus_en,
    input  wire [`WordDataBus]  bus_rd_data,
    output wire [`WordDataBus]  bus_wr_data
);
    
    assign bus_addr = addr;
    assign bus_rw = rw;
    assign bus_en = en;
    assign rd_data = bus_rd_data;
    assign bus_wr_data = wr_data;

endmodule