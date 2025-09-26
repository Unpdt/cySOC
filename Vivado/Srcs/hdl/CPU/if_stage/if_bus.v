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
    wire [`WordAddrBus] v_addr;

    assign v_addr = PC - `RESET_PC;
    assign addr = v_addr[31:2];
    assign rw = `READ;
    assign insn = rd_data;

endmodule