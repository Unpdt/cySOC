`include "../rv32i.vh"

module mem_reg(
    input  wire                     clk,
    input  wire                     rst,

    // ex 阶段寄存器输入
    input  wire [`WordDataBus]      ex_pc,
    input  wire                     ex_load,
    input  wire                     ex_gpr_we_,
    input  wire [`REG_IDX_W-1:0]    ex_dst_addr,
    input  wire [`WordDataBus]      ex_alu_res,

    input  wire [`WordDataBus]      mem_out,

    // 流水线寄存器输出
    output reg  [`WordDataBus]      mem_pc,
    output reg  [`WordDataBus]      mem_mem_out,
    output reg                      mem_to_reg,
    output reg                      mem_gpr_we_,
    output reg  [`REG_IDX_W-1:0]    mem_dst_addr,
    output reg  [`WordDataBus]      mem_alu_res
);

    always @(posedge clk or `RESET_EDGE rst) begin
        if (rst == `RESET_ENABLE) begin
            mem_pc <= `WORD_DATA_W'd0;
            mem_mem_out <= `WORD_DATA_W'd0;
            mem_to_reg <= `DISABLE;
            mem_gpr_we_ <= `DISABLE_;
            mem_dst_addr <= `REG_IDX_W'd0;
            mem_alu_res <= `WORD_DATA_W'd0;
        end else begin
            mem_pc <= ex_pc;
            mem_mem_out <= mem_out;
            mem_to_reg <= ex_load;
            mem_gpr_we_ <= ex_gpr_we_;
            mem_dst_addr <= ex_dst_addr;
            mem_alu_res <= ex_alu_res;
        end
    end


endmodule