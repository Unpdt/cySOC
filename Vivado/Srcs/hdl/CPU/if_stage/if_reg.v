`include "../rv32i.vh"

module if_reg(
    input  wire                 clk,
    input  wire                 rst,

    // 控制信号
    input  wire                 flush,

    // 跳转信号
    input  wire                 jump,
    input  wire                 branch_valid,
    input  wire [`WordDataBus]  new_pc,

    // 接口
    output reg  [`WordDataBus]  PC,
    input  wire [`WordDataBus]  insn,

    // 流水线寄存器
    output reg  [`WordDataBus]  if_pc,
    output reg  [`WordDataBus]  if_insn
);

    wire sel;
    reg [`WordDataBus] r_pc;

    assign sel = jump | branch_valid;

    always @(posedge clk or `RESET_EDGE rst) begin
        if (rst == `RESET_ENABLE) begin
            PC <= `RESET_PC;
        end else begin
            PC <= sel ? new_pc : PC + `PC_INCR;
        end
    end

    always @(posedge clk or `RESET_EDGE rst) begin
        if (rst == `RESET_ENABLE) begin
            r_pc <= {`WORD_DATA_W{1'b0}};
        end else begin
            r_pc <= PC;
        end
    end

    always @(posedge clk or `RESET_EDGE rst) begin
        if (rst == `RESET_ENABLE) begin
            if_pc <= {`WORD_DATA_W{1'b0}};
            if_insn <= `NOP;
        end else begin
            if_pc <= r_pc;
            if_insn <= flush ? `NOP : insn;
        end
    end


endmodule