`include "ram.vh"

module ram(
    input  wire                 clk,
    input  wire                 rst,
    
    // 指令总线接口
    input  wire [`WordAddrBus]  insn_addr,
    input  wire                 insn_rw,
    output wire [`WordDataBus]  insn_rd_data,

    // 数据总线接口
    input  wire [`WordAddrBus]  data_addr,
    input  wire [3:0]           data_rw,
    input  wire                 data_en,
    output wire [`WordDataBus]  data_rd_data,
    input  wire [`WordDataBus]  data_wr_data
); 

    // 指令ram
    wire [10:0] addra;
    wire wea;
    wire [31:0] douta;

    assign addra = insn_addr[10:0];
    assign wea = ~insn_rw;
    assign insn_rd_data = douta;

    d_ram inst_d_ram (
        .clka(clk),    // input wire clka
        .ena(data_en),      // input wire ena
        .wea(~data_rw),      // input wire [3 : 0] wea
        .addra(data_addr),  // input wire [9 : 0] addra
        .dina(data_wr_data),    // input wire [31 : 0] dina
        .douta(data_rd_data)  // output wire [31 : 0] douta
    );

    i_ram inst_i_ram (
        .clka(clk),    // input wire clka
        .wea(wea),      // input wire [0 : 0] wea
        .addra(addra),  // input wire [9 : 0] addra
        .dina(),    // input wire [31 : 0] dina
        .douta(douta)  // output wire [31 : 0] douta
    );

endmodule