`include "rv32i.vh"

module cpu_top(
    input  wire                 clk,
    input  wire                 rst,

    // 指令总线接口
    output wire [`WordAddrBus]  insn_addr,
    output wire                 insn_rw,
    input  wire [`WordDataBus]  insn_rd_data,

    // 数据总线接口
    output wire [`WordAddrBus]  data_addr,
    output wire [3:0]           data_rw,
    output wire                 data_en,
    input  wire [`WordDataBus]  data_rd_data,
    output wire [`WordDataBus]  data_wr_data
);

    // 流水线寄存器信号
    // IF/ID 阶段
    wire [`WordDataBus]  if_pc;
    wire [`WordDataBus]  if_insn;
    
    // ID/EX 阶段
    wire [`WordDataBus]  id_pc;
    wire                id_branch;
    wire                id_jump;
    wire                id_load;
    wire                id_store;
    wire [`LsTypeBus]   id_ls_type;
    wire                id_gpr_we_;
    wire [`REG_IDX_W-1:0] id_dst_addr;
    wire                id_alu_src;
    wire [`OpcodeBus]   id_alu_op;
    wire [`WordDataBus] id_imm_ext;
    wire [`WordDataBus] id_rs1_data;
    wire [`WordDataBus] id_rs2_data;
    
    // EX/MEM 阶段
    wire [`WordDataBus] ex_pc;
    wire                ex_branch;
    wire                ex_jump;
    wire                ex_load;
    wire                ex_store;
    wire [`LsTypeBus]   ex_ls_type;
    wire                ex_gpr_we_;
    wire [`REG_IDX_W-1:0] ex_dst_addr;
    wire [`WordDataBus] alu_out;
    wire [`WordDataBus] ex_alu_res;
    wire [`WordDataBus] ex_mem_wr_data;
    
    // MEM/WB 阶段
    wire [`WordDataBus] mem_out;
    wire [`WordDataBus] mem_pc;
    wire                mem_branch;
    wire                mem_jump;
    wire                mem_to_reg;
    wire                mem_gpr_we_;
    wire [`REG_IDX_W-1:0] mem_dst_addr;
    wire [`WordDataBus] mem_alu_res;
    wire [`WordDataBus] mem_mem_out;
    
    // 控制信号
    wire                flush;
    wire                stall;
    wire                jump;
    wire                branch_valid;
    wire [`WordDataBus] new_pc;
    
    // GPR 接口
    wire [`REG_IDX_W-1:0] rs1_addr;
    wire [`REG_IDX_W-1:0] rs2_addr;
    wire [`WordDataBus]  rs1_data;
    wire [`WordDataBus]  rs2_data;
    wire [`WordDataBus]  gpr_w_data;
    wire [`REG_IDX_W-1:0] gpr_w_addr;
    wire                gpr_we_;

    // if_top 实例化
    if_top inst_if_top (
        .clk        (clk),
        .rst        (rst),
        .flush      (flush),
        .stall      (stall),
        .jump       (jump),
        .branch_valid (branch_valid),
        .new_pc     (new_pc),
        .addr       (insn_addr),
        .rw         (insn_rw),
        .rd_data    (insn_rd_data),
        .if_pc      (if_pc),
        .if_insn    (if_insn)
    );

    // id_top 实例化
    id_top inst_id_top (
        .clk           (clk),
        .rst           (rst),
        .flush         (flush),
        .stall         (stall),
        .if_pc         (if_pc),
        .if_insn       (if_insn),
        .rs1_addr      (rs1_addr),
        .rs2_addr      (rs2_addr),
        .rs1_data      (rs1_data),
        .rs2_data      (rs2_data),
        .alu_out       (alu_out),
        .ex_dst_addr   (ex_dst_addr),
        .ex_gpr_we_    (ex_gpr_we_),
        .ex_load       (ex_load),
        .ex_alu_res    (ex_alu_res),
        .mem_out       (mem_out),
        .gpr_w_addr    (gpr_w_addr),
        .gpr_we_       (gpr_we_),
        .gpr_w_data    (gpr_w_data),
        .id_pc         (id_pc),
        .id_branch     (id_branch),
        .id_jump       (id_jump),
        .id_load       (id_load),
        .id_store      (id_store),
        .id_ls_type    (id_ls_type),
        .id_gpr_we_    (id_gpr_we_),
        .id_dst_addr   (id_dst_addr),
        .id_alu_src    (id_alu_src),
        .id_alu_op     (id_alu_op),
        .id_imm_ext    (id_imm_ext),
        .id_rs1_data   (id_rs1_data),
        .id_rs2_data   (id_rs2_data)
    );

    // ex_top 实例化
    ex_top inst_ex_top (
        .clk            (clk),
        .rst            (rst),
        .id_pc          (id_pc),
        .id_branch      (id_branch),
        .id_jump        (id_jump),
        .id_load        (id_load),
        .id_store       (id_store),
        .id_ls_type     (id_ls_type),
        .id_gpr_we_     (id_gpr_we_),
        .id_dst_addr    (id_dst_addr),
        .id_alu_src     (id_alu_src),
        .id_alu_op      (id_alu_op),
        .id_imm_ext     (id_imm_ext),
        .id_rs1_data    (id_rs1_data),
        .id_rs2_data    (id_rs2_data),
        .flush          (flush),
        .new_pc         (new_pc),
        .alu_out        (alu_out),
        .branch_valid   (branch_valid),
        .ex_pc          (ex_pc),
        .ex_load        (ex_load),
        .ex_store       (ex_store),
        .ex_ls_type     (ex_ls_type),
        .ex_gpr_we_     (ex_gpr_we_),
        .ex_dst_addr    (ex_dst_addr),
        .ex_alu_res     (ex_alu_res),
        .ex_mem_wr_data (ex_mem_wr_data)
    );

    // mem_top 实例化
    mem_top inst_mem_top (
        .clk            (clk),
        .rst            (rst),
        .id_load        (id_load),
        .alu_out        (alu_out),
        .ex_pc          (ex_pc),
        .ex_load        (ex_load),
        .ex_store       (ex_store),
        .ex_ls_type     (ex_ls_type),
        .ex_gpr_we_     (ex_gpr_we_),
        .ex_dst_addr    (ex_dst_addr),
        .ex_alu_res     (ex_alu_res),
        .ex_mem_wr_data (ex_mem_wr_data),
        .bus_addr       (data_addr),
        .bus_rw         (data_rw),
        .bus_en         (data_en),
        .bus_rd_data    (data_rd_data),
        .bus_wr_data    (data_wr_data),
        .mem_out        (mem_out),
        .mem_pc         (mem_pc),
        .mem_mem_out    (mem_mem_out),
        .mem_to_reg     (mem_to_reg),
        .mem_gpr_we_    (mem_gpr_we_),
        .mem_dst_addr   (mem_dst_addr),
        .mem_alu_res    (mem_alu_res)
    );

    // wb_top 实例化
    wb_top inst_wb_top (
        .mem_pc         (mem_pc),
        .mem_mem_out    (mem_mem_out),
        .mem_to_reg     (mem_to_reg),
        .mem_gpr_we_    (mem_gpr_we_),
        .mem_dst_addr   (mem_dst_addr),
        .mem_alu_res    (mem_alu_res),
        .gpr_w_data     (gpr_w_data),
        .gpr_w_addr     (gpr_w_addr),
        .gpr_we_        (gpr_we_)
    );

    // gpr 实例化
    gpr inst_gpr (
        .clk        (clk),
        .reset      (rst),
        .rd_addr1   (rs1_addr),
        .rd_addr2   (rs2_addr),
        .rd_data1   (rs1_data),
        .rd_data2   (rs2_data),
        .we         (~gpr_we_), // 注意：gpr_we_是低有效，而gpr模块的we是高有效
        .wr_addr    (gpr_w_addr),
        .wr_data    (gpr_w_data)
    );

    // 控制信号连接
    assign jump = id_jump;

endmodule
