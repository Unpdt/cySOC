`include "../rv32i.vh"

module wb_top(
    // input  wire                     clk,
    // input  wire                     rst,

    // mem 阶段寄存器输入
    input  wire [`WordAddrBus]      mem_pc,
    input  wire [`WordDataBus]      mem_mem_out,
    input  wire                     mem_to_reg,
    input  wire                     mem_gpr_we_,
    input  wire [`REG_IDX_W-1:0]    mem_dst_addr,
    input  wire [`WordDataBus]      mem_alu_res,

    // gpr 接口
    output wire [`WordDataBus]      gpr_w_data,
    output wire [`REG_IDX_W-1:0]    gpr_w_addr,
    output wire                     gpr_we_
);

    assign gpr_w_data = mem_to_reg ? mem_mem_out : mem_alu_res;
    assign gpr_w_addr = mem_dst_addr;
    assign gpr_we_ = mem_gpr_we_;

endmodule