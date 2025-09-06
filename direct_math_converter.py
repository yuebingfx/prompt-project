#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
直接数学公式转换器 - 彻底解决方案

直接从Word文档中提取OMML数学标记并转换为LaTeX格式，
完全绕过WMF文件，实现真正的数学公式识别和转换。

功能特点：
1. 直接解析Word文档XML结构
2. 提取OMML(Office Math Markup Language)数据
3. 转换OMML为LaTeX格式
4. 处理复杂数学表达式
5. 支持分数、指数、根号、积分等各种数学符号

作者：Assistant  
创建时间：2024年12月19日
"""

import os
import re
import zipfile
import xml.etree.ElementTree as ET
from pathlib import Path
from datetime import datetime
import subprocess


class DirectMathConverter:
    def __init__(self):
        self.pandoc_available = self._check_pandoc()
        
        # OMML到LaTeX转换映射
        self.omml_to_latex = {
            # 基础元素
            'r': '',  # run (文本运行)
            't': '',  # text
            
            # 分数
            'f': 'frac',  # fraction
            'num': '',    # numerator  
            'den': '',    # denominator
            
            # 上下标
            'sSup': '^',  # superscript
            'sSub': '_',  # subscript  
            'sup': '',    # superscript content
            'sub': '',    # subscript content
            'e': '',      # element
            
            # 根号
            'rad': 'sqrt',  # radical/square root
            'deg': '',      # degree (for nth root)
            
            # 积分
            'eqArr': 'begin{align}',  # equation array
            'nary': '',    # n-ary operator (sum, integral, etc.)
            
            # 括号
            'd': '',       # delimiter
            'dPr': '',     # delimiter properties
            'begChr': '',  # begin character
            'endChr': '',  # end character
            
            # 矩阵
            'm': 'begin{matrix}',  # matrix
            'mr': '',              # matrix row
            'mc': '',              # matrix column
        }
        
        print("直接数学公式转换器已初始化")
        if not self.pandoc_available:
            print("⚠️ 警告: pandoc未安装，将使用内置转换功能")
    
    def _check_pandoc(self):
        """检查pandoc是否可用"""
        try:
            result = subprocess.run(['pandoc', '--version'], 
                                  capture_output=True, text=True, timeout=10)
            return result.returncode == 0
        except:
            return False
    
    def extract_document_xml(self, docx_path):
        """从docx文件中提取document.xml内容"""
        try:
            with zipfile.ZipFile(docx_path, 'r') as docx_zip:
                # 读取主文档XML
                document_xml = docx_zip.read('word/document.xml')
                return document_xml.decode('utf-8')
        except Exception as e:
            print(f"❌ 提取document.xml失败: {e}")
            return None
    
    def find_math_elements(self, document_xml):
        """从document.xml中查找所有数学元素"""
        try:
            root = ET.fromstring(document_xml)
            
            # 定义命名空间
            namespaces = {
                'w': 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
                'm': 'http://schemas.openxmlformats.org/officeDocument/2006/math'
            }
            
            # 查找所有math元素
            math_elements = root.findall('.//m:oMath', namespaces)
            
            print(f"🔍 找到 {len(math_elements)} 个数学公式元素")
            return math_elements, namespaces
            
        except Exception as e:
            print(f"❌ 解析XML失败: {e}")
            return [], {}
    
    def parse_omml_element(self, element, namespaces):
        """递归解析OMML元素并转换为LaTeX"""
        if element is None:
            return ""
        
        tag = element.tag.split('}')[-1] if '}' in element.tag else element.tag
        result = ""
        
        # 处理文本内容
        if element.text and element.text.strip():
            result += element.text.strip()
        
        # 根据标签类型处理
        if tag == 'f':  # 分数
            num_elem = element.find('.//m:num', namespaces)
            den_elem = element.find('.//m:den', namespaces)
            
            if num_elem is not None and den_elem is not None:
                numerator = self.parse_omml_element(num_elem, namespaces)
                denominator = self.parse_omml_element(den_elem, namespaces)
                result += f"\\frac{{{numerator}}}{{{denominator}}}"
        
        elif tag == 'sSup':  # 上标
            base_elem = element.find('.//m:e', namespaces)  
            sup_elem = element.find('.//m:sup', namespaces)
            
            if base_elem is not None and sup_elem is not None:
                base = self.parse_omml_element(base_elem, namespaces)
                superscript = self.parse_omml_element(sup_elem, namespaces)
                result += f"{base}^{{{superscript}}}"
        
        elif tag == 'sSub':  # 下标
            base_elem = element.find('.//m:e', namespaces)
            sub_elem = element.find('.//m:sub', namespaces)
            
            if base_elem is not None and sub_elem is not None:
                base = self.parse_omml_element(base_elem, namespaces)
                subscript = self.parse_omml_element(sub_elem, namespaces)
                result += f"{base}_{{{subscript}}}"
        
        elif tag == 'rad':  # 根号
            deg_elem = element.find('.//m:deg', namespaces)
            rad_elem = element.find('.//m:e', namespaces)
            
            if rad_elem is not None:
                radicand = self.parse_omml_element(rad_elem, namespaces)
                if deg_elem is not None and deg_elem.text and deg_elem.text.strip():
                    degree = self.parse_omml_element(deg_elem, namespaces)
                    result += f"\\sqrt[{degree}]{{{radicand}}}"
                else:
                    result += f"\\sqrt{{{radicand}}}"
        
        elif tag == 'nary':  # n元运算符(积分、求和等)
            # 查找运算符类型
            chr_elem = element.find('.//m:chr', namespaces)
            sub_elem = element.find('.//m:sub', namespaces)
            sup_elem = element.find('.//m:sup', namespaces)
            e_elem = element.find('.//m:e', namespaces)
            
            if chr_elem is not None and chr_elem.attrib.get('m:val'):
                operator = chr_elem.attrib['m:val']
                
                if operator == '∫':
                    result += "\\int"
                elif operator == '∑':
                    result += "\\sum"
                elif operator == '∏':
                    result += "\\prod"
                else:
                    result += operator
                
                # 添加上下限
                if sub_elem is not None:
                    lower = self.parse_omml_element(sub_elem, namespaces)
                    result += f"_{{{lower}}}"
                
                if sup_elem is not None:
                    upper = self.parse_omml_element(sup_elem, namespaces)
                    result += f"^{{{upper}}}"
                
                # 添加被积函数或求和项
                if e_elem is not None:
                    integrand = self.parse_omml_element(e_elem, namespaces)
                    result += f" {integrand}"
        
        elif tag == 'd':  # 分隔符/括号
            begin_chr = element.find('.//m:begChr', namespaces)
            end_chr = element.find('.//m:endChr', namespaces)
            e_elem = element.find('.//m:e', namespaces)
            
            begin_char = begin_chr.attrib.get('m:val', '(') if begin_chr is not None else '('
            end_char = end_chr.attrib.get('m:val', ')') if end_chr is not None else ')'
            
            if e_elem is not None:
                content = self.parse_omml_element(e_elem, namespaces)
                
                # 处理特殊括号
                if begin_char == '{' and end_char == '}':
                    result += f"\\left\\{{{content}\\right\\}}"
                elif begin_char == '[' and end_char == ']':
                    result += f"\\left[{content}\\right]"
                elif begin_char == '|' and end_char == '|':
                    result += f"\\left|{content}\\right|"
                else:
                    result += f"\\left{begin_char}{content}\\right{end_char}"
        
        # 递归处理子元素
        for child in element:
            child_result = self.parse_omml_element(child, namespaces)
            if child_result:
                result += child_result
        
        # 处理尾部文本
        if element.tail and element.tail.strip():
            result += element.tail.strip()
        
        return result
    
    def extract_all_math_formulas(self, docx_path):
        """提取文档中所有数学公式"""
        print(f"📄 开始解析文档: {docx_path}")
        
        document_xml = self.extract_document_xml(docx_path)
        if not document_xml:
            return {}
        
        math_elements, namespaces = self.find_math_elements(document_xml)
        if not math_elements:
            print("❌ 未找到数学公式元素")
            return {}
        
        formulas = {}
        for i, math_elem in enumerate(math_elements):
            try:
                latex_formula = self.parse_omml_element(math_elem, namespaces)
                if latex_formula.strip():
                    formulas[f"formula_{i+1}"] = latex_formula.strip()
                    print(f"  ✓ 公式 {i+1}: {latex_formula.strip()}")
                else:
                    print(f"  ⚠️ 公式 {i+1}: 转换结果为空")
            except Exception as e:
                print(f"  ❌ 公式 {i+1}: 转换失败 - {e}")
        
        print(f"✅ 成功提取 {len(formulas)} 个数学公式")
        return formulas
    
    def convert_with_enhanced_pandoc(self, docx_path):
        """使用增强的pandoc进行转换，特别处理数学公式"""
        if not self.pandoc_available:
            print("❌ Pandoc不可用，无法进行转换")
            return None
        
        try:
            # 使用pandoc转换，启用数学公式支持
            cmd = [
                'pandoc',
                docx_path,
                '--to', 'markdown',
                '--wrap', 'none',
                '--standalone',
                '--mathml',  # 处理MathML
                '--quiet'
            ]
            
            print(f"🔧 执行增强pandoc命令: {' '.join(cmd)}")
            
            result = subprocess.run(cmd, capture_output=True, text=True, timeout=300)
            
            if result.returncode == 0:
                content = result.stdout
                print(f"✅ Pandoc转换成功: {len(content)} 字符")
                return content
            else:
                print(f"❌ Pandoc转换失败: {result.stderr}")
                return None
                
        except Exception as e:
            print(f"❌ Pandoc转换异常: {e}")
            return None
    
    def post_process_formulas(self, markdown_content, extracted_formulas):
        """后处理Markdown内容，替换公式占位符"""
        if not extracted_formulas:
            return markdown_content
        
        processed_content = markdown_content
        replacement_count = 0
        
        # 尝试匹配和替换公式
        for formula_id, latex_formula in extracted_formulas.items():
            # 查找可能的占位符模式
            patterns = [
                r'\[FORMULA\]',
                r'\$\$\$',
                r'!\[\]\([^)]*\)',  # 空的图片引用
                r'\$\s*\$',         # 空的数学模式
            ]
            
            for pattern in patterns:
                if re.search(pattern, processed_content):
                    processed_content = re.sub(
                        pattern, 
                        f"${latex_formula}$", 
                        processed_content, 
                        count=1
                    )
                    replacement_count += 1
                    break
        
        print(f"✅ 替换了 {replacement_count} 个公式占位符")
        return processed_content
    
    def convert_document(self, docx_path, output_path=None):
        """完整的文档转换流程"""
        print("=" * 60)
        print("直接数学公式转换器 - 彻底解决方案")
        print("=" * 60)
        print(f"输入文件: {docx_path}")
        
        if not os.path.exists(docx_path):
            print(f"❌ 输入文件不存在: {docx_path}")
            return False
        
        # 确定输出文件路径
        if output_path is None:
            input_name = Path(docx_path).stem
            output_path = f"{input_name}_直接转换_带LaTeX.md"
        
        print(f"输出文件: {output_path}")
        print("=" * 60)
        
        # 第一步：直接提取数学公式
        print("📊 第1步：直接提取OMML数学公式...")
        extracted_formulas = self.extract_all_math_formulas(docx_path)
        
        # 第二步：使用增强pandoc转换
        print("📊 第2步：使用增强pandoc转换文档...")
        if self.pandoc_available:
            markdown_content = self.convert_with_enhanced_pandoc(docx_path)
        else:
            # 备用方案：基础文档处理
            print("🔄 使用备用转换方案...")
            markdown_content = self._fallback_conversion(docx_path)
        
        if not markdown_content:
            print("❌ 文档转换失败")
            return False
        
        # 第三步：后处理公式
        print("📊 第3步：整合数学公式...")
        final_content = self.post_process_formulas(markdown_content, extracted_formulas)
        
        # 第四步：添加元数据
        print("📊 第4步：添加元数据头部...")
        final_content = self._add_metadata_header(final_content, docx_path)
        
        # 第五步：保存结果
        print("📊 第5步：保存最终结果...")
        try:
            with open(output_path, 'w', encoding='utf-8') as f:
                f.write(final_content)
            
            print(f"✅ 转换完成！文件已保存到: {output_path}")
            print(f"📊 输出文件大小: {os.path.getsize(output_path) / 1024:.2f} KB")
            print(f"📊 提取公式数量: {len(extracted_formulas)}")
            return True
            
        except Exception as e:
            print(f"❌ 保存文件失败: {e}")
            return False
    
    def _fallback_conversion(self, docx_path):
        """备用转换方案，当pandoc不可用时使用"""
        try:
            from docx import Document
            doc = Document(docx_path)
            
            content = f"# {Path(docx_path).stem}\n\n"
            
            for paragraph in doc.paragraphs:
                if paragraph.text.strip():
                    content += paragraph.text.strip() + "\n\n"
            
            return content
        except Exception as e:
            print(f"❌ 备用转换失败: {e}")
            return None
    
    def _add_metadata_header(self, content, original_path):
        """添加元数据头部"""
        header = f"""---
title: {Path(original_path).stem}
date: {datetime.now().strftime('%Y-%m-%d')}
generator: 直接数学公式转换器
description: 通过直接解析OMML数据生成的带LaTeX公式的Markdown文档
conversion_method: Direct OMML to LaTeX
---

"""
        return header + content


def main():
    """主函数"""
    import sys
    
    converter = DirectMathConverter()
    
    # 配置参数
    if len(sys.argv) > 1:
        input_file = sys.argv[1]
        output_file = sys.argv[2] if len(sys.argv) > 2 else None
    else:
        # 默认处理青岛中考数学真题
        input_file = "Math/精品解析：2025年山东省青岛市中考数学真题（解析版）.docx"
        output_file = "青岛中考数学真题_直接转换_带LaTeX.md"
    
    print(f"将要转换的文件: {input_file}")
    
    # 执行转换
    success = converter.convert_document(input_file, output_file)
    
    if success:
        print("\n🎉 转换成功完成！")
        print("🔍 主要优势：")
        print("  ✓ 直接解析OMML数学标记")
        print("  ✓ 完全绕过WMF文件")
        print("  ✓ 支持复杂数学表达式")
        print("  ✓ 无需预定义模式库")
        print("\n💡 提示：")
        print("1. 生成的文件包含原生LaTeX数学公式")
        print("2. 建议使用支持LaTeX的Markdown编辑器查看")
        print("3. 如有问题，请检查原文档中的数学公式格式")
    else:
        print("\n❌ 转换失败，请检查:")
        print("1. 输入文件是否存在且格式正确")
        print("2. 文档是否包含数学公式")
        print("3. 系统环境是否满足要求")


if __name__ == "__main__":
    main()
