#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
最终的加点字转换器

将pandoc输出中的 [DOT_BELOW]字符[/DOT_BELOW] 标记转换为HTML text-emphasis格式
"""

import re
from pathlib import Path
import json

class FinalDotBelowConverter:
    def __init__(self):
        self.conversion_count = 0
        
    def convert_dot_below_markers_to_html(self, content):
        """将加点字标记转换为HTML格式"""
        
        # 匹配模式：[\[DOT_BELOW\]字符\[/DOT_BELOW\]]{.underline}
        pattern = r'\[\\\[DOT_BELOW\\\]([\u4e00-\u9fff])\\\[/DOT_BELOW\\\]\]\{\.underline\}'
        
        def replace_with_html(match):
            char = match.group(1)
            html_format = f'<span style="text-emphasis: filled dot black; text-emphasis-position: under right;" data-mce-style="text-emphasis: filled dot black; text-emphasis-position: under right;">{char}</span>'
            return html_format
        
        # 执行替换
        converted_content, count = re.subn(pattern, replace_with_html, content)
        self.conversion_count += count
        
        print(f"🎨 转换了 {count} 个加点字标记为HTML格式")
        
        return converted_content
    
    def process_pandoc_output_file(self, input_file, output_file=None):
        """处理pandoc输出文件"""
        if output_file is None:
            output_file = input_file.replace('.md', '_with_html_dots.md')
        
        print(f"📄 处理文件: {input_file}")
        
        try:
            # 读取原始文件
            with open(input_file, 'r', encoding='utf-8') as f:
                content = f.read()
            
            # 转换加点字标记
            converted_content = self.convert_dot_below_markers_to_html(content)
            
            # 保存转换后的文件
            with open(output_file, 'w', encoding='utf-8') as f:
                f.write(converted_content)
            
            print(f"✅ 转换完成，保存到: {output_file}")
            
            # 显示转换示例
            self._show_conversion_examples(converted_content)
            
            return output_file
            
        except Exception as e:
            print(f"❌ 处理失败: {e}")
            return None
    
    def _show_conversion_examples(self, content):
        """显示转换示例"""
        print(f"\n📋 转换示例:")
        
        # 查找包含HTML加点字的行
        lines = content.split('\n')
        example_count = 0
        
        for line in lines:
            if 'text-emphasis:' in line and 'under right' in line:
                # 提取加点字
                char_match = re.search(r'text-emphasis-position: under right;"[^>]*>([^<]+)</span>', line)
                if char_match:
                    char = char_match.group(1)
                    # 显示上下文（截取部分）
                    context_start = max(0, line.find(char) - 20)
                    context_end = min(len(line), line.find(char) + 20)
                    context = line[context_start:context_end]
                    print(f"  {example_count + 1}. 加点字 '{char}': ...{context}...")
                    
                    example_count += 1
                    if example_count >= 5:  # 只显示前5个示例
                        break
    
    def integrate_with_simple_parser(self, processed_docx_path):
        """与现有的simple_parser_with_pandoc.py集成"""
        print(f"\n🔗 与现有解析器集成...")
        
        try:
            # 使用pandoc转换预处理过的docx文件
            import subprocess
            
            markdown_file = processed_docx_path.replace('.docx', '_integrated.md')
            
            # 运行pandoc转换
            cmd = [
                'pandoc',
                processed_docx_path,
                '--to', 'markdown',
                '--wrap', 'none',
                '--output', markdown_file
            ]
            
            result = subprocess.run(cmd, capture_output=True, text=True, timeout=60)
            
            if result.returncode == 0:
                print(f"✅ pandoc转换成功: {markdown_file}")
                
                # 转换加点字标记
                final_file = self.process_pandoc_output_file(markdown_file)
                
                if final_file:
                    print(f"🎉 完整流程成功！最终文件: {final_file}")
                    return final_file
            else:
                print(f"❌ pandoc转换失败: {result.stderr}")
                
        except Exception as e:
            print(f"❌ 集成失败: {e}")
        
        return None

def demonstrate_complete_workflow():
    """演示完整的工作流程"""
    print("=" * 60)
    print("完整的加点字处理工作流程演示")
    print("=" * 60)
    
    # 原始docx文件
    original_docx = "Chinese/精品解析：2025年甘肃省兰州市中考语文真题（解析版）.docx"
    
    # 步骤1: 预处理docx文件
    print("\n🔧 步骤1: 预处理docx文件...")
    from docx_dot_preprocessor import DocxDotPreprocessor
    
    preprocessor = DocxDotPreprocessor()
    processed_docx = preprocessor.preprocess_docx_for_pandoc(original_docx)
    
    if not processed_docx:
        print("❌ 预处理失败")
        return
    
    # 步骤2: pandoc转换
    print(f"\n📄 步骤2: pandoc转换...")
    converter = FinalDotBelowConverter()
    final_file = converter.integrate_with_simple_parser(processed_docx)
    
    if final_file:
        print(f"\n🎊 成功！完整的加点字处理流程完成")
        print(f"📁 最终输出文件: {final_file}")
        print(f"\n💡 该文件可以直接用于您的simple_parser_with_pandoc.py")
        
        # 保存处理报告
        report = {
            "original_file": original_docx,
            "processed_docx": processed_docx, 
            "final_markdown": final_file,
            "total_conversions": converter.conversion_count,
            "status": "success"
        }
        
        report_file = "dot_below_processing_report.json"
        with open(report_file, 'w', encoding='utf-8') as f:
            json.dump(report, f, ensure_ascii=False, indent=2)
        
        print(f"📋 处理报告已保存: {report_file}")

def main():
    """主函数"""
    import sys
    
    if len(sys.argv) > 1:
        input_file = sys.argv[1]
        
        # 如果输入是markdown文件，直接转换
        if input_file.endswith('.md'):
            converter = FinalDotBelowConverter()
            result = converter.process_pandoc_output_file(input_file)
            if result:
                print(f"🎉 转换完成: {result}")
        
        # 如果输入是docx文件，执行完整流程
        elif input_file.endswith('.docx'):
            demonstrate_complete_workflow()
    else:
        # 默认演示完整流程
        demonstrate_complete_workflow()

if __name__ == "__main__":
    main()
