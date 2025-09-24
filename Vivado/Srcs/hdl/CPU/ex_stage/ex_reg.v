`include "../rv32i.vh"

module ex_reg(
    input  wire                     clk,
    input  wire                     rst,

    // id 阶段寄存器输入
    input  wire [`WordDataBus]      id_pc,
    input  wire                     id_branch,
    input  wire                     id_jump,
    input  wire                     id_load,
    input  wire                     id_store,

    input  wire                     id_gpr_we_,
    input  wire [`REG_IDX_W-1:0]    id_dst_addr,
    input  wire [`OpcodeBus]        id_alu_op,

    input  wire [`WordDataBus]      id_imm_ext,
    input  wire [`WordDataBus]      id_rs1_data,
    input  wire [`WordDataBus]      id_rs2_data,

    // alu 结果
    input  wire [`WordDataBus]      alu_out,

    //
    // input  wire [`WordDataBus]      data2,

    // 流水线寄存器输出
    output reg  [`WordDataBus]      ex_pc,
    output reg                      ex_load,
    output reg                      ex_store,
    output reg                      ex_gpr_we_,
    output reg  [`REG_IDX_W-1:0]    ex_dst_addr,
    output reg  [`WordDataBus]      ex_alu_res,
    output reg  [`WordDataBus]      ex_mem_wr_data
);

    always @(posedge clk or `RESET_EDGE rst) begin
        if (rst == `RESET_ENABLE) begin 
            ex_pc <= `WORD_DATA_W'd0;
            ex_load <= `DISABLE;
            ex_store <= `DISABLE;
            ex_gpr_we_ <= `DISABLE_;
            ex_dst_addr <= `REG_IDX_W'd0;
            ex_alu_res <= `ALU_SRC_IMM;
            ex_mem_wr_data <= `WORD_DATA_W'd0;
        end else begin
            ex_pc <= id_pc;
            ex_load <= id_load;
            ex_store <= id_store;
            ex_gpr_we_ <= id_gpr_we_;
            ex_dst_addr <= id_dst_addr;
            ex_alu_res <= alu_out;
            ex_mem_wr_data <= id_rs2_data;
        end
    end

endmodule