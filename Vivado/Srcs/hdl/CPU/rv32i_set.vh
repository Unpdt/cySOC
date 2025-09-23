`ifndef __RV32I_SET_H__
`define __RV32I_SET_H__

// 操作码
`define OPCODE_W 7
`define OpcodeLoc 6:0

// 目标寄存器
`define REG_DST_W 5
`define RegDstLoc 11:7

// 源寄存器
`define REG_SRC1_W 5
`define REG_SRC2_W 5
`define RegSrc1Loc 19:15
`define RegSrc2Loc 24:20

// 功能码3
`define FUNC3_W 3
`define Func3Loc 14:12

// 功能码7
`define FUNC7_W 7
`define Func7Loc 31:25


// 指令类型定义
`define R_TYPE `OPCODE_W'b0110011 // 寄存器-寄存器操作
`define I_TYPE `OPCODE_W'b0010011 // 立即数操作
`define I_LOAD `OPCODE_W'b0000011 // 加载指令
`define S_TYPE `OPCODE_W'b0100011 // 存储指令
`define B_TYPE `OPCODE_W'b1100011 // 条件分支指令
`define U_TYPE `OPCODE_W'b0110111 // 长立即数 (LUI)
`define U_AUIPC `OPCODE_W'b0010111 // PC相对地址 (AUIPC)
`define J_TYPE `OPCODE_W'b1101111 // 无条件跳转 (JAL)
`define J_JALR `OPCODE_W'b1100111 // 间接跳转 (JALR)
`define SYSTEM `OPCODE_W'b1110011 // 系统指令

// NOP 指令
`define NOP `WORD_DATA_W'd0

// 移位运算指令
`define SLL    {`FUNC7_W'b0000000, `FUNC3_W'b001}  // 逻辑左移
`define SLLI   {`FUNC7_W'b0000000, `FUNC3_W'b001}  // 立即数逻辑左移
`define SRL    {`FUNC7_W'b0000000, `FUNC3_W'b101}  // 逻辑右移
`define SRLI   {`FUNC7_W'b0000000, `FUNC3_W'b101}  // 立即数逻辑右移
`define SRA    {`FUNC7_W'b0100000, `FUNC3_W'b101}  // 算术右移
`define SRAI   {`FUNC7_W'b0100000, `FUNC3_W'b101}  // 立即数算术右移

// 算术运算指令
`define ADD    {`FUNC7_W'b0000000, `FUNC3_W'b000}  // 加法
`define ADDI   `FUNC3_W'b000                       // 立即数加法
`define SUB    {`FUNC7_W'b0100000, `FUNC3_W'b000}  // 减法
`define LUI    `U_TYPE                             // 加载高位立即数
`define AUIPC  `U_AUIPC                            // PC相对地址

// 逻辑运算指令
`define XOR    {`FUNC7_W'b0000000, `FUNC3_W'b100}  // 异或
`define XORI   `FUNC3_W'b100                       // 立即数异或
`define OR     {`FUNC7_W'b0000000, `FUNC3_W'b110}  // 或
`define ORI    `FUNC3_W'b110                       // 立即数或
`define AND    {`FUNC7_W'b0000000, `FUNC3_W'b111}  // 与
`define ANDI   `FUNC3_W'b111                       // 立即数与

// 比较运算指令
`define SLT    {`FUNC7_W'b0000000, `FUNC3_W'b010}  // 有符号小于设置
`define SLTI   `FUNC3_W'b010                       // 立即数有符号小于设置
`define SLTU   `FUNC3_W'b011                       // 无符号小于设置
`define SLTIU  {`FUNC7_W'b0000000, `FUNC3_W'b011}  // 立即数无符号小于设置

// 分支指令
`define BEQ    `FUNC3_W'b000  // 相等分支
`define BNE    `FUNC3_W'b001  // 不相等分支
`define BLT    `FUNC3_W'b100  // 有符号小于分支
`define BGE    `FUNC3_W'b101  // 有符号大于等于分支
`define BLTU   `FUNC3_W'b110  // 无符号小于分支
`define BGEU   `FUNC3_W'b111  // 无符号大于等于分支

// 跳转指令
`define JAL    `J_TYPE    // 无条件跳转并链接
`define JALR   {`FUNC7_W'b0000000, `FUNC3_W'b000}  // 间接跳转并链接

// 同步指令
`define FENCE  {`FUNC7_W'b0000000, `FUNC3_W'b000}  // 内存屏障
`define FENCEI {`FUNC7_W'b0000000, `FUNC3_W'b001}  // 指令流同步

// 系统指令
`define ECALL  {`FUNC7_W'b0000000, `FUNC3_W'b000}  // 环境调用
`define EBREAK {`FUNC7_W'b0000000, `FUNC3_W'b000}  // 断点

// 状态寄存器指令
`define CSRRW  `FUNC3_W'b001  // CSR读写
`define CSRRS  `FUNC3_W'b010  // CSR读置位
`define CSRRC  `FUNC3_W'b011  // CSR读清零
`define CSRRWI `FUNC3_W'b101  // 立即数CSR读写
`define CSRRSI `FUNC3_W'b110  // 立即数CSR读置位
`define CSRRCI `FUNC3_W'b111  // 立即数CSR读清零

// 立即数提取宏
`define IMM_I(instruction) {{20{instruction[31]}}, instruction[31:20]}
`define IMM_S(instruction) {{20{instruction[31]}}, instruction[31:25], instruction[11:7]}
`define IMM_B(instruction) {{19{instruction[31]}}, instruction[31], instruction[7], instruction[30:25], instruction[11:8], 1'b0}
`define IMM_U(instruction) {instruction[31:12], 12'b0}
`define IMM_J(instruction) {{11{instruction[31]}}, instruction[31], instruction[19:12], instruction[20], instruction[30:21], 1'b0}

// 指令解码辅助宏
`define GET_OPCODE(instruction) instruction[`OpcodeLoc]
`define GET_RD(instruction) instruction[`RegDstLoc]
`define GET_RS1(instruction) instruction[`RegSrc1Loc]
`define GET_RS2(instruction) instruction[`RegSrc2Loc]
`define GET_FUNC3(instruction) instruction[`Func3Loc]
`define GET_FUNC7(instruction) instruction[`Func7Loc]

// Load 指令
`define LB     `FUNC3_W'b000  // 加载字节（有符号扩展）
`define LH     `FUNC3_W'b001  // 加载半字（有符号扩展）
`define LW     `FUNC3_W'b010  // 加载字
`define LBU    `FUNC3_W'b100  // 加载字节（无符号扩展）
`define LHU    `FUNC3_W'b101  // 加载半字（无符号扩展）

// Store 指令
`define SB     `FUNC3_W'b000  // 存储字节
`define SH     `FUNC3_W'b001  // 存储半字
`define SW     `FUNC3_W'b010  // 存储字

// 指令验证宏
`define IS_R_TYPE(opcode) (opcode == `R_TYPE)
`define IS_I_TYPE(opcode) (opcode == `I_TYPE)
`define IS_I_LOAD(opcode) (opcode == `I_LOAD)
`define IS_S_TYPE(opcode) (opcode == `S_TYPE)
`define IS_B_TYPE(opcode) (opcode == `B_TYPE)
`define IS_U_TYPE(opcode) (opcode == `U_TYPE)
`define IS_U_AUIPC(opcode) (opcode == `U_AUIPC)
`define IS_J_TYPE(opcode) (opcode == `J_TYPE)
`define IS_J_JALR(opcode) (opcode == `J_JALR)
`define IS_SYSTEM(opcode) (opcode == `SYSTEM)

// ALU 操作码
`define ALU_OP_W 5
`define OpcodeBus `ALU_OP_W-1:0
`define ALU_ADD  `ALU_OP_W'b00000  // 加法
`define ALU_SUB  `ALU_OP_W'b00001  // 减法
`define ALU_AND  `ALU_OP_W'b00010  // 与运算
`define ALU_OR   `ALU_OP_W'b00011  // 或运算
`define ALU_XOR  `ALU_OP_W'b00100  // 异或运算
`define ALU_SLL  `ALU_OP_W'b00101  // 逻辑左移
`define ALU_SRL  `ALU_OP_W'b00110  // 逻辑右移
`define ALU_SRA  `ALU_OP_W'b00111  // 算术右移
`define ALU_SLT  `ALU_OP_W'b01000  // 有符号比较小于
`define ALU_SLTU `ALU_OP_W'b01001  // 无符号比较小于
`define ALU_EQ   `ALU_OP_W'b01010  // 相等比较
`define ALU_NE   `ALU_OP_W'b01011  // 不相等比较
`define ALU_LT   `ALU_OP_W'b01100  // 有符号小于比较
`define ALU_GE   `ALU_OP_W'b01101  // 有符号大于等于比较
`define ALU_LTU  `ALU_OP_W'b01110  // 无符号小于比较
`define ALU_GEU  `ALU_OP_W'b01111  // 无符号大于等于比较
`define ALU_IMM  `ALU_OP_W'b10000  // 直接取立即数
`define ALU_NOP  `ALU_OP_W'b11111  // NOP

// 常用常量
`define ZERO_REG 5'b00000  // 零寄存器
`define XLEN 32           // 寄存器位宽
`define PC_INCR 1         // PC增量（字节地址）
`define WORD_BYTES 4      // 字字节数
`define HALFWORD_BYTES 2  // 半字字节数
`define BYTE_BYTES 1      // 字节数

// PC 初始化地址
`define RESET_PC `WORD_DATA_W'd0

`define ALU_SRC_IMM 0
`define ALU_SRC_REG 1

`endif
