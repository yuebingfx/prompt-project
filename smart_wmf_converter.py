#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
智能WMF转换器 - 无LibreOffice依赖版本
专门解决macOS上WMF转换的各种问题
"""

import os
import subprocess
import tempfile
from pathlib import Path
import time
import shutil

class SmartWMFConverter:
    def __init__(self):
        self.stats = {
            'total': 0,
            'success': 0,
            'placeholder': 0,
            'failed': 0
        }
        
        # 检查可用工具
        self.tools = {
            'imagemagick': shutil.which('magick'),
            'inkscape': shutil.which('inkscape'),
            'rsvg-convert': shutil.which('rsvg-convert'),
            'qlmanage': shutil.which('qlmanage')  # macOS内置预览工具
        }
        
        print("🔍 检测到的转换工具:")
        for tool, path in self.tools.items():
            status = "✅" if path else "❌"
            print(f"  {status} {tool}")
    
    def convert_single(self, wmf_path, output_path):
        """使用多种方法转换单个WMF文件"""
        print(f"🔄 转换: {os.path.basename(wmf_path)}")
        
        methods = [
            self._method_imagemagick_direct,
            self._method_imagemagick_svg,  
            self._method_quicklook_preview,
            self._method_inkscape,
        ]
        
        for i, method in enumerate(methods, 1):
            try:
                print(f"  尝试方法{i}: {method.__name__.replace('_method_', '').replace('_', ' ').title()}")
                
                if method(wmf_path, output_path):
                    print(f"  ✅ 转换成功!")
                    return True
                else:
                    print(f"  ⚠️  方法{i}失败")
                    
            except Exception as e:
                print(f"  ❌ 方法{i}异常: {e}")
                continue
        
        # 所有方法都失败，创建占位图片
        print(f"  📝 创建占位图片")
        self._create_placeholder(wmf_path, output_path)
        return False
    
    def _method_imagemagick_direct(self, wmf_path, output_path):
        """方法1: ImageMagick直接转换"""
        if not self.tools['imagemagick']:
            return False
            
        # 尝试不同的ImageMagick参数组合
        commands = [
            ["magick", wmf_path, "-background", "white", "-flatten", output_path],
            ["magick", wmf_path, "-density", "300", output_path],
            ["magick", wmf_path, output_path],
        ]
        
        for cmd in commands:
            try:
                result = subprocess.run(
                    cmd,
                    stdout=subprocess.PIPE,
                    stderr=subprocess.PIPE,
                    text=True,
                    timeout=15
                )
                
                if result.returncode == 0 and os.path.exists(output_path):
                    # 检查生成的文件是否有效
                    if os.path.getsize(output_path) > 100:  # 至少100字节
                        return True
                    else:
                        os.remove(output_path)
                        
            except subprocess.TimeoutExpired:
                print(f"    ⏰ 超时")
            except Exception:
                continue
                
        return False
    
    def _method_imagemagick_svg(self, wmf_path, output_path):
        """方法2: WMF->SVG->PNG"""
        if not self.tools['imagemagick']:
            return False
            
        with tempfile.NamedTemporaryFile(suffix='.svg', delete=False) as tmp:
            svg_path = tmp.name
            
        try:
            # WMF转SVG
            result1 = subprocess.run(
                ["magick", wmf_path, svg_path],
                stdout=subprocess.PIPE,
                stderr=subprocess.PIPE,
                timeout=10
            )
            
            if result1.returncode == 0 and os.path.exists(svg_path):
                # SVG转PNG
                result2 = subprocess.run(
                    ["magick", svg_path, "-background", "white", "-flatten", output_path],
                    stdout=subprocess.PIPE,
                    stderr=subprocess.PIPE,
                    timeout=10
                )
                
                if result2.returncode == 0 and os.path.exists(output_path):
                    if os.path.getsize(output_path) > 100:
                        return True
                        
        except Exception:
            pass
        finally:
            # 清理临时文件
            if os.path.exists(svg_path):
                os.remove(svg_path)
                
        return False
    
    def _method_quicklook_preview(self, wmf_path, output_path):
        """方法3: 使用macOS QuickLook生成预览"""
        if not self.tools['qlmanage']:
            return False
            
        with tempfile.TemporaryDirectory() as tmp_dir:
            try:
                # 使用qlmanage生成预览
                result = subprocess.run([
                    'qlmanage', '-t', '-s', '800', '-o', tmp_dir, wmf_path
                ], stdout=subprocess.PIPE, stderr=subprocess.PIPE, timeout=10)
                
                if result.returncode == 0:
                    # 查找生成的预览文件
                    preview_files = list(Path(tmp_dir).glob('*.png'))
                    if preview_files:
                        preview_file = preview_files[0]
                        shutil.copy2(preview_file, output_path)
                        return os.path.exists(output_path) and os.path.getsize(output_path) > 100
                        
            except Exception:
                pass
                
        return False
    
    def _method_inkscape(self, wmf_path, output_path):
        """方法4: 使用Inkscape转换"""
        if not self.tools['inkscape']:
            return False
            
        try:
            result = subprocess.run([
                'inkscape', 
                '--export-type=png',
                '--export-filename=' + output_path,
                '--export-dpi=300',
                wmf_path
            ], stdout=subprocess.PIPE, stderr=subprocess.PIPE, timeout=15)
            
            return (result.returncode == 0 and 
                   os.path.exists(output_path) and 
                   os.path.getsize(output_path) > 100)
                   
        except Exception:
            return False
    
    def _create_placeholder(self, wmf_path, output_path):
        """创建占位图片"""
        try:
            from PIL import Image, ImageDraw, ImageFont
            
            # 获取文件信息
            file_size = os.path.getsize(wmf_path)
            file_name = os.path.basename(wmf_path)
            
            # 创建图片
            img = Image.new('RGB', (400, 200), color='#f5f5f5')
            draw = ImageDraw.Draw(img)
            
            # 绘制边框
            draw.rectangle([10, 10, 390, 190], outline='#cccccc', width=2)
            
            # 添加图标（简单的WMF图标）
            draw.rectangle([30, 40, 70, 80], fill='#4a90e2', outline='#2171b5', width=2)
            draw.text((45, 55), "WMF", fill='white')
            
            # 文件信息
            info_lines = [
                f"文件: {file_name}",
                f"大小: {file_size} bytes", 
                f"状态: 转换失败",
                f"建议: 手动使用其他工具处理"
            ]
            
            y = 40
            for line in info_lines:
                draw.text((90, y), line, fill='#333333')
                y += 25
                
            # 保存
            img.save(output_path, 'PNG')
            self.stats['placeholder'] += 1
            
        except ImportError:
            # 没有PIL，创建文本文件
            txt_path = output_path.replace('.png', '.txt')
            with open(txt_path, 'w', encoding='utf-8') as f:
                f.write(f"WMF转换失败\n")
                f.write(f"原文件: {wmf_path}\n")
                f.write(f"文件大小: {os.path.getsize(wmf_path)} bytes\n")
                f.write(f"请手动处理此文件")
    
    def batch_convert(self, input_dir="media", output_dir="converted_wmf"):
        """批量转换WMF文件"""
        input_path = Path(input_dir)
        output_path = Path(output_dir)
        output_path.mkdir(exist_ok=True)
        
        # 查找WMF文件
        wmf_files = list(input_path.glob("*.wmf"))
        self.stats['total'] = len(wmf_files)
        
        if not wmf_files:
            print("❌ 未找到WMF文件")
            return
            
        print(f"\n🚀 开始批量转换 {len(wmf_files)} 个WMF文件")
        print("=" * 50)
        
        start_time = time.time()
        
        for i, wmf_file in enumerate(wmf_files, 1):
            print(f"\n[{i}/{len(wmf_files)}] ", end="")
            
            output_file = output_path / f"{wmf_file.stem}.png"
            
            if self.convert_single(str(wmf_file), str(output_file)):
                self.stats['success'] += 1
            else:
                self.stats['failed'] += 1
                
            # 显示进度
            if i % 10 == 0:
                elapsed = time.time() - start_time
                rate = i / elapsed * 60  # 文件/分钟
                print(f"📊 进度: {i}/{len(wmf_files)} ({i/len(wmf_files)*100:.1f}%) - {rate:.1f} 文件/分钟")
        
        # 最终统计
        elapsed = time.time() - start_time
        self._show_summary(elapsed, output_dir)
    
    def _show_summary(self, elapsed_time, output_dir):
        """显示转换总结"""
        print("\n" + "=" * 60)
        print("🎉 批量转换完成!")
        print(f"📊 转换统计:")
        print(f"   ✅ 成功转换: {self.stats['success']}")
        print(f"   📝 占位图片: {self.stats['placeholder']}")  
        print(f"   ❌ 转换失败: {self.stats['failed']}")
        print(f"   📁 总文件数: {self.stats['total']}")
        
        success_rate = (self.stats['success'] / self.stats['total'] * 100) if self.stats['total'] > 0 else 0
        total_rate = ((self.stats['success'] + self.stats['placeholder']) / self.stats['total'] * 100) if self.stats['total'] > 0 else 0
        
        print(f"   📈 成功率: {success_rate:.1f}%")
        print(f"   📈 处理率: {total_rate:.1f}% (含占位图)")
        print(f"   ⏱️  总用时: {elapsed_time:.1f} 秒")
        print(f"   📁 输出目录: {output_dir}")

if __name__ == "__main__":
    print("🚀 智能WMF转换器 v2.0")
    print("✨ 无LibreOffice依赖，多方法智能转换")
    print("=" * 50)
    
    converter = SmartWMFConverter()
    
    if not any(converter.tools.values()):
        print("❌ 没有找到任何可用的转换工具!")
        print("💡 建议安装: brew install imagemagick")
    else:
        print("\n🔄 开始批量转换...")
        converter.batch_convert()
