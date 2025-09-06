#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
深度WMF MathType分析器

更仔细地分析MathType数据格式，尝试找到数学公式的实际内容
"""

import struct
from pathlib import Path

def analyze_wmf_deep(wmf_path):
    """深度分析WMF文件"""
    print(f"深度分析: {wmf_path}")
    print("=" * 60)
    
    with open(wmf_path, 'rb') as f:
        data = f.read()
    
    # 找到MathType数据开始位置
    mathtype_pos = data.find(b'MathType')
    if mathtype_pos == -1:
        print("未找到MathType数据")
        return
    
    print(f"MathType位置: {mathtype_pos}")
    
    # 分析MathType数据周围的字节
    print("\nMathType周围的数据:")
    start = max(0, mathtype_pos - 20)
    end = min(len(data), mathtype_pos + 200)
    
    for i in range(start, end, 16):
        hex_part = ' '.join(f'{b:02x}' for b in data[i:i+16])
        ascii_part = ''.join(chr(b) if 32 <= b <= 126 else '.' for b in data[i:i+16])
        print(f"{i:06x}: {hex_part:<48} |{ascii_part}|")
    
    # 查找可能的数字和数学符号
    print("\n查找数学内容:")
    
    # 查找数字字符 (ASCII 48-57)
    numbers_found = []
    for i, byte in enumerate(data):
        if 48 <= byte <= 57:  # 0-9
            context_start = max(0, i-5)
            context_end = min(len(data), i+6)
            context = data[context_start:context_end]
            readable = ''.join(chr(b) if 32 <= b <= 126 else '.' for b in context)
            numbers_found.append((i, chr(byte), readable))
    
    if numbers_found:
        print("找到的数字:")
        for pos, digit, context in numbers_found[:10]:  # 只显示前10个
            print(f"  位置{pos}: '{digit}' 上下文: '{context}'")
    
    # 查找数学符号
    math_symbols = {45: '-', 43: '+', 42: '*', 47: '/', 61: '=', 40: '(', 41: ')'}
    symbols_found = []
    for i, byte in enumerate(data):
        if byte in math_symbols:
            context_start = max(0, i-5)
            context_end = min(len(data), i+6)
            context = data[context_start:context_end]
            readable = ''.join(chr(b) if 32 <= b <= 126 else '.' for b in context)
            symbols_found.append((i, math_symbols[byte], readable))
    
    if symbols_found:
        print("\n找到的数学符号:")
        for pos, symbol, context in symbols_found[:10]:
            print(f"  位置{pos}: '{symbol}' 上下文: '{context}'")
    
    # 查找特定的模式 - 可能的MathType编码
    print("\n寻找MathType编码模式:")
    
    # 查找MathType数据段中的特殊字节序列
    mathtype_data = data[mathtype_pos:]
    
    # 查找字节值模式
    for i in range(len(mathtype_data) - 4):
        if mathtype_data[i] == 0x00 and mathtype_data[i+1] != 0x00:
            # 可能的分隔符后的数据
            next_bytes = mathtype_data[i+1:i+5]
            if any(b != 0 for b in next_bytes):
                readable = ''.join(chr(b) if 32 <= b <= 126 else f'\\x{b:02x}' for b in next_bytes)
                print(f"  位置{mathtype_pos + i}: {readable}")

# 测试几个已知的文件
test_files = [
    'media/image2.wmf',  # 应该是-6
    'media/image5.wmf',  # 应该是6
    'media/image10.wmf', # 应该是180度
    'media/image3.wmf',  # 应该是-1/6
]

for file_path in test_files:
    if Path(file_path).exists():
        analyze_wmf_deep(file_path)
        print("\n" + "="*80 + "\n")
    else:
        print(f"文件不存在: {file_path}")
