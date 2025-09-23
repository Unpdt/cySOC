`include "../rv32i.vh"

module if_bus (
    // input  wire                 clk,
    // input  wire                 rst,

    // CPU端接口
    input  wire [`WordDataBus]  PC,
    output wire [`WordDataBus]  insn,

    // 指令总线接口
    output wire [`WordAddrBus]  addr,
    output wire                 rw,
    input  wire [`WordDataBus]  rd_data
);
    
    assign addr = PC;
    assign rw = `READ;
    assign insn = rd_data;

endmodule