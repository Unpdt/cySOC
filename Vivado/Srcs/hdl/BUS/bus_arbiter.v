`include "bus.vh"

module bus_arbiter(
    input  wire                 clk,
    input  wire                 rst,

    // 4个独立的请求信号（低电平有效）
    input  wire                 m0_req_,
    input  wire                 m1_req_, 
    input  wire                 m2_req_,
    input  wire                 m3_req_,

    // 4个独立的授权信号（低电平有效）
    output  reg                 m0_grant_,
    output  reg                 m1_grant_,
    output  reg                 m2_grant_,
    output  reg                 m3_grant_
);

    // 内部寄存器
    reg [`BusOwnerBus] owner_reg;

    // 仲裁逻辑 - 使用轮询算法
    always @(posedge clk or `RESET_EDGE rst) begin
        if (rst == `RESET_ENABLE) begin
            // 复位状态
            owner_reg <= `BUS_OWNER_MASTER_0;
        end else begin
            // 轮询仲裁：从当前所有者开始查找下一个请求的主设备
            case (owner_reg)
                `BUS_OWNER_MASTER_0: begin
                    if (m0_req_ == `ENABLE_) owner_reg <= `BUS_OWNER_MASTER_0;
                    else if (m1_req_ == `ENABLE_) owner_reg <= `BUS_OWNER_MASTER_1;
                    else if (m2_req_ == `ENABLE_) owner_reg <= `BUS_OWNER_MASTER_2;
                    else if (m3_req_ == `ENABLE_) owner_reg <= `BUS_OWNER_MASTER_3;
                end
                `BUS_OWNER_MASTER_1: begin
                    if (m1_req_ == `ENABLE_) owner_reg <= `BUS_OWNER_MASTER_1;
                    else if (m2_req_ == `ENABLE_) owner_reg <= `BUS_OWNER_MASTER_2;
                    else if (m3_req_ == `ENABLE_) owner_reg <= `BUS_OWNER_MASTER_3;
                    else if (m0_req_ == `ENABLE_) owner_reg <= `BUS_OWNER_MASTER_0;
                end
                `BUS_OWNER_MASTER_2: begin
                    if (m2_req_ == `ENABLE_) owner_reg <= `BUS_OWNER_MASTER_2;
                    else if (m3_req_ == `ENABLE_) owner_reg <= `BUS_OWNER_MASTER_3;
                    else if (m1_req_ == `ENABLE_) owner_reg <= `BUS_OWNER_MASTER_1;
                    else if (m0_req_ == `ENABLE_) owner_reg <= `BUS_OWNER_MASTER_0;
                end
                `BUS_OWNER_MASTER_3: begin
                    if (m3_req_ == `ENABLE_) owner_reg <= `BUS_OWNER_MASTER_3;
                    else if (m0_req_ == `ENABLE_) owner_reg <= `BUS_OWNER_MASTER_0;
                    else if (m1_req_ == `ENABLE_) owner_reg <= `BUS_OWNER_MASTER_1;
                    else if (m2_req_ == `ENABLE_) owner_reg <= `BUS_OWNER_MASTER_2;
                end
            endcase
        end
    end

    // 组合逻辑：授权信号生成
    always @(*) begin
        // 默认所有授权信号为无效
        m0_grant_ = `DISABLE_;
        m1_grant_ = `DISABLE_;
        m2_grant_ = `DISABLE_;
        m3_grant_ = `DISABLE_;
        case (owner_reg)
            `BUS_OWNER_MASTER_0: m0_grant_ = `ENABLE_;
            `BUS_OWNER_MASTER_1: m1_grant_ = `ENABLE_;
            `BUS_OWNER_MASTER_2: m2_grant_ = `ENABLE_;
            `BUS_OWNER_MASTER_3: m3_grant_ = `ENABLE_;
        endcase
    end

endmodule
