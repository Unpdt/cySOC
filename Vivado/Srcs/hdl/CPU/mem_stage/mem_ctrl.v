`include "../rv32i.vh"

module mem_ctrl(
    // input  wire                     clk,
    // input  wire                     rst,

    // ex 阶段寄存器输入
    input  wire                     id_load,
    input  wire                     ex_store,
    input  wire [`WordDataBus]      alu_out,
    input  wire [`WordDataBus]      ex_mem_wr_data,

    output wire [`WordAddrBus]      addr,
    output wire [`WordDataBus]      wr_data,
    input  wire [`WordDataBus]      rd_data,
    output wire                     rw,
    output wire                     en,

    output wire [`WordDataBus]      mem_out
);

    // 使用前一阶段的地址来load 抵消读操作的延迟
    assign addr = alu_out - `WORD_DATA_W'h80000000;
    assign wr_data = ex_mem_wr_data;
    assign rw = (id_load == `ENABLE) ? `READ : `WRITE;
    assign en = (id_load == `ENABLE || ex_store == `ENABLE) ? `ENABLE : `DISABLE;
    assign mem_out = rd_data;

endmodule