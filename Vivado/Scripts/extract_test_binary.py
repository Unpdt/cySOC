#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
提取RISC-V测试用例二进制代码的脚本
从dump文件中提取所有<test_*>标签对应的二进制指令
"""

import re
import sys
import os

def extract_test_binary(dump_file_path):
    """
    从dump文件中提取test_*的二进制代码
    
    Args:
        dump_file_path (str): dump文件路径
        
    Returns:
        dict: 包含测试用例名称和对应二进制代码的字典
    """
    test_binary_dict = {}
    
    try:
        with open(dump_file_path, 'r', encoding='utf-8') as file:
            lines = file.readlines()
    except FileNotFoundError:
        print(f"错误: 文件 {dump_file_path} 不存在")
        return {}
    except Exception as e:
        print(f"读取文件时出错: {e}")
        return {}
    
    current_test = None
    test_instructions = []
    
    # 正则表达式匹配test标签、fail标签、pass标签和指令行
    test_pattern = re.compile(r'^([0-9a-f]+)\s+<test_\d+>:')
    fail_pattern = re.compile(r'^([0-9a-f]+)\s+<fail>:')
    pass_pattern = re.compile(r'^([0-9a-f]+)\s+<pass>:')
    instruction_pattern = re.compile(r'^\s*([0-9a-f]+):\s+([0-9a-f]+)\s+')
    
    for line in lines:
        # 检查是否是test标签
        test_match = test_pattern.search(line)
        if test_match:
            # 如果之前有test正在处理，保存它
            if current_test and test_instructions:
                test_binary_dict[current_test] = test_instructions.copy()
            
            # 开始新的test
            current_test = line.split('<')[1].split('>')[0]  # 提取test_*名称
            test_instructions = []
            continue
        
        # 检查是否是fail或pass标签，如果是则停止当前test的提取
        fail_match = fail_pattern.search(line)
        pass_match = pass_pattern.search(line)
        if (fail_match or pass_match) and current_test:
            # 保存当前test并停止提取
            if test_instructions:
                test_binary_dict[current_test] = test_instructions.copy()
            current_test = None
            test_instructions = []
            continue
        
        # 检查是否是指令行（只在当前有test时提取）
        instruction_match = instruction_pattern.search(line)
        if instruction_match and current_test:
            binary_code = instruction_match.group(2)  # 提取二进制代码
            test_instructions.append(binary_code)
    
    # 处理最后一个test（如果还没有遇到fail或pass）
    if current_test and test_instructions:
        test_binary_dict[current_test] = test_instructions
    
    return test_binary_dict

def save_test_binary_to_file(test_binary_dict, output_file_path):
    """
    将提取的二进制代码保存到文件
    
    Args:
        test_binary_dict (dict): 测试用例二进制代码字典
        output_file_path (str): 输出文件路径
    """
    try:
        with open(output_file_path, 'w', encoding='utf-8') as file:
            file.write("# RISC-V测试用例二进制代码提取结果\n")
            file.write("# 格式: 测试用例名称: 二进制指令列表\n\n")
            
            for test_name, instructions in test_binary_dict.items():
                file.write(f"{test_name}:\n")
                for i, instruction in enumerate(instructions):
                    file.write(f"  {i:2d}: {instruction}\n")
                file.write("\n")
        
        print(f"二进制代码已保存到: {output_file_path}")
        
    except Exception as e:
        print(f"保存文件时出错: {e}")

def generate_coe_file(test_binary_dict, coe_file_path, memory_depth=1024, extra_instructions=None):
    """
    生成COE文件
    
    Args:
        test_binary_dict (dict): 测试用例二进制代码字典
        coe_file_path (str): COE文件输出路径
        memory_depth (int): 内存深度（默认1024 words）
        extra_instructions (list): 额外的指令列表
    """
    try:
        # 收集所有测试用例的指令
        all_instructions = []
        for test_name, instructions in test_binary_dict.items():
            all_instructions.extend(instructions)
        
        # 添加额外的指令
        if extra_instructions:
            all_instructions.extend(extra_instructions)
        
        # 计算实际使用的内存深度
        actual_depth = len(all_instructions)
        
        with open(coe_file_path, 'w', encoding='utf-8') as file:
            # 写入COE文件头部
            file.write("; This .COE file specifies the initial contents for a block memory (BRAM)\n")
            file.write(f"; Generated from RISC-V test cases extracted from dump file\n")
            file.write(f"; Memory depth: {actual_depth} words (actual instructions)\n")
            file.write(f"; Memory width: 32 bits\n")
            file.write("; -----------------------------------------------------------------\n")
            
            # 写入测试用例信息
            file.write("; Test cases included:\n")
            for test_name, instructions in test_binary_dict.items():
                file.write(f";   {test_name}: {len(instructions)} instructions\n")
            
            # 写入额外指令信息
            if extra_instructions:
                file.write(f"; Extra instructions: {len(extra_instructions)} instructions\n")
            
            file.write("; -----------------------------------------------------------------\n")
            
            # 写入COE文件配置
            file.write("memory_initialization_radix=16;\n")
            file.write("memory_initialization_vector=\n")
            
            # 写入指令数据（不补0）
            for i, instruction in enumerate(all_instructions):
                if i == len(all_instructions) - 1:
                    file.write(f"{instruction};")
                else:
                    file.write(f"{instruction},\n")
        
        print(f"COE文件已生成: {coe_file_path}")
        print(f"包含 {actual_depth} 条指令（测试用例: {actual_depth - (len(extra_instructions) if extra_instructions else 0)} + 额外指令: {len(extra_instructions) if extra_instructions else 0}）")
        
    except Exception as e:
        print(f"生成COE文件时出错: {e}")

def print_test_binary_summary(test_binary_dict):
    """
    打印提取结果的摘要信息
    
    Args:
        test_binary_dict (dict): 测试用例二进制代码字典
    """
    if not test_binary_dict:
        print("未找到任何test_*测试用例")
        return
    
    print(f"成功提取 {len(test_binary_dict)} 个测试用例:")
    for test_name, instructions in test_binary_dict.items():
        print(f"  {test_name}: {len(instructions)} 条指令")
    
    total_instructions = sum(len(instructions) for instructions in test_binary_dict.values())
    print(f"总共 {total_instructions} 条指令")

def process_single_file(dump_file_path, coe_file_path, memory_depth, extra_instructions):
    """
    处理单个dump文件
    
    Args:
        dump_file_path (str): dump文件路径
        coe_file_path (str): COE文件输出路径
        memory_depth (int): 内存深度
        extra_instructions (list): 额外的指令列表
    """
    print(f"正在处理文件: {dump_file_path}")
    print("提取test_*测试用例的二进制代码...")
    
    # 提取二进制代码
    test_binary_dict = extract_test_binary(dump_file_path)
    
    if test_binary_dict:
        # 打印摘要
        print_test_binary_summary(test_binary_dict)
        
        # 生成COE文件
        generate_coe_file(test_binary_dict, coe_file_path, memory_depth, extra_instructions)
        
        # 显示前几个测试用例作为示例
        print("\n示例输出 (前3个测试用例):")
        count = 0
        for test_name, instructions in test_binary_dict.items():
            if count >= 3:
                break
            print(f"\n{test_name}:")
            for i, instruction in enumerate(instructions[:5]):  # 显示前5条指令
                print(f"  {i:2d}: {instruction}")
            count += 1
    else:
        print("未找到任何test_*测试用例，请检查文件格式")

def process_batch_files(test_dir, coe_dir, memory_depth, extra_instructions, pattern="*.dump"):
    """
    批量处理test文件夹下的所有dump文件
    
    Args:
        test_dir (str): test文件夹路径
        coe_dir (str): COE文件输出目录
        memory_depth (int): 内存深度
        extra_instructions (list): 额外的指令列表
        pattern (str): 文件匹配模式
    """
    import glob
    
    # 确保输出目录存在
    if not os.path.exists(coe_dir):
        os.makedirs(coe_dir)
    
    # 查找所有匹配的dump文件
    search_pattern = os.path.join(test_dir, pattern)
    dump_files = glob.glob(search_pattern)
    
    if not dump_files:
        print(f"在目录 {test_dir} 中未找到匹配 {pattern} 的文件")
        return
    
    print(f"找到 {len(dump_files)} 个dump文件，开始批量处理...")
    print("=" * 60)
    
    success_count = 0
    failed_files = []
    
    for dump_file_path in dump_files:
        try:
            # 生成对应的COE文件名
            base_name = os.path.basename(dump_file_path).replace('.dump', '.coe')
            coe_file_path = os.path.join(coe_dir, base_name)
            
            print(f"\n处理文件: {os.path.basename(dump_file_path)}")
            print("-" * 40)
            
            # 处理单个文件
            test_binary_dict = extract_test_binary(dump_file_path)
            
            if test_binary_dict:
                # 生成COE文件
                generate_coe_file(test_binary_dict, coe_file_path, memory_depth, extra_instructions)
                success_count += 1
                print(f"✓ 成功处理: {os.path.basename(dump_file_path)}")
            else:
                failed_files.append(os.path.basename(dump_file_path))
                print(f"✗ 处理失败: {os.path.basename(dump_file_path)} (未找到test用例)")
        
        except Exception as e:
            failed_files.append(os.path.basename(dump_file_path))
            print(f"✗ 处理失败: {os.path.basename(dump_file_path)} (错误: {e})")
    
    print("=" * 60)
    print(f"批量处理完成!")
    print(f"成功处理: {success_count} 个文件")
    if failed_files:
        print(f"处理失败: {len(failed_files)} 个文件")
        print("失败文件列表:")
        for file in failed_files:
            print(f"  - {file}")

def print_usage():
    """打印使用说明"""
    print("用法: python extract_test_binary.py [dump文件路径] [选项]")
    print("选项:")
    print("  --coe [coe文件路径]    生成COE文件（默认: ../Coe/rv32ui-p-add.coe）")
    print("  --depth [内存深度]     设置COE文件内存深度（默认1024）")
    print("  --batch [test目录]     批量处理指定目录下的所有.dump文件")
    print("  --output [输出目录]    批量处理时的COE文件输出目录（默认: ../Coe/）")
    print("  --pattern [文件模式]   批量处理时的文件匹配模式（默认: *.dump）")
    print("  --help, -h            显示此帮助信息")
    print("说明:")
    print("  脚本会自动在COE文件末尾添加额外的指令向量")
    print("  默认情况下会生成COE文件，不生成.txt文件")
    print("示例:")
    print("  单个文件处理:")
    print("    python extract_test_binary.py")
    print("    python extract_test_binary.py ../Srcs/test/rv32ui-p-add.dump")
    print("    python extract_test_binary.py --coe ../Coe/rv32ui-p-add.coe")
    print("    python extract_test_binary.py --coe ../Coe/rv32ui-p-add.coe --depth 2048")
    print("  批量文件处理:")
    print("    python extract_test_binary.py --batch ../Srcs/test/")
    print("    python extract_test_binary.py --batch ../Srcs/test/ --output ../Coe/batch/")
    print("    python extract_test_binary.py --batch ../Srcs/test/ --pattern rv32ui-p-*.dump")

def main():
    """主函数"""
    # 默认参数（修改为相对于Vivado/Scripts的路径）
    dump_file_path = "../Srcs/test/rv32ui-p-add.dump"
    coe_file_path = "../Coe/rv32ui-p-add.coe"
    memory_depth = 1024
    batch_mode = False
    test_dir = "../Srcs/test/"
    output_dir = "../Coe/"
    file_pattern = "*.dump"
    
    # 用户指定的额外指令向量
    extra_instructions = [
        "00200293",
        "80000337",
        "00532023",
        "00100073",
        "00000013",
        "00000013",
        "00000013",
        "00100293",
        "80000337",
        "00532023",
        "00100073",
        "00000013",
        "00000013",
        "00000013",
        "00000013",
        "00000013",
        "00000013",
        "00000013",
        "00000013",
        "00000013"
    ]
    
    # 解析命令行参数
    i = 1
    while i < len(sys.argv):
        if sys.argv[i] == "--help" or sys.argv[i] == "-h":
            print_usage()
            return
        elif sys.argv[i] == "--coe":
            if i + 1 < len(sys.argv) and not sys.argv[i+1].startswith("--"):
                coe_file_path = sys.argv[i+1]
                i += 2
            else:
                coe_file_path = "../Coe/rv32ui-p-add.coe"
                i += 1
        elif sys.argv[i] == "--depth":
            if i + 1 < len(sys.argv) and not sys.argv[i+1].startswith("--"):
                try:
                    memory_depth = int(sys.argv[i+1])
                    i += 2
                except ValueError:
                    print(f"错误: 无效的内存深度值: {sys.argv[i+1]}")
                    return
            else:
                print("错误: --depth 参数需要指定内存深度值")
                return
        elif sys.argv[i] == "--batch":
            batch_mode = True
            if i + 1 < len(sys.argv) and not sys.argv[i+1].startswith("--"):
                test_dir = sys.argv[i+1]
                i += 2
            else:
                test_dir = "../Srcs/test/"
                i += 1
        elif sys.argv[i] == "--output":
            if i + 1 < len(sys.argv) and not sys.argv[i+1].startswith("--"):
                output_dir = sys.argv[i+1]
                i += 2
            else:
                output_dir = "../Coe/"
                i += 1
        elif sys.argv[i] == "--pattern":
            if i + 1 < len(sys.argv) and not sys.argv[i+1].startswith("--"):
                file_pattern = sys.argv[i+1]
                i += 2
            else:
                file_pattern = "*.dump"
                i += 1
        elif not sys.argv[i].startswith("--"):
            # 位置参数
            if i == 1:
                dump_file_path = sys.argv[i]
            i += 1
        else:
            print(f"错误: 未知参数: {sys.argv[i]}")
            print_usage()
            return
    
    # 根据模式选择处理方式
    if batch_mode:
        # 批量处理模式
        process_batch_files(test_dir, output_dir, memory_depth, extra_instructions, file_pattern)
    else:
        # 单个文件处理模式
        process_single_file(dump_file_path, coe_file_path, memory_depth, extra_instructions)

if __name__ == "__main__":
    main()
