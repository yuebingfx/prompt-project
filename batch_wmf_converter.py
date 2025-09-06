#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
批量WMF转换工具
解决LibreOffice转换失败的问题，提供多种后备方案
"""

import os
import subprocess
import tempfile
from pathlib import Path
import time

def batch_convert_wmf_files(media_dir="media", output_dir="converted_images"):
    """批量转换WMF文件"""
    
    # 创建输出目录
    output_path = Path(output_dir)
    output_path.mkdir(exist_ok=True)
    
    # 查找所有WMF文件
    media_path = Path(media_dir)
    wmf_files = list(media_path.glob("*.wmf"))
    
    if not wmf_files:
        print("❌ 没有找到WMF文件")
        return
    
    print(f"📁 找到 {len(wmf_files)} 个WMF文件")
    print("🔄 开始批量转换...")
    
    stats = {
        'total': len(wmf_files),
        'success': 0,
        'failed': 0,
        'placeholder': 0
    }
    
    for i, wmf_file in enumerate(wmf_files, 1):
        print(f"\n[{i}/{len(wmf_files)}] 处理: {wmf_file.name}")
        
        # 输出文件路径
        png_file = output_path / f"{wmf_file.stem}.png"
        
        # 尝试转换
        success = convert_single_wmf(str(wmf_file), str(png_file))
        
        if success == "success":
            stats['success'] += 1
        elif success == "placeholder":
            stats['placeholder'] += 1
        else:
            stats['failed'] += 1
    
    # 显示统计信息
    print("\n" + "="*50)
    print("📊 批量转换完成!")
    print(f"✅ 成功转换: {stats['success']}")
    print(f"📝 占位图片: {stats['placeholder']}")
    print(f"❌ 完全失败: {stats['failed']}")
    print(f"📁 输出目录: {output_dir}")
    print(f"📈 总成功率: {((stats['success'] + stats['placeholder']) / stats['total'] * 100):.1f}%")


def convert_single_wmf(wmf_path, output_path):
    """转换单个WMF文件，返回状态"""
    
    try:
        # 方法1: 直接ImageMagick转换
        result = subprocess.run(
            ["magick", wmf_path, output_path],
            stdout=subprocess.PIPE,
            stderr=subprocess.PIPE,
            text=True,
            timeout=10  # 缩短超时时间
        )
        
        if result.returncode == 0 and os.path.exists(output_path):
            print(f"  ✅ ImageMagick转换成功")
            return "success"
        
        # 方法2: 尝试inkscape (如果安装了)
        if shutil.which("inkscape"):
            result = subprocess.run(
                ["inkscape", "--export-png", output_path, wmf_path],
                stdout=subprocess.PIPE,
                stderr=subprocess.PIPE,
                text=True,
                timeout=10
            )
            
            if result.returncode == 0 and os.path.exists(output_path):
                print(f"  ✅ Inkscape转换成功")
                return "success"
        
        # 方法3: 创建信息占位图片
        create_info_placeholder(output_path, wmf_path)
        print(f"  📝 已创建占位图片")
        return "placeholder"
        
    except subprocess.TimeoutExpired:
        print(f"  ⏰ 转换超时")
        create_info_placeholder(output_path, wmf_path)
        return "placeholder"
        
    except Exception as e:
        print(f"  ❌ 转换失败: {e}")
        return "failed"


def create_info_placeholder(output_path, wmf_path):
    """创建包含文件信息的占位图片"""
    try:
        from PIL import Image, ImageDraw, ImageFont
        
        # 获取WMF文件信息
        file_size = os.path.getsize(wmf_path)
        file_name = os.path.basename(wmf_path)
        
        # 创建占位图片
        img = Image.new('RGB', (300, 150), color='#f0f0f0')
        draw = ImageDraw.Draw(img)
        
        # 绘制边框
        draw.rectangle([5, 5, 295, 145], outline='#cccccc', width=2)
        
        # 添加文字信息
        texts = [
            f"WMF 文件：{file_name}",
            f"文件大小：{file_size} bytes",
            "",
            "转换失败",
            "请手动处理"
        ]
        
        y = 20
        for text in texts:
            draw.text((15, y), text, fill='#666666')
            y += 20
        
        # 保存图片
        img.save(output_path, "PNG")
        
    except ImportError:
        # 如果没有PIL，创建文本文件
        with open(output_path.replace('.png', '.txt'), 'w', encoding='utf-8') as f:
            f.write(f"WMF文件: {os.path.basename(wmf_path)}\n")
            f.write(f"原始路径: {wmf_path}\n")
            f.write(f"转换失败，请手动处理")
            

if __name__ == "__main__":
    import shutil
    
    print("🚀 WMF批量转换工具")
    print("=" * 40)
    
    # 检查依赖
    tools = {
        'ImageMagick': shutil.which("magick"),
        'Inkscape': shutil.which("inkscape")
    }
    
    print("🔍 工具检查:")
    for tool, path in tools.items():
        status = "✅ 已安装" if path else "❌ 未安装"
        print(f"  {tool}: {status}")
    
    if not tools['ImageMagick']:
        print("\n⚠️  建议先安装ImageMagick: brew install imagemagick")
    
    print("\n🔄 开始处理...")
    batch_convert_wmf_files()
