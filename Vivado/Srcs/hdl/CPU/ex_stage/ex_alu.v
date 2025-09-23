`include "../rv32i.vh"

module ex_alu (
    input  wire [`WordDataBus]  data1,
    input  wire [`WordDataBus]  data2,
    input  wire [`OpcodeBus]    alu_op,
    output wire [`WordDataBus]  alu_out,

    input  wire [`WordDataBus]  id_pc,
    output wire [`WordDataBus]  target_addr
);

    reg [`WordDataBus] alu_result;

    // ALU 运算实现
    always @(*) begin
        case (alu_op)
            `ALU_ADD:  alu_result = data1 + data2;                    // 加法
            `ALU_SUB:  alu_result = data1 - data2;                    // 减法
            `ALU_AND:  alu_result = data1 & data2;                    // 与运算
            `ALU_OR:   alu_result = data1 | data2;                    // 或运算
            `ALU_XOR:  alu_result = data1 ^ data2;                    // 异或运算
            `ALU_SLL:  alu_result = data1 << data2[4:0];              // 逻辑左移
            `ALU_SRL:  alu_result = data1 >> data2[4:0];              // 逻辑右移
            `ALU_SRA:  alu_result = $signed(data1) >>> data2[4:0];    // 算术右移
            `ALU_SLT:  alu_result = ($signed(data1) < $signed(data2)) ? 32'd1 : 32'd0;  // 有符号小于比较
            `ALU_SLTU: alu_result = (data1 < data2) ? 32'd1 : 32'd0;  // 无符号小于比较
            `ALU_EQ:   alu_result = (data1 == data2) ? 32'd1 : 32'd0; // 相等比较
            `ALU_NE:   alu_result = (data1 != data2) ? 32'd1 : 32'd0; // 不相等比较
            `ALU_LT:   alu_result = ($signed(data1) < $signed(data2)) ? 32'd1 : 32'd0;  // 有符号小于比较
            `ALU_GE:   alu_result = ($signed(data1) >= $signed(data2)) ? 32'd1 : 32'd0; // 有符号大于等于比较
            `ALU_LTU:  alu_result = (data1 < data2) ? 32'd1 : 32'd0;  // 无符号小于比较
            `ALU_GEU:  alu_result = (data1 >= data2) ? 32'd1 : 32'd0; // 无符号大于等于比较
            `ALU_IMM:  alu_result = data2;
            `ALU_NOP:  alu_result = 32'd0;                            // NOP 操作
            default:   alu_result = 32'd0;                            // 默认情况
        endcase
    end

    assign alu_out = alu_result;

    // 专用地址加法器
    assign target_addr = id_pc + `PC_INCR + data2;

endmodule