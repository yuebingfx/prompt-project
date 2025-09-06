#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
WMF转换功能测试脚本

演示如何使用集成后的PandocWordProcessor进行WMF文件转换
"""

import os
from pathlib import Path
from simple_parser_with_pandoc import PandocWordProcessor


def test_wmf_conversion():
    """测试WMF转换功能"""
    print("🧪 测试WMF转换功能")
    print("=" * 50)
    
    # 创建处理器实例
    processor = PandocWordProcessor()
    
    # 检查WMF转换依赖
    if not processor.wmf_conversion_available:
        print("⚠️ WMF转换依赖不完整，尝试安装...")
        if processor.install_wmf_dependencies():
            print("✅ 依赖安装成功")
        else:
            print("❌ 依赖安装失败")
            return False
    
    # 查找media目录下的WMF文件
    media_dir = Path("media")
    if not media_dir.exists():
        print(f"❌ 未找到media目录: {media_dir}")
        return False
    
    wmf_files = list(media_dir.glob("*.wmf"))
    if not wmf_files:
        print("❌ 未找到WMF文件")
        return False
    
    print(f"📁 找到 {len(wmf_files)} 个WMF文件")
    
    # 创建输出目录
    output_dir = Path("test_converted_wmf")
    output_dir.mkdir(exist_ok=True)
    
    # 转换每个WMF文件
    success_count = 0
    for wmf_file in wmf_files[:3]:  # 只测试前3个文件
        try:
            print(f"\n🔄 测试转换: {wmf_file.name}")
            
            # 设置输出路径
            png_name = wmf_file.stem + ".png"
            png_path = output_dir / png_name
            
            # 执行转换
            processor.wmf_to_image(str(wmf_file), str(png_path), 'PNG')
            
            # 检查输出文件
            if png_path.exists():
                file_size = png_path.stat().st_size
                print(f"  ✅ 转换成功: {png_path} ({file_size} bytes)")
                success_count += 1
            else:
                print(f"  ❌ 输出文件未生成: {png_path}")
                
        except Exception as e:
            print(f"  ❌ 转换失败: {e}")
    
    print(f"\n📊 转换结果: {success_count}/{min(len(wmf_files), 3)} 成功")
    return success_count > 0


def test_docx_with_wmf():
    """测试包含WMF的Word文档处理"""
    print("\n🧪 测试Word文档WMF处理功能")
    print("=" * 50)
    
    # 查找包含WMF的Word文档
    test_files = [
        "Math/精品解析：2025年山东省青岛市中考数学真题（解析版）.docx",
        "Math/精品解析：2025年广东省广州市中考数学真题（解析版）.docx"
    ]
    
    processor = PandocWordProcessor()
    
    for test_file in test_files:
        if not os.path.exists(test_file):
            continue
        
        print(f"\n📄 测试文档: {test_file}")
        
        try:
            # 只提取图片，不调用API
            images = processor.extract_images_from_docx(test_file, save_images=True)
            
            wmf_count = sum(1 for img in images if img.get('is_wmf_converted', False))
            regular_count = len(images) - wmf_count
            
            print(f"  ✅ 提取完成: {regular_count} 张常规图片, {wmf_count} 个WMF转换")
            
            if wmf_count > 0:
                print("  🎉 WMF转换功能正常工作!")
                return True
                
        except Exception as e:
            print(f"  ❌ 处理失败: {e}")
    
    print("  ℹ️  未找到包含WMF的测试文档")
    return False


if __name__ == "__main__":
    print("🚀 开始WMF转换功能测试")
    print("=" * 60)
    
    # 测试独立的WMF转换功能
    wmf_test_result = test_wmf_conversion()
    
    # 测试Word文档中的WMF处理
    docx_test_result = test_docx_with_wmf()
    
    print("\n" + "=" * 60)
    print("📋 测试总结:")
    print(f"  独立WMF转换: {'✅ 通过' if wmf_test_result else '❌ 失败'}")
    print(f"  Word文档WMF处理: {'✅ 通过' if docx_test_result else '❌ 失败'}")
    
    if wmf_test_result or docx_test_result:
        print("\n🎉 WMF转换功能集成成功!")
    else:
        print("\n⚠️ 请检查测试环境和文件")
