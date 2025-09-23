`ifndef __GLOBAL_CONFIG_H__
`define __GLOBAL_CONFIG_H__

`include "nettype.vh"
`include "stddef.vh"

// 复位信号极性
// `define POSITIVE_RESET
`define NEGATIVE_RESET

// 内存复位信号极性
// `define POSITIVE_MEMORY
`define NEGATIVE_MEMORY

// I/O 设备
`define IMPLEMENT_TIMER
`define IMPLEMENT_UART
`define IMPLEMENT_GPIO

`ifdef POSITIVE_RESET
    `define RESET_EDGE posedge
    `define RESET_ENABLE 1'b1
    `define RESET_DISABLE 1'b0
`elsif NEGATIVE_RESET
    `define RESET_EDGE negedge
    `define RESET_ENABLE 1'b0
    `define RESET_DISABLE 1'b1
`endif

`ifdef POSITIVE_MEMORY
    `define MEM_ENABLE 1'b0
`elsif NEGATIVE_MEMORY
    `define MEM_ENABLE 1'b1
`endif

`timescale 1ns/1ps

`endif