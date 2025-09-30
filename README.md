# cySOC 项目说明

## 项目概述
这是一个基于RISC-V的soc，使用Xilinx vivado工具开发。

## 快速开始

### 步骤一：重构Vivado工程
1. 打开Vivado
2. 在TCL控制台中依次执行以下命令：

```tcl
cd <PRJ_ROOT>/Vivado/
mkdir Workspace
cd Workspace
source ../Scripts/reCreate.tcl
