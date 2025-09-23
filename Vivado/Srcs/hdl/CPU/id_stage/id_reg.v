`include "../rv32i.vh"

module id_reg(
	input  wire                     clk,
    input  wire                     rst,

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

    // 输入
    input  wire [`WordDataBus]      if_pc,
    input  wire [`WordDataBus]      rs1_data,
    input  wire [`WordDataBus]      rs2_data,

    // 基本指令字段
    input  wire [`OPCODE_W-1:0]     opcode,
    input  wire [`REG_DST_W-1:0]    rd,
    input  wire [`FUNC3_W-1:0]      funct3,
    input  wire [`REG_SRC1_W-1:0]   rs1,
    input  wire [`REG_SRC2_W-1:0]   rs2,
    input  wire [`FUNC7_W-1:0]      funct7,
    
    // 立即数字段
    input  wire [`WordDataBus]      imm_i,
    input  wire [`WordDataBus]      imm_s,
    input  wire [`WordDataBus]      imm_b,
    input  wire [`WordDataBus]      imm_u,
    input  wire [`WordDataBus]      imm_j,
    
    // 指令类型识别
    input  wire                     is_r_type,
    input  wire                     is_i_type,
    input  wire                     is_i_load,
    input  wire                     is_s_type,
    input  wire                     is_b_type,
    input  wire                     is_u_type,
    input  wire                     is_u_auipc,
    input  wire                     is_j_type,
    input  wire                     is_j_jalr,
    input  wire                     is_system,
    
    // 具体指令识别
    input  wire                     is_add,
    input  wire                     is_addi,
    input  wire                     is_sub,
    input  wire                     is_lui,
    input  wire                     is_auipc,
    input  wire                     is_and,
    input  wire                     is_andi,
    input  wire                     is_or,
    input  wire                     is_ori,
    input  wire                     is_xor,
    input  wire                     is_xori,
    input  wire                     is_sll,
    input  wire                     is_slli,
    input  wire                     is_srl,
    input  wire                     is_srli,
    input  wire                     is_sra,
    input  wire                     is_srai,
    input  wire                     is_slt,
    input  wire                     is_slti,
    input  wire                     is_sltu,
    input  wire                     is_sltiu,
    input  wire                     is_beq,
    input  wire                     is_bne,
    input  wire                     is_blt,
    input  wire                     is_bge,
    input  wire                     is_bltu,
    input  wire                     is_bgeu,
    input  wire                     is_jal,
    input  wire                     is_jalr,
    input  wire                     is_lb,
    input  wire                     is_lh,
    input  wire                     is_lw,
    input  wire                     is_lbu,
    input  wire                     is_lhu,
    input  wire                     is_sb,
    input  wire                     is_sh,
    input  wire                     is_sw,
    // 暂时不处理
    input  wire                     is_fence,
    input  wire                     is_fencei,
    input  wire                     is_ecall,
    input  wire                     is_ebreak,
    input  wire                     is_csrrw,
    input  wire                     is_csrrs,
    input  wire                     is_csrrc,
    input  wire                     is_csrrwi,
    input  wire                     is_csrrsi,
    input  wire                     is_csrrci,
    
    // 控制信号
    input  wire                     uses_rs1,
    input  wire                     uses_rs2,
    input  wire                     writes_rd,
    input  wire                     is_branch,
    input  wire                     is_jump,
    input  wire                     is_load,
    input  wire                     is_store,
    input  wire                     is_alu_op,
    input  wire                     is_csr_op,
    input  wire                     is_system_op,

    output reg  [`WordDataBus]      id_pc,
    output reg                      id_branch,
    output reg                      id_jump,
    output reg                      id_load,
    output reg                      id_store,

    output reg                      id_gpr_we_,
    output reg  [`REG_IDX_W-1:0]    id_dst_addr,
    output reg                      id_alu_src,
    output reg  [`OpcodeBus]        id_alu_op,

    output reg  [`WordDataBus]      id_imm_ext,
    output reg  [`WordDataBus]      id_rs1_data,
    output reg  [`WordDataBus]      id_rs2_data,

    output reg                      stall
);

    wire is_gpr_we;

    // 非跳转指令、非store指令、非暂时不处理指令
    assign is_gpr_we = is_add || is_addi || is_sub || 
                       is_and || is_andi || is_or || is_ori || is_xor || is_xori ||
                       is_sll || is_slli || is_srl || is_srli || is_sra || is_srai ||
                       is_slt || is_slti || is_sltu || is_sltiu ||
                       is_lb || is_lh || is_lw || is_lbu || is_lhu ||
                       is_lui || is_auipc ||
                       is_jal || is_jalr;

    // id_pc
    always @(posedge clk or `RESET_EDGE rst) begin
        if (rst == `RESET_ENABLE) begin 
            id_pc <= {`WORD_ADDR_W{1'b0}};
        end else begin 
            id_pc <= if_pc;
        end
    end

    // id_branch
    always @(posedge clk or `RESET_EDGE rst) begin
        if (rst == `RESET_ENABLE) begin 
            id_branch <= `DISABLE;
        end else if (is_branch) begin 
            id_branch <= `ENABLE;
        end else begin 
            id_branch <= `DISABLE;
        end
    end

    // id_jump
    always @(posedge clk or `RESET_EDGE rst) begin
        if (rst == `RESET_ENABLE) begin 
            id_jump <= `DISABLE;
        end else if (is_jump) begin 
            id_jump <= `ENABLE;
        end else begin 
            id_jump <= `DISABLE;
        end
    end

    // id_load
    always @(posedge clk or `RESET_EDGE rst) begin
        if (rst == `RESET_ENABLE) begin 
            id_load <= `DISABLE;
        end else if (is_load) begin 
            id_load <= `ENABLE;
        end else begin 
            id_load <= `DISABLE;
        end
    end

    // id_store
    always @(posedge clk or `RESET_EDGE rst) begin
        if (rst == `RESET_ENABLE) begin 
            id_store <= `DISABLE;
        end else if (is_store) begin 
            id_store <= `ENABLE;
        end else begin 
            id_store <= `DISABLE;
        end
    end

    // id_gpr_we_ && id_dst_addr
    always @(posedge clk or `RESET_EDGE rst) begin
        if (rst == `RESET_ENABLE) begin 
            id_gpr_we_ <= `DISABLE_;
            id_dst_addr <= `REG_IDX_W'd0;
        end else if (is_gpr_we) begin 
            id_gpr_we_ <= `ENABLE_;
            id_dst_addr <= rd;
        end else begin 
            id_gpr_we_ <= `DISABLE_;
            id_dst_addr <= `REG_IDX_W'd0;
        end
    end

    // id_alu_src
    always @(posedge clk or `RESET_EDGE rst) begin
        if (rst == `RESET_ENABLE) begin 
            id_alu_src <= `ALU_SRC_IMM;
        end else if (is_r_type || is_b_type || is_s_type) begin 
            id_alu_src <= `ALU_SRC_REG;
        end else begin 
            id_alu_src <= `ALU_SRC_IMM;
        end
    end

    // id_alu_op
    always @(posedge clk or `RESET_EDGE rst) begin
        if (rst == `RESET_ENABLE) begin 
            id_alu_op <= `ALU_NOP;
        end else if (is_add || is_addi) begin 
            id_alu_op <= `ALU_ADD;
        end else if (is_sub) begin 
            id_alu_op <= `ALU_SUB;
        end else if (is_and || is_andi) begin 
            id_alu_op <= `ALU_AND;
        end else if (is_or || is_ori) begin 
            id_alu_op <= `ALU_OR;
        end else if (is_xor || is_xori) begin 
            id_alu_op <= `ALU_XOR;
        end else if (is_sll || is_slli) begin 
            id_alu_op <= `ALU_SLL;
        end else if (is_srl || is_srli) begin 
            id_alu_op <= `ALU_SRL;
        end else if (is_sra || is_srai) begin 
            id_alu_op <= `ALU_SRA;
        end else if (is_slt || is_slti) begin 
            id_alu_op <= `ALU_SLT;
        end else if (is_sltu || is_sltiu) begin 
            id_alu_op <= `ALU_SLTU;
        end else if (is_beq) begin 
            id_alu_op <= `ALU_EQ;
        end else if (is_bne) begin 
            id_alu_op <= `ALU_NE;
        end else if (is_blt) begin 
            id_alu_op <= `ALU_LT;
        end else if (is_bge) begin 
            id_alu_op <= `ALU_GE;
        end else if (is_bltu) begin 
            id_alu_op <= `ALU_LTU;
        end else if (is_bgeu) begin 
            id_alu_op <= `ALU_GEU;
        end else if (is_lui) begin 
            id_alu_op <= `ALU_IMM;
        end else begin 
            id_alu_op <= `ALU_NOP;
        end
    end

    // id_imm_ext
    always @(posedge clk or `RESET_EDGE rst) begin
        if (rst == `RESET_ENABLE) begin 
            id_imm_ext <= `WORD_DATA_W'd0;
        end else if (is_i_type || is_i_load) begin
            id_imm_ext <= imm_i;  
        end else if (is_s_type) begin
            id_imm_ext <= imm_s;  
        end else if (is_b_type) begin
            id_imm_ext <= imm_b;  
        end else if (is_u_type || is_u_auipc) begin
            id_imm_ext <= imm_u;  
        end else if (is_j_type || is_j_jalr) begin
            id_imm_ext <= imm_j;  
        end else begin
            id_imm_ext <= `WORD_DATA_W'd0;
        end
    end

    // id_rs1_data && id_rs2_data
    always @(posedge clk or `RESET_EDGE rst) begin
        if (rst == `RESET_ENABLE) begin 
            id_rs1_data <= `WORD_DATA_W'd0;
            id_rs2_data <= `WORD_DATA_W'd0;
        end else begin
            if (rs1 == id_dst_addr && id_gpr_we_ == `ENABLE_) begin // ex阶段直通
                id_rs1_data <= alu_out;
            end else if (rs1 == ex_dst_addr && ex_gpr_we_ == `ENABLE_) begin // mem阶段直通
                id_rs1_data <= (ex_load == `ENABLE) ? mem_out : ex_alu_res;
            end else if (rs1 == gpr_w_addr && gpr_we_ == `ENABLE_) begin // wb阶段直通
                id_rs1_data <= gpr_w_data;
            end else begin
                id_rs1_data <= rs1_data;
            end
            
            if (rs2 == id_dst_addr && id_gpr_we_ == `ENABLE_) begin // ex阶段直通
                id_rs2_data <= alu_out;
            end else if (rs2 == ex_dst_addr && ex_gpr_we_ == `ENABLE_) begin // mem阶段直通
                id_rs2_data <= (ex_load == `ENABLE) ? mem_out : ex_alu_res;
            end else if (rs2 == gpr_w_addr && gpr_we_ == `ENABLE_) begin // wb阶段直通
                id_rs2_data <= gpr_w_data;
            end else begin
                id_rs2_data <= rs2_data;
            end
        end
    end

endmodule
