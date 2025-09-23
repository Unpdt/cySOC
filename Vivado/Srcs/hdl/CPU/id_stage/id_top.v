`include "../rv32i.vh"

module id_top (
    input  wire                     clk,
    input  wire                     rst,

    // 指令输入
    input  wire [`WordDataBus]      if_pc,
    input  wire [`WordDataBus]      if_insn,

    // gpr 接口
    output wire [`REG_IDX_W-1:0]    rs1_addr,
    output wire [`REG_IDX_W-1:0]    rs2_addr,
    input  wire [`WordDataBus]      rs1_data,
    input  wire [`WordDataBus]      rs2_data,

    // 直通输入
    input  wire [`WordDataBus]      alu_out,

    input  wire [`REG_IDX_W-1:0]    ex_dst_addr,
    input  wire                     ex_gpr_we_,
    input  wire                     ex_load,
    input  wire [`WordDataBus]      ex_alu_res,
    input  wire [`WordDataBus]      mem_out,

    input  wire [`WordDataBus]      gpr_w_data,
    input  wire [`REG_IDX_W-1:0]    gpr_w_addr,
    input  wire                     gpr_we_,

    // 流水线寄存器
    output wire [`WordDataBus]      id_pc,
    output wire                     id_branch,
    output wire                     id_jump,
    output wire                     id_load,
    output wire                     id_store,

    output wire                     id_gpr_we_,
    output wire [`REG_IDX_W-1:0]    id_dst_addr,
    output wire                     id_alu_src,
    output wire [`OpcodeBus]        id_alu_op,

    output wire [`WordDataBus]      id_imm_ext,
    output wire [`WordDataBus]      id_rs1_data,
    output wire [`WordDataBus]      id_rs2_data
);

    // 内部连线
    wire [`OPCODE_W-1:0]     opcode;
    wire [`REG_DST_W-1:0]    rd;
    wire [`FUNC3_W-1:0]      funct3;
    wire [`REG_SRC1_W-1:0]   rs1;
    wire [`REG_SRC2_W-1:0]   rs2;
    wire [`FUNC7_W-1:0]      funct7;
    
    wire [`WordDataBus]      imm_i;
    wire [`WordDataBus]      imm_s;
    wire [`WordDataBus]      imm_b;
    wire [`WordDataBus]      imm_u;
    wire [`WordDataBus]      imm_j;
    
    wire                     is_r_type;
    wire                     is_i_type;
    wire                     is_i_load;
    wire                     is_s_type;
    wire                     is_b_type;
    wire                     is_u_type;
    wire                     is_u_auipc;
    wire                     is_j_type;
    wire                     is_j_jalr;
    wire                     is_system;
    
    wire                     is_add;
    wire                     is_addi;
    wire                     is_sub;
    wire                     is_lui;
    wire                     is_auipc;
    wire                     is_and;
    wire                     is_andi;
    wire                     is_or;
    wire                     is_ori;
    wire                     is_xor;
    wire                     is_xori;
    wire                     is_sll;
    wire                     is_slli;
    wire                     is_srl;
    wire                     is_srli;
    wire                     is_sra;
    wire                     is_srai;
    wire                     is_slt;
    wire                     is_slti;
    wire                     is_sltu;
    wire                     is_sltiu;
    wire                     is_beq;
    wire                     is_bne;
    wire                     is_blt;
    wire                     is_bge;
    wire                     is_bltu;
    wire                     is_bgeu;
    wire                     is_jal;
    wire                     is_jalr;
    wire                     is_lb;
    wire                     is_lh;
    wire                     is_lw;
    wire                     is_lbu;
    wire                     is_lhu;
    wire                     is_sb;
    wire                     is_sh;
    wire                     is_sw;
    wire                     is_fence;
    wire                     is_fencei;
    wire                     is_ecall;
    wire                     is_ebreak;
    wire                     is_csrrw;
    wire                     is_csrrs;
    wire                     is_csrrc;
    wire                     is_csrrwi;
    wire                     is_csrrsi;
    wire                     is_csrrci;
    
    wire                     uses_rs1;
    wire                     uses_rs2;
    wire                     writes_rd;
    wire                     is_branch;
    wire                     is_jump;
    wire                     is_load;
    wire                     is_store;
    wire                     is_alu_op;
    wire                     is_csr_op;
    wire                     is_system_op;

    // id_decode 模块例化
    id_decode inst_id_decode (
        .if_insn         (if_insn),

        // 基本指令字段
        .opcode          (opcode),
        .rd              (rd),
        .funct3          (funct3),
        .rs1             (rs1),
        .rs2             (rs2),
        .funct7          (funct7),
        
        // 立即数字段
        .imm_i           (imm_i),
        .imm_s           (imm_s),
        .imm_b           (imm_b),
        .imm_u           (imm_u),
        .imm_j           (imm_j),
        
        // 指令类型识别
        .is_r_type       (is_r_type),
        .is_i_type       (is_i_type),
        .is_i_load       (is_i_load),
        .is_s_type       (is_s_type),
        .is_b_type       (is_b_type),
        .is_u_type       (is_u_type),
        .is_u_auipc      (is_u_auipc),
        .is_j_type       (is_j_type),
        .is_j_jalr       (is_j_jalr),
        .is_system       (is_system),
        
        // 具体指令识别
        .is_add          (is_add),
        .is_addi         (is_addi),
        .is_sub          (is_sub),
        .is_lui          (is_lui),
        .is_auipc        (is_auipc),
        .is_and          (is_and),
        .is_andi         (is_andi),
        .is_or           (is_or),
        .is_ori          (is_ori),
        .is_xor          (is_xor),
        .is_xori         (is_xori),
        .is_sll          (is_sll),
        .is_slli         (is_slli),
        .is_srl          (is_srl),
        .is_srli         (is_srli),
        .is_sra          (is_sra),
        .is_srai         (is_srai),
        .is_slt          (is_slt),
        .is_slti         (is_slti),
        .is_sltu         (is_sltu),
        .is_sltiu        (is_sltiu),
        .is_beq          (is_beq),
        .is_bne          (is_bne),
        .is_blt          (is_blt),
        .is_bge          (is_bge),
        .is_bltu         (is_bltu),
        .is_bgeu         (is_bgeu),
        .is_jal          (is_jal),
        .is_jalr          (is_jalr),
        .is_lb           (is_lb),
        .is_lh           (is_lh),
        .is_lw           (is_lw),
        .is_lbu          (is_lbu),
        .is_lhu          (is_lhu),
        .is_sb           (is_sb),
        .is_sh           (is_sh),
        .is_sw           (is_sw),
        .is_fence        (is_fence),
        .is_fencei       (is_fencei),
        .is_ecall        (is_ecall),
        .is_ebreak       (is_ebreak),
        .is_csrrw        (is_csrrw),
        .is_csrrs        (is_csrrs),
        .is_csrrc        (is_csrrc),
        .is_csrrwi       (is_csrrwi),
        .is_csrrsi       (is_csrrsi),
        .is_csrrci       (is_csrrci),
        
        // 控制信号
        .uses_rs1        (uses_rs1),
        .uses_rs2        (uses_rs2),
        .writes_rd       (writes_rd),
        .is_branch       (is_branch),
        .is_jump         (is_jump),
        .is_load         (is_load),
        .is_store        (is_store),
        .is_alu_op       (is_alu_op),
        .is_csr_op       (is_csr_op),
        .is_system_op    (is_system_op)
    );

    // 连接寄存器地址输出
    assign rs1_addr = rs1;
    assign rs2_addr = rs2;

    // id_reg 模块例化
    id_reg inst_id_reg (
        .clk             (clk),
        .rst             (rst),

        // 直通输入
        .alu_out         (alu_out),
        .ex_dst_addr     (ex_dst_addr),
        .ex_gpr_we_      (ex_gpr_we_),
        .ex_load         (ex_load),
        .ex_alu_res      (ex_alu_res),
        .mem_out         (mem_out),
        .gpr_w_addr      (gpr_w_addr),
        .gpr_we_         (gpr_we_),
        .gpr_w_data      (gpr_w_data),

        // 输入
        .if_pc           (if_pc),
        .rs1_data        (rs1_data),
        .rs2_data        (rs2_data),

        // 基本指令字段
        .opcode          (opcode),
        .rd              (rd),
        .funct3          (funct3),
        .rs1             (rs1),
        .rs2             (rs2),
        .funct7          (funct7),
        
        // 立即数字段
        .imm_i           (imm_i),
        .imm_s           (imm_s),
        .imm_b           (imm_b),
        .imm_u           (imm_u),
        .imm_j           (imm_j),
        
        // 指令类型识别
        .is_r_type       (is_r_type),
        .is_i_type       (is_i_type),
        .is_i_load       (is_i_load),
        .is_s_type       (is_s_type),
        .is_b_type       (is_b_type),
        .is_u_type       (is_u_type),
        .is_u_auipc      (is_u_auipc),
        .is_j_type       (is_j_type),
        .is_j_jalr       (is_j_jalr),
        .is_system       (is_system),
        
        // 具体指令识别
        .is_add          (is_add),
        .is_addi         (is_addi),
        .is_sub          (is_sub),
        .is_lui          (is_lui),
        .is_auipc        (is_auipc),
        .is_and          (is_and),
        .is_andi         (is_andi),
        .is_or           (is_or),
        .is_ori          (is_ori),
        .is_xor          (is_xor),
        .is_xori         (is_xori),
        .is_sll          (is_sll),
        .is_slli         (is_slli),
        .is_srl          (is_srl),
        .is_srli         (is_srli),
        .is_sra          (is_sra),
        .is_srai         (is_srai),
        .is_slt          (is_slt),
        .is_slti         (is_slti),
        .is_sltu         (is_sltu),
        .is_sltiu        (is_sltiu),
        .is_beq          (is_beq),
        .is_bne          (is_bne),
        .is_blt          (is_blt),
        .is_bge          (is_bge),
        .is_bltu         (is_bltu),
        .is_bgeu         (is_bgeu),
        .is_jal          (is_jal),
        .is_jalr         (is_jalr),
        .is_lb           (is_lb),
        .is_lh           (is_lh),
        .is_lw           (is_lw),
        .is_lbu          (is_lbu),
        .is_lhu          (is_lhu),
        .is_sb           (is_sb),
        .is_sh           (is_sh),
        .is_sw           (is_sw),
        .is_fence        (is_fence),
        .is_fencei       (is_fencei),
        .is_ecall        (is_ecall),
        .is_ebreak       (is_ebreak),
        .is_csrrw        (is_csrrw),
        .is_csrrs        (is_csrrs),
        .is_csrrc        (is_csrrc),
        .is_csrrwi       (is_csrrwi),
        .is_csrrsi       (is_csrrsi),
        .is_csrrci       (is_csrrci),
        
        // 控制信号
        .uses_rs1        (uses_rs1),
        .uses_rs2        (uses_rs2),
        .writes_rd       (writes_rd),
        .is_branch       (is_branch),
        .is_jump         (is_jump),
        .is_load         (is_load),
        .is_store        (is_store),
        .is_alu_op       (is_alu_op),
        .is_csr_op       (is_csr_op),
        .is_system_op    (is_system_op),

        // 输出
        .id_pc           (id_pc),
        .id_branch       (id_branch),
        .id_jump         (id_jump),
        .id_load         (id_load),
        .id_store        (id_store),
        .id_gpr_we_      (id_gpr_we_),
        .id_dst_addr     (id_dst_addr),
        .id_alu_src      (id_alu_src),
        .id_alu_op       (id_alu_op),
        .id_imm_ext      (id_imm_ext),
        .id_rs1_data     (id_rs1_data),
        .id_rs2_data     (id_rs2_data)
    );

endmodule