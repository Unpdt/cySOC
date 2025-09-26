`include "../rv32i.vh"

module mem_ctrl(
    // input  wire                     clk,
    // input  wire                     rst,

    // ex 阶段寄存器输入
    input  wire                     id_load,
    input  wire                     ex_store,
    input  wire [`LsTypeBus]        ex_ls_type,
    input  wire [`WordDataBus]      alu_out,
    input  wire [`WordDataBus]      ex_alu_res,
    input  wire [`WordDataBus]      ex_mem_wr_data,

    output wire [`WordAddrBus]      addr,
    output wire [`WordDataBus]      wr_data,
    input  wire [`WordDataBus]      rd_data,
    output wire                     rw,
    output wire                     en,

    output reg  [`WordDataBus]      mem_out
);

    wire [1:0] addr_offset;
    wire [`WordAddrBus] v_addr;
    reg [`WordDataBus] data_offset;

    // 使用前一阶段的地址来load 抵消读操作的延迟
    assign v_addr = alu_out - `INIT_DATA_ADDR;
    assign addr = v_addr[31:2];
    assign wr_data = ex_mem_wr_data;
    assign rw = (id_load == `ENABLE) ? `READ : `WRITE;
    assign en = (id_load == `ENABLE || ex_store == `ENABLE) ? `ENABLE : `DISABLE;

    assign addr_offset = ex_alu_res[1:0];

    always @(*) begin
        case (ex_ls_type)
            `LS_TYPE_BYTE: begin
                case (addr_offset)
                    2'b00: data_offset = rd_data[7:0];
                    2'b01: data_offset = rd_data[15:8];
                    2'b10: data_offset = rd_data[23:16];
                    2'b11: data_offset = rd_data[31:24];
                endcase
                mem_out = `LOAD_BYTE(data_offset);
            end
            `LS_TYPE_HALF: begin
                case (addr_offset)
                    2'b00: data_offset = rd_data[15:0];
                    2'b10: data_offset = rd_data[31:16];
                    default: data_offset = 32'd00000000; // 需要抛出异常
                endcase
                mem_out = `LOAD_HALF(data_offset);
            end
            `LS_TYPE_WORD:  mem_out = `LOAD_WORD(rd_data);
            `LS_TYPE_UBYTE: begin
                case (addr_offset)
                    2'b00: data_offset = rd_data[7:0];
                    2'b01: data_offset = rd_data[15:8];
                    2'b10: data_offset = rd_data[23:16];
                    2'b11: data_offset = rd_data[31:24];
                endcase
                mem_out = `LOAD_UBYTE(data_offset);
            end
            `LS_TYPE_UHALF: begin
                case (addr_offset)
                    2'b00: data_offset = rd_data[15:0];
                    2'b10: data_offset = rd_data[31:16];
                    default: data_offset = 32'd00000000; // 需要抛出异常
                endcase
                mem_out = `LOAD_UHALF(data_offset);
            end
            default: begin
                data_offset = `LOAD_WORD(rd_data);
                mem_out = `LOAD_WORD(rd_data);
            end
        endcase
    end

endmodule