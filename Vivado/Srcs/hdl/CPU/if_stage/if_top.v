`include "../rv32i.vh"


module if_top(
    input  wire                 clk,
    input  wire                 rst,

    // 控制信号
    input  wire                 flush,
    input  wire                 stall,

    // 跳转信号
    input  wire                 jump,
    input  wire                 branch_valid,
    input  wire [`WordDataBus]  new_pc,

    // 指令总线接口
    output wire [`WordAddrBus]  addr,
    output wire                 rw,
    input  wire [`WordDataBus]  rd_data,

    // 流水线寄存器
    output wire [`WordDataBus]  if_pc,
    output wire [`WordDataBus]  if_insn
);

    // 内部连线
    wire [`WordDataBus] PC;
    wire [`WordDataBus] insn;

    // bus_if 实例化
    if_bus inst_if_bus (
        .PC       (PC),
        .insn     (insn),
        .addr     (addr),
        .rw       (rw),
        .rd_data  (rd_data)
    );

    // if_reg 实例化
    if_reg inst_if_reg (
        .clk        (clk),
        .rst        (rst),
        .flush      (flush),
        .stall      (stall),
        .jump       (jump),
        .branch_valid (branch_valid),
        .new_pc     (new_pc),
        .PC         (PC),
        .insn       (insn),
        .if_pc      (if_pc),
        .if_insn    (if_insn)
    );

endmodule
