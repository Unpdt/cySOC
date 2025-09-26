`include "../rv32i.vh"

module if_reg(
    input  wire                 clk,
    input  wire                 rst,

    // 控制信号
    input  wire                 flush,
    input  wire                 stall,

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
    reg [`WordDataBus] r_pc; // 为了让if_pc和if_insn同步

    assign sel = jump | branch_valid;

    always @(posedge clk or `RESET_EDGE rst) begin
        if (rst == `RESET_ENABLE) begin
            PC <= `RESET_PC;
        end else if (stall == `ENABLE) begin
            PC <= PC;
        end else begin
            PC <= sel ? new_pc : PC + `PC_INCR;
        end
    end

    always @(posedge clk or `RESET_EDGE rst) begin
        if (rst == `RESET_ENABLE) begin
            r_pc <= {`WORD_DATA_W{1'b0}};
        end else if (stall == `ENABLE) begin
            r_pc <= r_pc;
        end else begin
            r_pc <= PC;
        end
    end

    always @(posedge clk or `RESET_EDGE rst) begin
        if (rst == `RESET_ENABLE) begin
            if_pc <= {`WORD_DATA_W{1'b0}};
            if_insn <= `NOP;
        end else if (stall == `ENABLE) begin
            if_pc <= if_pc;
            if_insn <= if_insn;
        end else begin
            if_pc <= r_pc;
            if (test_stall == `ENABLE) begin
                if_insn <= test_insn;
            end else begin
                if_insn <= flush ? `NOP : insn;
            end
        end
    end

// ----------------------------- 测试专用 --------------------------
    reg [`WordDataBus] test_insn; // 缓存因为流水线暂停导致insn丢失
    reg test_stall;

    always @(posedge clk or `RESET_EDGE rst) begin
        if (rst == `RESET_ENABLE) begin
            test_insn <= `NOP;
            test_stall <= `DISABLE;
        end else begin
            test_insn <= insn;
            test_stall <= stall;
        end
    end


endmodule