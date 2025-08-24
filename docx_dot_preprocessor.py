#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
docx加点字预处理器

目标：修改docx文件中的XML，将 <w:em w:val="dot"/> 转换为pandoc能识别的格式
这样pandoc就能正确转换加点字了。
"""

import zipfile
import xml.etree.ElementTree as ET
from pathlib import Path
import shutil
import tempfile
import re

class DocxDotPreprocessor:
    def __init__(self):
        self.modified_files = []
        
    def preprocess_docx_for_pandoc(self, input_docx_path, output_docx_path=None):
        """预处理docx文件，使pandoc能识别加点字"""
        if output_docx_path is None:
            output_docx_path = input_docx_path.replace('.docx', '_pandoc_ready.docx')
        
        print(f"🔧 预处理docx文件使其兼容pandoc...")
        print(f"输入: {input_docx_path}")
        print(f"输出: {output_docx_path}")
        
        try:
            # 复制原文件到临时位置
            with tempfile.TemporaryDirectory() as temp_dir:
                temp_docx = Path(temp_dir) / "temp.docx"
                shutil.copy2(input_docx_path, temp_docx)
                
                # 提取和修改XML内容
                modified_count = self._modify_docx_xml(temp_docx)
                
                # 复制修改后的文件到目标位置
                shutil.copy2(temp_docx, output_docx_path)
                
                print(f"✅ 预处理完成！修改了 {modified_count} 个加点字")
                print(f"📁 输出文件: {output_docx_path}")
                
                return output_docx_path
                
        except Exception as e:
            print(f"❌ 预处理失败: {e}")
            return None
    
    def _modify_docx_xml(self, docx_path):
        """修改docx文件中的XML内容"""
        modified_count = 0
        
        try:
            # 创建临时目录来解压和重新打包docx
            with tempfile.TemporaryDirectory() as temp_dir:
                extract_dir = Path(temp_dir) / "docx_content"
                extract_dir.mkdir()
                
                # 解压docx文件
                with zipfile.ZipFile(docx_path, 'r') as zip_file:
                    zip_file.extractall(extract_dir)
                
                # 修改document.xml
                document_xml_path = extract_dir / "word" / "document.xml"
                if document_xml_path.exists():
                    modified_count += self._process_document_xml(document_xml_path)
                
                # 重新打包docx文件
                self._repack_docx(extract_dir, docx_path)
                
        except Exception as e:
            print(f"❌ XML修改失败: {e}")
        
        return modified_count
    
    def _process_document_xml(self, xml_path):
        """处理document.xml文件"""
        print(f"  📄 处理文档XML...")
        
        try:
            # 读取XML内容
            with open(xml_path, 'r', encoding='utf-8') as f:
                xml_content = f.read()
            
            # 方法1: 使用字符串替换（更直接有效）
            modified_content, count1 = self._replace_em_dot_with_underline(xml_content)
            
            # 方法2: 或者转换为HTML样式（如果方法1不够）
            # modified_content, count2 = self._replace_em_dot_with_html_style(modified_content)
            
            # 保存修改后的XML
            with open(xml_path, 'w', encoding='utf-8') as f:
                f.write(modified_content)
            
            print(f"    ✅ 处理了 {count1} 个 <w:em w:val=\"dot\"/> 元素")
            return count1
            
        except Exception as e:
            print(f"    ❌ 处理XML失败: {e}")
            return 0
    
    def _replace_em_dot_with_underline(self, xml_content):
        """将 <w:em w:val="dot"/> 替换为下划线格式"""
        # 查找加点字的完整模式：<w:r>...<w:rPr>...<w:em w:val="dot"/>...</w:rPr><w:t>字符</w:t></w:r>
        
        # 首先统计现有的em dot元素
        em_dot_pattern = r'<w:em w:val="dot"\s*/>'
        em_matches = re.findall(em_dot_pattern, xml_content)
        original_count = len(em_matches)
        
        print(f"    🔍 找到 {original_count} 个 <w:em w:val=\"dot\"/> 元素")
        
        # 策略1: 将em dot转换为下划线+特殊标记
        # 这样pandoc能识别下划线，我们再在pandoc后处理中转换回加点字格式
        
        # 查找完整的run模式
        run_with_em_pattern = r'(<w:r>.*?<w:rPr>.*?)<w:em w:val="dot"\s*/>(.*?</w:rPr>.*?<w:t>)(.*?)(</w:t>.*?</w:r>)'
        
        def replace_run_with_em(match):
            before_em = match.group(1)  # <w:r>...<w:rPr>...
            after_em = match.group(2)   # ...</w:rPr>...<w:t>
            text_content = match.group(3)  # 字符内容
            after_text = match.group(4)  # </w:t>...</w:r>
            
            # 方案A: 添加下划线格式
            underline_xml = '<w:u w:val="single"/>'
            
            # 方案B: 在文本中添加特殊标记，便于后续处理
            marked_text = f"[DOT_BELOW]{text_content}[/DOT_BELOW]"
            
            # 组合新的XML
            new_run = f"{before_em}{underline_xml}{after_em}{marked_text}{after_text}"
            return new_run
        
        # 执行替换
        modified_content, replacement_count = re.subn(run_with_em_pattern, replace_run_with_em, xml_content, flags=re.DOTALL)
        
        print(f"    🔄 替换了 {replacement_count} 个完整的加点字run")
        
        # 如果上面的复杂模式没有匹配到，尝试简单的替换
        if replacement_count == 0:
            # 简单地移除em元素，保留文本
            modified_content = re.sub(em_dot_pattern, '<!-- DOT_BELOW_MARKER -->', xml_content)
            replacement_count = original_count
            print(f"    🔄 使用简单替换方法，标记了 {replacement_count} 个位置")
        
        return modified_content, replacement_count
    
    def _repack_docx(self, extract_dir, output_docx_path):
        """重新打包docx文件"""
        print(f"  📦 重新打包docx文件...")
        
        try:
            with zipfile.ZipFile(output_docx_path, 'w', zipfile.ZIP_DEFLATED) as zip_file:
                for file_path in extract_dir.rglob('*'):
                    if file_path.is_file():
                        # 计算相对路径
                        relative_path = file_path.relative_to(extract_dir)
                        zip_file.write(file_path, relative_path)
            
            print(f"    ✅ 重新打包完成")
            
        except Exception as e:
            print(f"    ❌ 重新打包失败: {e}")
    
    def test_pandoc_conversion(self, processed_docx_path):
        """测试pandoc转换效果"""
        print(f"\n🧪 测试pandoc转换...")
        
        try:
            import subprocess
            
            output_file = processed_docx_path.replace('.docx', '_test_output.md')
            
            # 运行pandoc转换
            cmd = [
                'pandoc',
                processed_docx_path,
                '--to', 'markdown',
                '--wrap', 'none',
                '--output', output_file
            ]
            
            result = subprocess.run(cmd, capture_output=True, text=True, timeout=60)
            
            if result.returncode == 0:
                print(f"✅ pandoc转换成功: {output_file}")
                
                # 检查输出内容
                with open(output_file, 'r', encoding='utf-8') as f:
                    content = f.read()
                
                # 查找我们的标记
                if '[DOT_BELOW]' in content:
                    dot_count = content.count('[DOT_BELOW]')
                    print(f"🎯 找到 {dot_count} 个加点字标记，转换成功！")
                    
                    # 显示示例
                    lines = content.split('\n')
                    for i, line in enumerate(lines):
                        if '[DOT_BELOW]' in line:
                            print(f"  示例: {line.strip()}")
                            if i > 10:  # 只显示前几个示例
                                break
                else:
                    print("⚠️ 输出中未找到加点字标记")
                
                return output_file
            else:
                print(f"❌ pandoc转换失败: {result.stderr}")
                return None
                
        except Exception as e:
            print(f"❌ 测试转换失败: {e}")
            return None

def main():
    """主函数"""
    import sys
    
    if len(sys.argv) > 1:
        input_docx = sys.argv[1]
    else:
        input_docx = "Chinese/精品解析：2025年甘肃省兰州市中考语文真题（解析版）.docx"
    
    if not Path(input_docx).exists():
        print(f"❌ 文件不存在: {input_docx}")
        return
    
    print("=" * 60)
    print("DOCX加点字预处理器 - 让pandoc识别加点字")
    print("=" * 60)
    
    preprocessor = DocxDotPreprocessor()
    
    # 1. 预处理docx文件
    processed_file = preprocessor.preprocess_docx_for_pandoc(input_docx)
    
    if processed_file:
        # 2. 测试pandoc转换
        output_file = preprocessor.test_pandoc_conversion(processed_file)
        
        if output_file:
            print(f"\n🎉 完整流程成功！")
            print(f"📁 预处理的docx: {processed_file}")
            print(f"📁 pandoc输出: {output_file}")
            print(f"\n💡 后续步骤:")
            print(f"1. 使用 {processed_file} 进行pandoc转换")
            print(f"2. 在pandoc输出中将 [DOT_BELOW]字符[/DOT_BELOW] 替换为HTML格式")
        
    print("\n" + "=" * 60)

if __name__ == "__main__":
    main()
