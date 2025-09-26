#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
COE文件转换脚本
功能：读取COE文件，提取初始化向量，将16进制数转换为二进制数
"""

import os
import sys

def read_coe_file(file_path):
    """
    读取COE文件并提取初始化向量
    """
    try:
        with open(file_path, 'r', encoding='utf-8') as f:
            content = f.read()
        
        # 查找初始化向量部分
        lines = content.split('\n')
        hex_values = []
        in_vector_section = False
        
        for line in lines:
            line = line.strip()
            if line.startswith('memory_initialization_vector='):
                in_vector_section = True
                # 检查是否在同一行有数据
                if '=' in line:
                    data_part = line.split('=', 1)[1].strip()
                    if data_part and not data_part.endswith(';'):
                        # 处理同一行的数据
                        values = data_part.split(',')
                        for val in values:
                            val = val.strip()
                            if val and not val.endswith(';'):
                                hex_values.append(val)
                continue
            
            if in_vector_section:
                if line.endswith(';'):
                    # 结束标记
                    val = line.rstrip(';').strip()
                    if val:
                        hex_values.append(val)
                    break
                elif line:
                    # 处理数据行
                    values = line.split(',')
                    for val in values:
                        val = val.strip()
                        if val:
                            hex_values.append(val)
        
        # 过滤空值
        hex_values = [val for val in hex_values if val]
        return hex_values
    
    except FileNotFoundError:
        print(f"错误：找不到文件 {file_path}")
        return None
    except Exception as e:
        print(f"读取文件时出错：{e}")
        return None

def hex_to_binary(hex_value, width=32):
    """
    将16进制数转换为二进制数
    """
    try:
        # 移除可能的前缀
        if hex_value.startswith('0x') or hex_value.startswith('0X'):
            hex_value = hex_value[2:]
        
        # 转换为整数
        decimal_value = int(hex_value, 16)
        
        # 转换为二进制字符串
        binary_str = bin(decimal_value)[2:]
        
        # 填充到指定宽度
        if len(binary_str) < width:
            binary_str = '0' * (width - len(binary_str)) + binary_str
        elif len(binary_str) > width:
            binary_str = binary_str[-width:]
        
        return binary_str
    
    except ValueError:
        print(f"警告：无法转换 '{hex_value}' 为16进制数")
        return None

def convert_coe_to_binary(input_file, output_file):
    """
    主转换函数
    """
    print(f"正在读取文件: {input_file}")
    
    # 读取COE文件
    hex_values = read_coe_file(input_file)
    if hex_values is None:
        return False
    
    print(f"找到 {len(hex_values)} 个16进制值")
    
    # 转换为二进制
    binary_values = []
    for i, hex_val in enumerate(hex_values):
        binary_val = hex_to_binary(hex_val)
        if binary_val is not None:
            binary_values.append(binary_val)
            print(f"转换 {i+1}/{len(hex_values)}: {hex_val} -> {binary_val}")
        else:
            print(f"跳过无效值: {hex_val}")
    
    # 写入输出文件
    try:
        with open(output_file, 'w', encoding='utf-8') as f:
            # f.write("# 从COE文件转换的二进制数据\n")
            # f.write(f"# 源文件: {os.path.basename(input_file)}\n")
            # f.write(f"# 数据数量: {len(binary_values)}\n")
            # f.write("# 格式: 32位二进制指令\n")
            # f.write("=" * 50 + "\n")
            
            for i, binary_val in enumerate(binary_values):
                f.write(f"{binary_val}\n")
        
        print(f"转换完成！输出文件: {output_file}")
        print(f"成功转换 {len(binary_values)} 个值")
        return True
    
    except Exception as e:
        print(f"写入输出文件时出错：{e}")
        return False

def batch_convert_coe_files(coe_dir, output_dir):
    """
    批量转换COE文件夹中的所有文件
    """
    # 确保输出目录存在
    if not os.path.exists(output_dir):
        os.makedirs(output_dir)
        print(f"创建输出目录: {output_dir}")
    
    # 查找所有.coe文件
    coe_files = []
    for file in os.listdir(coe_dir):
        if file.endswith('.coe'):
            coe_files.append(file)
    
    if not coe_files:
        print(f"在目录 {coe_dir} 中没有找到.coe文件")
        return
    
    print(f"找到 {len(coe_files)} 个COE文件")
    print("开始批量转换...")
    print("=" * 50)
    
    success_count = 0
    failed_count = 0
    
    for coe_file in coe_files:
        input_file = os.path.join(coe_dir, coe_file)
        
        # 生成输出文件名（将.coe替换为_binary.txt）
        output_filename = coe_file.replace('.coe', '_binary.txt')
        output_file = os.path.join(output_dir, output_filename)
        
        print(f"\n处理文件: {coe_file}")
        print(f"输出文件: {output_filename}")
        print("-" * 30)
        
        # 执行转换
        success = convert_coe_to_binary(input_file, output_file)
        
        if success:
            success_count += 1
            print(f"✓ {coe_file} 转换成功")
        else:
            failed_count += 1
            print(f"✗ {coe_file} 转换失败")
    
    print("=" * 50)
    print(f"批量转换完成！")
    print(f"成功: {success_count} 个文件")
    print(f"失败: {failed_count} 个文件")

def main():
    """
    主函数
    """
    # 输入和输出目录
    coe_dir = "../Coe"
    output_dir = "../Bin"
    
    print("COE文件批量转换工具")
    print("=" * 40)
    print(f"输入目录: {coe_dir}")
    print(f"输出目录: {output_dir}")
    print("=" * 40)
    
    # 检查输入目录是否存在
    if not os.path.exists(coe_dir):
        print(f"错误：输入目录不存在: {coe_dir}")
        print("请确保目录路径正确")
        return
    
    # 执行批量转换
    batch_convert_coe_files(coe_dir, output_dir)

if __name__ == "__main__":
    main()
