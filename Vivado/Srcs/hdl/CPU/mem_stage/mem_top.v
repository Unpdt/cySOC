`include "../rv32i.vh"

module mem_top(
    input  wire                     clk,
    input  wire                     rst,

    input  wire                     id_load,
    input  wire [`WordDataBus]      alu_out,

    // ex 阶段寄存器输入
    input  wire [`WordDataBus]      ex_pc,
    input  wire                     ex_load,
    input  wire                     ex_store,
    input  wire [`LsTypeBus]        ex_ls_type,
    input  wire                     ex_gpr_we_,
    input  wire [`REG_IDX_W-1:0]    ex_dst_addr,
    input  wire [`WordDataBus]      ex_alu_res,
    input  wire [`WordDataBus]      ex_mem_wr_data,

    // 数据总线接口
    output wire [`WordAddrBus]      bus_addr,
    output wire                     bus_rw,
    output wire                     bus_en,
    input  wire [`WordDataBus]      bus_rd_data,
    output wire [`WordDataBus]      bus_wr_data,

    output wire [`WordDataBus]      mem_out,

    // 流水线寄存器输出
    output wire [`WordDataBus]      mem_pc,
    output wire [`WordDataBus]      mem_mem_out,
    output wire                     mem_to_reg,
    output wire                     mem_gpr_we_,
    output wire [`REG_IDX_W-1:0]    mem_dst_addr,
    output wire [`WordDataBus]      mem_alu_res
);

    // 内部连线信号
    wire [`WordAddrBus]      ctrl_addr;
    wire [`WordDataBus]      ctrl_wr_data;
    wire                     ctrl_rw;
    wire                     ctrl_en;
    wire [`WordDataBus]      ctrl_rd_data;
    wire [`WordDataBus]      ctrl_mem_out;

    assign mem_out = ctrl_mem_out;

    // mem_ctrl 模块例化
    mem_ctrl inst_mem_ctrl (
        .id_load(id_load),
        .ex_store(ex_store),
        .ex_ls_type(ex_ls_type),
        .alu_out(alu_out),
        .ex_alu_res(ex_alu_res),
        .ex_mem_wr_data(ex_mem_wr_data),
        .addr(ctrl_addr),
        .wr_data(ctrl_wr_data),
        .rd_data(ctrl_rd_data),
        .rw(ctrl_rw),
        .en(ctrl_en),
        .mem_out(ctrl_mem_out)
    );

    // mem_bus 模块例化
    mem_bus inst_mem_bus (
        .addr(ctrl_addr),
        .wr_data(ctrl_wr_data),
        .rd_data(ctrl_rd_data),
        .rw(ctrl_rw),
        .en(ctrl_en),
        .bus_addr(bus_addr),
        .bus_rw(bus_rw),
        .bus_en(bus_en),
        .bus_rd_data(bus_rd_data),
        .bus_wr_data(bus_wr_data)
    );

    // mem_reg 模块例化
    mem_reg inst_mem_reg (
        .clk(clk),
        .rst(rst),
        .ex_pc(ex_pc),
        .ex_load(ex_load),
        .ex_gpr_we_(ex_gpr_we_),
        .ex_dst_addr(ex_dst_addr),
        .ex_alu_res(ex_alu_res),
        .mem_out(mem_out),
        .mem_pc(mem_pc),
        .mem_mem_out(mem_mem_out),
        .mem_to_reg(mem_to_reg),
        .mem_gpr_we_(mem_gpr_we_),
        .mem_dst_addr(mem_dst_addr),
        .mem_alu_res(mem_alu_res)
    );

endmodule
