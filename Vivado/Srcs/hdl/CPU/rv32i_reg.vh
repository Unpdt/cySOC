`ifndef __RV32I_REG_H__
`define __RV32I_REG_H__

`define REG_IDX_W 5 // 寄存器编号宽度

// 寄存器定义
// 通用寄存器编号
`define REG_X0  `REG_IDX_W'b00000  // 零寄存器 (zero)
`define REG_X1  `REG_IDX_W'b00001  // 返回地址 (ra)
`define REG_X2  `REG_IDX_W'b00010  // 栈指针 (sp)
`define REG_X3  `REG_IDX_W'b00011  // 全局指针 (gp)
`define REG_X4  `REG_IDX_W'b00100  // 线程指针 (tp)
`define REG_X5  `REG_IDX_W'b00101  // 临时寄存器/备用链接寄存器 (t0)
`define REG_X6  `REG_IDX_W'b00110  // 临时寄存器 (t1)
`define REG_X7  `REG_IDX_W'b00111  // 临时寄存器 (t2)
`define REG_X8  `REG_IDX_W'b01000  // 保存寄存器/帧指针 (s0/fp)
`define REG_X9  `REG_IDX_W'b01001  // 保存寄存器 (s1)
`define REG_X10 `REG_IDX_W'b01010  // 函数参数/返回值 (a0)
`define REG_X11 `REG_IDX_W'b01011  // 函数参数/返回值 (a1)
`define REG_X12 `REG_IDX_W'b01100  // 函数参数 (a2)
`define REG_X13 `REG_IDX_W'b01101  // 函数参数 (a3)
`define REG_X14 `REG_IDX_W'b01110  // 函数参数 (a4)
`define REG_X15 `REG_IDX_W'b01111  // 函数参数 (a5)
`define REG_X16 `REG_IDX_W'b10000  // 临时寄存器 (a6)
`define REG_X17 `REG_IDX_W'b10001  // 临时寄存器 (a7)
`define REG_X18 `REG_IDX_W'b10010  // 保存寄存器 (s2)
`define REG_X19 `REG_IDX_W'b10011  // 保存寄存器 (s3)
`define REG_X20 `REG_IDX_W'b10100  // 保存寄存器 (s4)
`define REG_X21 `REG_IDX_W'b10101  // 保存寄存器 (s5)
`define REG_X22 `REG_IDX_W'b10110  // 保存寄存器 (s6)
`define REG_X23 `REG_IDX_W'b10111  // 保存寄存器 (s7)
`define REG_X24 `REG_IDX_W'b11000  // 保存寄存器 (s8)
`define REG_X25 `REG_IDX_W'b11001  // 保存寄存器 (s9)
`define REG_X26 `REG_IDX_W'b11010  // 保存寄存器 (s10)
`define REG_X27 `REG_IDX_W'b11011  // 保存寄存器 (s11)
`define REG_X28 `REG_IDX_W'b11100  // 临时寄存器 (t3)
`define REG_X29 `REG_IDX_W'b11101  // 临时寄存器 (t4)
`define REG_X30 `REG_IDX_W'b11110  // 临时寄存器 (t5)
`define REG_X31 `REG_IDX_W'b11111  // 临时寄存器 (t6)

// 寄存器别名（ABI名称）
`define REG_ZERO `REG_X0   // 硬连线零
`define REG_RA   `REG_X1   // 返回地址
`define REG_SP   `REG_X2   // 栈指针
`define REG_GP   `REG_X3   // 全局指针
`define REG_TP   `REG_X4   // 线程指针
`define REG_T0   `REG_X5   // 临时寄存器0
`define REG_T1   `REG_X6   // 临时寄存器1
`define REG_T2   `REG_X7   // 临时寄存器2
`define REG_S0   `REG_X8   // 保存寄存器0/帧指针
`define REG_FP   `REG_X8   // 帧指针
`define REG_S1   `REG_X9   // 保存寄存器1
`define REG_A0   `REG_X10  // 函数参数/返回值0
`define REG_A1   `REG_X11  // 函数参数/返回值1
`define REG_A2   `REG_X12  // 函数参数2
`define REG_A3   `REG_X13  // 函数参数3
`define REG_A4   `REG_X14  // 函数参数4
`define REG_A5   `REG_X15  // 函数参数5
`define REG_A6   `REG_X16  // 函数参数6
`define REG_A7   `REG_X17  // 函数参数7
`define REG_S2   `REG_X18  // 保存寄存器2
`define REG_S3   `REG_X19  // 保存寄存器3
`define REG_S4   `REG_X20  // 保存寄存器4
`define REG_S5   `REG_X21  // 保存寄存器5
`define REG_S6   `REG_X22  // 保存寄存器6
`define REG_S7   `REG_X23  // 保存寄存器7
`define REG_S8   `REG_X24  // 保存寄存器8
`define REG_S9   `REG_X25  // 保存寄存器9
`define REG_S10  `REG_X26  // 保存寄存器10
`define REG_S11  `REG_X27  // 保存寄存器11
`define REG_T3   `REG_X28  // 临时寄存器3
`define REG_T4   `REG_X29  // 临时寄存器4
`define REG_T5   `REG_X30  // 临时寄存器5
`define REG_T6   `REG_X31  // 临时寄存器6

// 控制状态寄存器 (CSR) 地址
`define CSR_USTATUS    12'h000  // 用户状态寄存器
`define CSR_UIE        12'h004  // 用户中断使能
`define CSR_UTVEC      12'h005  // 用户陷阱向量基地址
`define CSR_USCRATCH   12'h040  // 用户临时寄存器
`define CSR_UEPC       12'h041  // 用户异常程序计数器
`define CSR_UCAUSE     12'h042  // 用户异常原因
`define CSR_UTVAL      12'h043  // 用户陷阱值
`define CSR_UIP        12'h044  // 用户中断待处理
`define CSR_CYCLE      12'hC00  // 周期计数器
`define CSR_TIME       12'hC01  // 定时器
`define CSR_INSTRET    12'hC02  // 指令退役计数器
`define CSR_CYCLEH     12'hC80  // 周期计数器高32位
`define CSR_TIMEH      12'hC81  // 定时器高32位
`define CSR_INSTRETH   12'hC82  // 指令退役计数器高32位

`endif
