`include "../rv32i.vh"

module id_decode(
    input  wire [`WordDataBus]      if_insn,

    // 基本指令字段
    output wire [`OPCODE_W-1:0]     opcode,
    output wire [`REG_DST_W-1:0]    rd,
    output wire [`FUNC3_W-1:0]      funct3,
    output wire [`REG_SRC1_W-1:0]   rs1,
    output wire [`REG_SRC2_W-1:0]   rs2,
    output wire [`FUNC7_W-1:0]      funct7,
    
    // 立即数字段
    output wire [`WordDataBus]      imm_i,
    output wire [`WordDataBus]      imm_s,
    output wire [`WordDataBus]      imm_b,
    output wire [`WordDataBus]      imm_u,
    output wire [`WordDataBus]      imm_j,
    
    // 指令类型识别
    output wire                     is_r_type,
    output wire                     is_i_type,
    output wire                     is_i_load,
    output wire                     is_s_type,
    output wire                     is_b_type,
    output wire                     is_u_type,
    output wire                     is_u_auipc,
    output wire                     is_j_type,
    output wire                     is_j_jalr,
    output wire                     is_system,
    
    // 具体指令识别
    output wire                     is_add,
    output wire                     is_addi,
    output wire                     is_sub,
    output wire                     is_lui,
    output wire                     is_auipc,
    output wire                     is_and,
    output wire                     is_andi,
    output wire                     is_or,
    output wire                     is_ori,
    output wire                     is_xor,
    output wire                     is_xori,
    output wire                     is_sll,
    output wire                     is_slli,
    output wire                     is_srl,
    output wire                     is_srli,
    output wire                     is_sra,
    output wire                     is_srai,
    output wire                     is_slt,
    output wire                     is_slti,
    output wire                     is_sltu,
    output wire                     is_sltiu,
    output wire                     is_beq,
    output wire                     is_bne,
    output wire                     is_blt,
    output wire                     is_bge,
    output wire                     is_bltu,
    output wire                     is_bgeu,
    output wire                     is_jal,
    output wire                     is_jalr,
    output wire                     is_lb,
    output wire                     is_lh,
    output wire                     is_lw,
    output wire                     is_lbu,
    output wire                     is_lhu,
    output wire                     is_sb,
    output wire                     is_sh,
    output wire                     is_sw,
    output wire                     is_fence,
    output wire                     is_fencei,
    output wire                     is_ecall,
    output wire                     is_ebreak,
    output wire                     is_csrrw,
    output wire                     is_csrrs,
    output wire                     is_csrrc,
    output wire                     is_csrrwi,
    output wire                     is_csrrsi,
    output wire                     is_csrrci,
    
    // 控制信号
    output wire                     uses_rs1,
    output wire                     uses_rs2,
    output wire                     writes_rd,
    output wire                     is_branch,
    output wire                     is_jump,
    output wire                     is_load,
    output wire                     is_store,
    output wire                     is_alu_op,
    output wire                     is_csr_op,
    output wire                     is_system_op
);

    // 基本指令字段提取
    assign opcode   = if_insn[`OpcodeLoc];
    assign rd       = if_insn[`RegDstLoc];
    assign funct3   = if_insn[`Func3Loc];
    assign rs1      = if_insn[`RegSrc1Loc];
    assign rs2      = if_insn[`RegSrc2Loc];
    assign funct7   = if_insn[`Func7Loc];
    
    // 立即数提取
    assign imm_i    = `IMM_I(if_insn);
    assign imm_s    = `IMM_S(if_insn);
    assign imm_b    = `IMM_B(if_insn);
    assign imm_u    = `IMM_U(if_insn);
    assign imm_j    = `IMM_J(if_insn);
    
    // 指令类型识别
    assign is_r_type    = `IS_R_TYPE(opcode);
    assign is_i_type    = `IS_I_TYPE(opcode);
    assign is_i_load    = `IS_I_LOAD(opcode);
    assign is_s_type    = `IS_S_TYPE(opcode);
    assign is_b_type    = `IS_B_TYPE(opcode);
    assign is_u_type    = `IS_U_TYPE(opcode);
    assign is_u_auipc   = `IS_U_AUIPC(opcode);
    assign is_j_type    = `IS_J_TYPE(opcode);
    assign is_j_jalr    = `IS_J_JALR(opcode);
    assign is_system    = `IS_SYSTEM(opcode);
    
    // 具体指令识别
    assign is_add   = is_r_type && ({funct7, funct3} == `ADD);
    assign is_addi  = is_i_type && (funct3 == `ADDI);
    assign is_sub   = is_r_type && ({funct7, funct3} == `SUB);
    assign is_lui   = (opcode == `LUI);
    assign is_auipc = (opcode == `AUIPC);
    
    assign is_and   = is_r_type && ({funct7, funct3} == `AND);
    assign is_andi  = is_i_type && (funct3 == `ANDI);
    assign is_or    = is_r_type && ({funct7, funct3} == `OR);
    assign is_ori   = is_i_type && (funct3 == `ORI);
    assign is_xor   = is_r_type && ({funct7, funct3} == `XOR);
    assign is_xori  = is_i_type && (funct3 == `XORI);
    
    assign is_sll   = is_r_type && ({funct7, funct3} == `SLL);
    assign is_slli  = is_i_type && ({funct7, funct3} == `SLLI);
    assign is_srl   = is_r_type && ({funct7, funct3} == `SRL);
    assign is_srli  = is_i_type && ({funct7, funct3} == `SRLI);
    assign is_sra   = is_r_type && ({funct7, funct3} == `SRA);
    assign is_srai  = is_i_type && ({funct7, funct3} == `SRAI);
    
    assign is_slt   = is_r_type && ({funct7, funct3} == `SLT);
    assign is_slti  = is_i_type && (funct3 == `SLTI);
    assign is_sltu  = is_r_type && ({funct7, funct3} == `SLTU);
    assign is_sltiu = is_i_type && (funct3 == `SLTIU);
    
    assign is_beq   = is_b_type && (funct3 == `BEQ);
    assign is_bne   = is_b_type && (funct3 == `BNE);
    assign is_blt   = is_b_type && (funct3 == `BLT);
    assign is_bge   = is_b_type && (funct3 == `BGE);
    assign is_bltu  = is_b_type && (funct3 == `BLTU);
    assign is_bgeu  = is_b_type && (funct3 == `BGEU);
    
    assign is_jal   = (opcode == `JAL);
    assign is_jalr  = is_j_jalr && (funct3 == 3'b000);
    
    assign is_lb    = is_i_load && (funct3 == `LB);
    assign is_lh    = is_i_load && (funct3 == `LH);
    assign is_lw    = is_i_load && (funct3 == `LW);
    assign is_lbu   = is_i_load && (funct3 == `LBU);
    assign is_lhu   = is_i_load && (funct3 == `LHU);
    
    assign is_sb    = is_s_type && (funct3 == `SB);
    assign is_sh    = is_s_type && (funct3 == `SH);
    assign is_sw    = is_s_type && (funct3 == `SW);
    
    assign is_fence = is_system && ({funct7, funct3} == `FENCE);
    assign is_fencei = is_system && ({funct7, funct3} == `FENCEI);
    assign is_ecall = is_system && ({funct7, funct3} == `ECALL);
    assign is_ebreak = is_system && ({funct7, funct3} == `EBREAK);
    
    assign is_csrrw = is_system && (funct3 == `CSRRW);
    assign is_csrrs = is_system && (funct3 == `CSRRS);
    assign is_csrrc = is_system && (funct3 == `CSRRC);
    assign is_csrrwi = is_system && (funct3 == `CSRRWI);
    assign is_csrrsi = is_system && (funct3 == `CSRRSI);
    assign is_csrrci = is_system && (funct3 == `CSRRCI);
    
    // 控制信号生成
    assign uses_rs1 = is_r_type || is_i_type || is_i_load || is_s_type || 
                     is_b_type || is_j_jalr || is_system;
    assign uses_rs2 = is_r_type || is_s_type || is_b_type;
    assign writes_rd = is_r_type || is_i_type || is_i_load || is_u_type || 
                      is_u_auipc || is_j_type || is_j_jalr || is_system;
    
    assign is_branch = is_b_type;
    assign is_jump = is_j_type || is_j_jalr;
    assign is_load = is_i_load;
    assign is_store = is_s_type;
    assign is_alu_op = is_r_type || is_i_type;
    assign is_csr_op = is_csrrw || is_csrrs || is_csrrc || 
                      is_csrrwi || is_csrrsi || is_csrrci;
    assign is_system_op = is_ecall || is_ebreak || is_fence || is_fencei;

endmodule
