`include "rv32i.vh"

module gpr (
    input  wire                     clk,           // 时钟信号
    input  wire                     reset,         // 复位信号
    input  wire [`REG_IDX_W-1:0]    rd_addr1,      // 读地址1
    input  wire [`REG_IDX_W-1:0]    rd_addr2,      // 读地址2
    output wire [`WORD_DATA_W-1:0]  rd_data1,      // 读数据1
    output wire [`WORD_DATA_W-1:0]  rd_data2,      // 读数据2
    input  wire                     we,            // 写使能
    input  wire [`REG_IDX_W-1:0]    wr_addr,       // 写地址
    input  wire [`WORD_DATA_W-1:0]  wr_data        // 写数据
);

    // 寄存器文件 - 32个32位寄存器
    reg [`WORD_DATA_W-1:0] GPR [0:31];

    // 读端口1
    assign rd_data1 = (rd_addr1 == `REG_ZERO) ? `WORD_DATA_W'd0 : GPR[rd_addr1];

    // 读端口2
    assign rd_data2 = (rd_addr2 == `REG_ZERO) ? `WORD_DATA_W'd0 : GPR[rd_addr2];

    // 写操作
    integer i;
    always @(posedge clk or `RESET_EDGE reset) begin
        if (reset == `RESET_ENABLE) begin
            // 复位时将所有寄存器清零
            for (i = 0; i < 32; i = i + 1) begin
                GPR[i] <= `WORD_DATA_W'd0;
            end
        end else begin
            // 正常写操作
            if (we && (wr_addr != `REG_ZERO)) begin
                GPR[wr_addr] <= wr_data;
            end
        end
    end

endmodule