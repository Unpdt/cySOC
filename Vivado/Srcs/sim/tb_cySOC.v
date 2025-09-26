`timescale 1ns/1ps

`include "../hdl/global_config.vh"
`include "../hdl/nettype.vh"
`include "../hdl/stddef.vh"

module tb_cySOC;

    // 时钟和复位信�?
    reg                 clk;
    reg                 rst;

    // 实例�? cySOC
    cySOC inst_cySOC (
        .clk           (clk),
        .rst           (rst)
    );

    // 时钟生成
    parameter CLK_PERIOD = 10; // 100MHz 时钟
    always #(CLK_PERIOD/2) clk = ~clk;

    // 测试序列
    initial begin
        // 初始化信�?
        clk = 0;
        rst = `RESET_DISABLE;

        // 应用复位
        #20 rst = `RESET_ENABLE;
        #100 rst = `RESET_DISABLE;

        // 运行�?段时�?
        #10000;

        // 结束仿真
        $display("Simulation completed at time %0t", $time);
        $finish;
    end

    // 监控信号变化
    // initial begin
    //     $monitor("Time=%0t: rst=%b, insn_addr=%h, data_addr=%h", 
    //              $time, rst, u_cySOC.insn_addr, u_cySOC.data_addr);
    // end

    // 波形文件生成
    // initial begin
    //     $dumpfile("tb_cySOC.vcd");
    //     $dumpvars(0, tb_cySOC);
    // end

endmodule
