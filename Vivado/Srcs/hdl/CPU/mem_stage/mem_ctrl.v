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
    output reg  [3:0]               rw,
    output wire                     en,

    output reg  [`WordDataBus]      mem_out
);

    wire [1:0] addr_offset;
    wire [`WordAddrBus] v_addr;
    reg [`WordDataBus] data_offset;
    wire [`WordDataBus] rd_data_true;    

    reg [`WordDataBus] wr_data_true;

    // 使用前一阶段的地址来load 抵消读操作的延迟
    assign v_addr = (ex_store == `ENABLE) ? ex_alu_res - `INIT_DATA_ADDR : alu_out - `INIT_DATA_ADDR;
    assign addr = v_addr[31:2];
    assign en = (id_load == `ENABLE || ex_store == `ENABLE) ? `ENABLE : `DISABLE;
    assign addr_offset = ex_alu_res[1:0];
    assign rd_data_true = rd_data;
    assign wr_data = wr_data_true;

    always @(*) begin
        if (id_load == `ENABLE && ex_store == `DISABLE) begin
            rw = `DATA_READ;
        end else begin
            case (ex_ls_type)
                `LS_TYPE_BYTE: begin
                    case (addr_offset)
                        2'b00: begin
                            rw = 4'b1110;
                            wr_data_true = {24'd0, ex_mem_wr_data[7:0]};
                        end
                        2'b01: begin
                            rw = 4'b1101;
                            wr_data_true = {16'd0, ex_mem_wr_data[7:0], 8'd0};
                        end
                        2'b10: begin
                            rw = 4'b1011;
                            wr_data_true = {8'd0, ex_mem_wr_data[7:0], 16'd0};
                        end
                        2'b11: begin
                            rw = 4'b0111;
                            wr_data_true = {ex_mem_wr_data[7:0], 24'd0};
                        end
                    endcase
                end
                `LS_TYPE_HALF: begin
                    case (addr_offset)
                        2'b00: begin
                            rw = 4'b1100;
                            wr_data_true = {16'd0, ex_mem_wr_data[15:0]};
                        end
                        2'b10: begin
                            rw = 4'b0011;
                            wr_data_true = {ex_mem_wr_data[15:0], 16'd0};
                        end
                        default: begin // 需要抛出异常
                            rw = `DATA_READ;
                            wr_data_true = ex_mem_wr_data;
                        end
                    endcase
                end
                `LS_TYPE_WORD: begin
                    rw = `DATA_WRITE;
                    wr_data_true = ex_mem_wr_data;
                end
                default: begin
                    rw = `DATA_READ;
                    wr_data_true = ex_mem_wr_data;
                end
            endcase
        end
    end

    always @(*) begin
        case (ex_ls_type)
            `LS_TYPE_BYTE: begin
                case (addr_offset)
                    2'b00: data_offset = rd_data_true[7:0];
                    2'b01: data_offset = rd_data_true[15:8];
                    2'b10: data_offset = rd_data_true[23:16];
                    2'b11: data_offset = rd_data_true[31:24];
                endcase
                mem_out = `LOAD_BYTE(data_offset);
            end
            `LS_TYPE_HALF: begin
                case (addr_offset)
                    2'b00: data_offset = rd_data_true[15:0];
                    2'b10: data_offset = rd_data_true[31:16];
                    default: data_offset = 32'd00000000; // 需要抛出异常
                endcase
                mem_out = `LOAD_HALF(data_offset);
            end
            `LS_TYPE_WORD:  mem_out = `LOAD_WORD(rd_data_true);
            `LS_TYPE_UBYTE: begin
                case (addr_offset)
                    2'b00: data_offset = rd_data_true[7:0];
                    2'b01: data_offset = rd_data_true[15:8];
                    2'b10: data_offset = rd_data_true[23:16];
                    2'b11: data_offset = rd_data_true[31:24];
                endcase
                mem_out = `LOAD_UBYTE(data_offset);
            end
            `LS_TYPE_UHALF: begin
                case (addr_offset)
                    2'b00: data_offset = rd_data_true[15:0];
                    2'b10: data_offset = rd_data_true[31:16];
                    default: data_offset = 32'd00000000; // 需要抛出异常
                endcase
                mem_out = `LOAD_UHALF(data_offset);
            end
            default: begin
                data_offset = `LOAD_WORD(rd_data_true);
                mem_out = `LOAD_WORD(rd_data_true);
            end
        endcase
    end

endmodule