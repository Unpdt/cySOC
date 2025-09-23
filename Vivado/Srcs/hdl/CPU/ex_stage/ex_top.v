`include "../rv32i.vh"

module ex_top(
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
    input  wire                     id_alu_src,
    input  wire [`OpcodeBus]        id_alu_op,

    input  wire [`WordDataBus]      id_imm_ext,
    input  wire [`WordDataBus]      id_rs1_data,
    input  wire [`WordDataBus]      id_rs2_data,

    // 控制信号
    output wire                     flush,

    // 跳转地址
    output wire [`WordDataBus]      new_pc,

    // ALU 输出
    output wire [`WordDataBus]      alu_out,

    output reg                      branch_valid,

    // 流水线寄存器输出
    output wire [`WordDataBus]      ex_pc,
    output wire                     ex_load,
    output wire                     ex_store,
    output wire                     ex_gpr_we_,
    output wire [`REG_IDX_W-1:0]    ex_dst_addr,
    output wire [`WordDataBus]      ex_alu_res,
    output wire [`WordDataBus]      ex_mem_wr_data
);

    // ALU 输入数据
    wire [`WordDataBus] data1;
    wire [`WordDataBus] data2;

    // 内部连线
    wire [`WordDataBus] target_addr;

    assign data1 = id_rs1_data;
    assign data2 = (id_alu_src == `ALU_SRC_IMM) ? id_imm_ext : id_rs2_data;

    assign flush = id_jump || branch_valid;

    assign new_pc = target_addr;

    // 分支成立
    always @(*) begin
        branch_valid = `DISABLE;
        if (id_branch == `ENABLE  && alu_out == 1) begin
            branch_valid = `ENABLE;
        end
    end

    // ex_alu 模块例化
    ex_alu inst_ex_alu (
        .data1      (data1),
        .data2      (data2),
        .alu_op     (id_alu_op),
        .alu_out    (alu_out),
        .id_pc      (id_pc),
        .target_addr(target_addr)
    );

    // ex_reg 模块例化
    ex_reg inst_ex_reg (
        .clk            (clk),
        .rst            (rst),
        
        // id 阶段寄存器输入
        .id_pc          (id_pc),
        .id_branch      (id_branch),
        .id_jump        (id_jump),
        .id_load        (id_load),
        .id_store       (id_store),
        .id_gpr_we_     (id_gpr_we_),
        .id_dst_addr    (id_dst_addr),
        .id_alu_op      (id_alu_op),
        .id_imm_ext     (id_imm_ext),
        .id_rs1_data    (id_rs1_data),
        .id_rs2_data    (id_rs2_data),
        
        // alu 结果
        .alu_out        (alu_out),
        
        // data2
        .data2          (data2),
        
        // 流水线寄存器输出
        .ex_pc          (ex_pc),
        .ex_load        (ex_load),
        .ex_store       (ex_store),
        .ex_gpr_we_     (ex_gpr_we_),
        .ex_dst_addr    (ex_dst_addr),
        .ex_alu_res     (ex_alu_res),
        .ex_mem_wr_data (ex_mem_wr_data)
    );

endmodule
