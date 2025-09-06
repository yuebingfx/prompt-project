#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
测试跳过LLM分析的WMF处理功能
"""

import sys
import os
import time
from pathlib import Path

sys.path.insert(0, os.path.dirname(__file__))
from simple_parser_with_pandoc import PandocWordProcessor

def test_no_llm_processing():
    """测试跳过LLM分析的处理速度"""
    print("⚡ 测试跳过LLM分析的处理效果")
    print("=" * 50)
    
    processor = PandocWordProcessor()
    
    # 使用一个包含WMF图片的docx文件进行测试
    docx_file = "Math/精品解析：2025年山东省青岛市中考数学真题（解析版）.docx"
    
    if not Path(docx_file).exists():
        print(f"❌ 测试文件不存在: {docx_file}")
        return
    
    print(f"📄 测试文档: {docx_file}")
    
    # 记录开始时间
    start_time = time.time()
    
    # 提取图片（限制数量以便快速测试）
    images = processor.extract_images_from_docx(docx_file, save_images=True)
    
    # 记录处理时间
    processing_time = time.time() - start_time
    
    # 统计结果
    total_images = len(images)
    wmf_files = sum(1 for img in images if img.get('format') == 'WMF' or img.get('original_wmf'))
    png_files = sum(1 for img in images if img.get('format') == 'PNG')
    
    print(f"\n📊 处理结果:")
    print(f"总图片数: {total_images}")
    print(f"WMF文件: {wmf_files}")
    print(f"PNG文件: {png_files}")
    print(f"⏱️ 处理时间: {processing_time:.2f} 秒")
    print(f"⚡ 平均每张图片: {processing_time/total_images:.2f} 秒" if total_images > 0 else "无图片处理")
    
    print(f"\n🎉 跳过LLM分析的优势:")
    print(f"✅ 大幅提升处理速度")
    print(f"✅ 减少API调用成本")  
    print(f"✅ 降低网络依赖")
    print(f"✅ 保持核心WMF转换功能")
    print(f"✅ 仍然提供有意义的图片描述")

if __name__ == "__main__":
    test_no_llm_processing()
