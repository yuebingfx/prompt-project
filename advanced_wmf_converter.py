#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
高级WMF转换器 - 多种方法集成版

专门用于批量转换WMF文件到PNG格式
集成多种转换方法，确保最大兼容性

功能特点：
1. 使用imageio库 (已安装)
2. PIL/Pillow增强支持
3. 系统工具集成
4. 批量处理优化
5. 详细进度显示

作者：Assistant  
创建时间：2024年12月19日
"""

import os
import sys
import subprocess
import shutil
from pathlib import Path
from datetime import datetime
import tempfile


class AdvancedWMFConverter:
    def __init__(self):
        self.stats = {
            'total': 0,
            'success': 0,
            'failed': 0,
            'skipped': 0
        }
        
        # 检查可用的转换方法
        self.available_methods = self._check_methods()
        
        print("🚀 高级WMF转换器")
        print("=" * 50)
        self._show_methods()
        
    def _check_methods(self):
        """检查可用的转换方法"""
        methods = {}
        
        # 检查imageio
        try:
            import imageio
            methods['imageio'] = True
            print("✅ imageio库可用")
        except ImportError:
            methods['imageio'] = False
            print("❌ imageio库不可用")
        
        # 检查Pillow
        try:
            from PIL import Image
            methods['pillow'] = True
            print("✅ Pillow库可用")
        except ImportError:
            methods['pillow'] = False
            print("❌ Pillow库不可用")
        
        # 检查ImageMagick
        methods['imagemagick'] = shutil.which('convert') is not None
        if methods['imagemagick']:
            print("✅ ImageMagick可用")
        else:
            print("❌ ImageMagick不可用")
        
        # 检查GraphicsMagick
        methods['graphicsmagick'] = shutil.which('gm') is not None
        if methods['graphicsmagick']:
            print("✅ GraphicsMagick可用")
        else:
            print("❌ GraphicsMagick不可用")
            
        return methods
    
    def _show_methods(self):
        """显示可用方法"""
        available_count = sum(1 for v in self.available_methods.values() if v)
        print(f"📊 可用方法: {available_count}/4")
        print()
    
    def _convert_with_imageio(self, wmf_path, png_path):
        """使用imageio转换"""
        try:
            import imageio.v3 as iio
            
            # 读取WMF文件
            image = iio.imread(wmf_path)
            
            # 保存为PNG
            iio.imwrite(png_path, image)
            
            return True
        except Exception as e:
            print(f"  imageio转换失败: {e}")
            return False
    
    def _convert_with_pillow_enhanced(self, wmf_path, png_path):
        """使用增强的Pillow方法"""
        try:
            from PIL import Image
            import io
            
            # 尝试直接打开
            with Image.open(wmf_path) as img:
                # 转换模式
                if img.mode not in ['RGB', 'RGBA']:
                    if img.mode == 'P':
                        img = img.convert('RGBA')
                    else:
                        img = img.convert('RGB')
                
                # 设置白色背景
                if img.mode == 'RGBA':
                    background = Image.new('RGB', img.size, (255, 255, 255))
                    background.paste(img, mask=img.split()[-1] if img.mode == 'RGBA' else None)
                    img = background
                
                # 保存为PNG
                img.save(png_path, 'PNG', optimize=True)
                
            return True
        except Exception as e:
            print(f"  Pillow增强转换失败: {e}")
            return False
    
    def _convert_with_imagemagick(self, wmf_path, png_path):
        """使用ImageMagick转换"""
        try:
            # ImageMagick 7 使用 magick 命令
            cmd = [
                'magick', 
                str(wmf_path),
                '-background', 'white',
                '-flatten',
                '-density', '150',  # 提高分辨率
                str(png_path)
            ]
            
            result = subprocess.run(cmd, capture_output=True, text=True, timeout=30)
            
            if result.returncode == 0 and Path(png_path).exists():
                return True
            else:
                print(f"  ImageMagick转换失败: {result.stderr}")
                return False
                
        except Exception as e:
            print(f"  ImageMagick转换异常: {e}")
            return False
    
    def _convert_with_graphicsmagick(self, wmf_path, png_path):
        """使用GraphicsMagick转换"""
        try:
            cmd = [
                'gm', 'convert',
                str(wmf_path),
                '-background', 'white',
                '-flatten',
                str(png_path)
            ]
            
            result = subprocess.run(cmd, capture_output=True, text=True, timeout=30)
            
            if result.returncode == 0 and Path(png_path).exists():
                return True
            else:
                print(f"  GraphicsMagick转换失败: {result.stderr}")
                return False
                
        except Exception as e:
            print(f"  GraphicsMagick转换异常: {e}")
            return False
    
    def convert_single_file(self, wmf_path, png_path=None, method=None):
        """转换单个文件"""
        wmf_file = Path(wmf_path)
        
        if not wmf_file.exists():
            print(f"❌ 文件不存在: {wmf_path}")
            return False
        
        if png_path is None:
            png_path = wmf_file.with_suffix('.png')
        else:
            png_path = Path(png_path)
        
        # 检查是否已存在
        if png_path.exists():
            print(f"⏭️  已存在: {png_path.name}")
            self.stats['skipped'] += 1
            return True
        
        print(f"🔄 转换: {wmf_file.name}")
        
        # 确定转换方法顺序（按可靠性排序）
        if method:
            methods_to_try = [method] if method in self.available_methods and self.available_methods[method] else []
        else:
            methods_to_try = []
            if self.available_methods.get('imagemagick'):
                methods_to_try.append('imagemagick')
            if self.available_methods.get('graphicsmagick'):
                methods_to_try.append('graphicsmagick')
            if self.available_methods.get('imageio'):
                methods_to_try.append('imageio')
            if self.available_methods.get('pillow'):
                methods_to_try.append('pillow')
        
        # 尝试转换
        for method_name in methods_to_try:
            print(f"  尝试方法: {method_name}")
            
            success = False
            if method_name == 'imagemagick':
                success = self._convert_with_imagemagick(wmf_file, png_path)
            elif method_name == 'graphicsmagick':
                success = self._convert_with_graphicsmagick(wmf_file, png_path)
            elif method_name == 'imageio':
                success = self._convert_with_imageio(wmf_file, png_path)
            elif method_name == 'pillow':
                success = self._convert_with_pillow_enhanced(wmf_file, png_path)
            
            if success:
                # 验证文件
                if png_path.exists() and png_path.stat().st_size > 0:
                    print(f"  ✅ 转换成功! 大小: {png_path.stat().st_size} 字节")
                    self.stats['success'] += 1
                    return True
                else:
                    print("  ❌ 转换文件无效")
                    if png_path.exists():
                        png_path.unlink()  # 删除无效文件
        
        print(f"  ❌ 所有方法都失败了")
        self.stats['failed'] += 1
        return False
    
    def batch_convert(self, input_dir="media", pattern="*.wmf"):
        """批量转换"""
        input_path = Path(input_dir)
        
        if not input_path.exists():
            print(f"❌ 目录不存在: {input_dir}")
            return
        
        wmf_files = list(input_path.glob(pattern))
        if not wmf_files:
            print(f"❌ 在 {input_dir} 中未找到匹配文件: {pattern}")
            return
        
        print(f"🔍 找到 {len(wmf_files)} 个WMF文件")
        self.stats['total'] = len(wmf_files)
        
        # 显示可用方法
        available_methods = [k for k, v in self.available_methods.items() if v]
        if not available_methods:
            print("❌ 没有可用的转换方法")
            self._show_installation_guide()
            return
        
        print(f"🛠️  将使用方法: {', '.join(available_methods)}")
        print("=" * 50)
        
        # 开始转换
        start_time = datetime.now()
        
        for i, wmf_file in enumerate(wmf_files, 1):
            print(f"[{i}/{len(wmf_files)}]", end=" ")
            self.convert_single_file(wmf_file)
            
            # 显示进度
            if i % 50 == 0 or i == len(wmf_files):
                elapsed = datetime.now() - start_time
                rate = i / elapsed.total_seconds() * 60  # 每分钟转换数
                print(f"\n📊 进度: {i}/{len(wmf_files)} ({i/len(wmf_files)*100:.1f}%) - {rate:.1f} 文件/分钟")
        
        # 显示最终统计
        elapsed = datetime.now() - start_time
        print("\n" + "=" * 50)
        print("🎉 批量转换完成!")
        print(f"📊 转换统计:")
        print(f"  ✅ 成功: {self.stats['success']}")
        print(f"  ❌ 失败: {self.stats['failed']}")
        print(f"  ⏭️  跳过: {self.stats['skipped']}")
        print(f"  📁 总计: {self.stats['total']}")
        print(f"  ⏱️  用时: {elapsed}")
        print(f"  📈 成功率: {(self.stats['success']/(self.stats['total']-self.stats['skipped'])*100):.1f}%" if (self.stats['total']-self.stats['skipped']) > 0 else "N/A")
    
    def _show_installation_guide(self):
        """显示安装指导"""
        print("\n🛠️  安装转换工具建议:")
        print("=" * 40)
        print("1. ImageMagick (推荐):")
        print("   下载地址: https://imagemagick.org/script/download.php#macosx")
        print("   或使用包管理器: brew install imagemagick")
        print()
        print("2. GraphicsMagick (备选):")
        print("   下载地址: http://www.graphicsmagick.org/download.html")
        print("   或使用包管理器: brew install graphicsmagick")
        print()
        print("3. 安装后重新运行此脚本")
    
    def test_conversion(self, test_file="media/image71.wmf"):
        """测试转换功能"""
        print("🧪 测试转换功能")
        print("=" * 30)
        
        if not Path(test_file).exists():
            # 查找第一个WMF文件进行测试
            wmf_files = list(Path("media").glob("*.wmf"))
            if wmf_files:
                test_file = wmf_files[0]
                print(f"使用测试文件: {test_file}")
            else:
                print("❌ 没有找到可用的测试文件")
                return
        
        success = self.convert_single_file(test_file)
        
        if success:
            print("✅ 测试转换成功!")
            print("💡 可以开始批量转换了")
        else:
            print("❌ 测试转换失败")
            self._show_installation_guide()


def main():
    """主函数"""
    import argparse
    
    parser = argparse.ArgumentParser(description='高级WMF转换器')
    parser.add_argument('input', nargs='?', help='输入文件或目录')
    parser.add_argument('-o', '--output', help='输出文件')
    parser.add_argument('-m', '--method', choices=['imagemagick', 'graphicsmagick', 'imageio', 'pillow'], help='指定转换方法')
    parser.add_argument('-t', '--test', action='store_true', help='测试转换功能')
    parser.add_argument('-b', '--batch', action='store_true', help='批量转换模式')
    
    args = parser.parse_args()
    
    converter = AdvancedWMFConverter()
    
    if args.test:
        converter.test_conversion()
    elif args.batch or not args.input:
        converter.batch_convert()
    else:
        converter.convert_single_file(args.input, args.output, args.method)


if __name__ == "__main__":
    main()
