`include "global_config.vh"

module cySOC(
    input  wire                 clk,
    input  wire                 rst
);

    // 连接CPU和RAM的信号
    wire [`WordAddrBus]  insn_addr;
    wire                 insn_rw;
    wire [`WordDataBus]  insn_rd_data;
    
    wire [`WordAddrBus]  data_addr;
    wire [3:0]           data_rw;
    wire                 data_en;
    wire [`WordDataBus]  data_rd_data;
    wire [`WordDataBus]  data_wr_data;

    // CPU实例化
    cpu_top inst_cpu_top (
        .clk           (clk),
        .rst           (rst),
        .insn_addr     (insn_addr),
        .insn_rw       (insn_rw),
        .insn_rd_data  (insn_rd_data),
        .data_addr     (data_addr),
        .data_rw       (data_rw),
        .data_en       (data_en),
        .data_rd_data  (data_rd_data),
        .data_wr_data  (data_wr_data)
    );

    // RAM实例化
    ram inst_ram (
        .clk           (clk),
        .rst           (rst),
        .insn_addr     (insn_addr),
        .insn_rw       (insn_rw),
        .insn_rd_data  (insn_rd_data),
        .data_addr     (data_addr),
        .data_rw       (data_rw),
        .data_en       (data_en),
        .data_rd_data  (data_rd_data),
        .data_wr_data  (data_wr_data)
    );

endmodule
