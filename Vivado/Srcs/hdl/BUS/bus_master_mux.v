`include "bus.vh"

module bus_mas_ter_mux(
    input wire                  clk,
    input wire                  rst,

    // 来自仲裁器的授权信号（低电平有效）
    input wire                  m0_grant_,
    input wire                  m1_grant_,
    input wire                  m2_grant_,
    input wire                  m3_grant_,

    // 主设备0总线接口
    input wire [`WordAddrBus]   m0_addr,
    input wire                  m0_as_,
    input wire                  m0_rw,
    input wire [`WordDataBus]   m0_wr_data,

    // 主设备1总线接口
    input wire [`WordAddrBus]   m1_addr,
    input wire                  m1_as_,
    input wire                  m1_rw,
    input wire [`WordDataBus]   m1_wr_data,

    // 主设备2总线接口
    input wire [`WordAddrBus]   m2_addr,
    input wire                  m2_as_,
    input wire                  m2_rw,
    input wire [`WordDataBus]   m2_wr_data,

    // 主设备3总线接口
    input wire [`WordAddrBus]   m3_addr,
    input wire                  m3_as_,
    input wire                  m3_rw,
    input wire [`WordDataBus]   m3_wr_data,

    // 输出到从设备的总线接口
    output reg [`WordAddrBus]   s_addr,
    output reg                  s_as_,
    output reg                  s_rw,
    output reg [`WordDataBus]   s_wr_data
);

    // 总线多路复用：根据当前主设备选择信号
    always @(*) begin
        if (m0_grant_ == `ENABLE_) begin
            s_addr = m0_addr;
            s_as_ = m0_as_;
            s_rw = m0_rw;
            s_wr_data = m0_wr_data;
        end else if (m1_grant_ == `ENABLE_) begin
            s_addr = m1_addr;
            s_as_ = m1_as_;
            s_rw = m1_rw;
            s_wr_data = m1_wr_data;
        end else if (m2_grant_ == `ENABLE_) begin
            s_addr = m2_addr;
            s_as_ = m2_as_;
            s_rw = m2_rw;
            s_wr_data = m2_wr_data;
        end else if (m3_grant_ == `ENABLE_) begin
            s_addr = m3_addr;
            s_as_ = m3_as_;
            s_rw = m3_rw;
            s_wr_data = m3_wr_data;
        end else begin
            s_addr = {`WORD_ADDR_W{1'b0}};
            s_as_ = `DISABLE_;
            s_rw = `READ;
            s_wr_data = {`WORD_DATA_W{1'b0}};
        end
    end

endmodule
