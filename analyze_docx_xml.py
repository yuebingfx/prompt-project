#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
分析docx文件的XML结构，寻找加点字的实现方式
目标：找到加点字在docx XML中的具体表示，以便让pandoc能够识别
"""

import zipfile
import xml.etree.ElementTree as ET
from pathlib import Path
import re

def analyze_docx_xml_for_dots(docx_path):
    """深入分析docx的XML结构"""
    print(f"🔍 深入分析docx XML结构: {docx_path}")
    
    try:
        with zipfile.ZipFile(docx_path, 'r') as zip_file:
            # 读取主文档XML
            document_xml = zip_file.read('word/document.xml')
            xml_content = document_xml.decode('utf-8')
            
            print("📄 查看完整的XML内容片段...")
            # 寻找包含"筹"、"召"、"砥"、"提"字符附近的XML
            target_chars = ['筹', '召', '砥', '提']
            
            for char in target_chars:
                if char in xml_content:
                    print(f"\n🎯 找到字符 '{char}' 的XML上下文:")
                    # 找到字符位置前后200个字符的XML内容
                    char_pos = xml_content.find(char)
                    if char_pos != -1:
                        start = max(0, char_pos - 200)
                        end = min(len(xml_content), char_pos + 200)
                        context = xml_content[start:end]
                        print(f"XML上下文:\n{context}")
                        print("-" * 50)
            
            # 解析XML结构
            root = ET.fromstring(document_xml)
            
            # 寻找包含目标字符的所有text节点
            print("\n🔍 搜索包含目标字符的文本节点...")
            namespaces = {'w': 'http://schemas.openxmlformats.org/wordprocessingml/2006/main'}
            
            text_nodes = root.findall('.//w:t', namespaces)
            for i, text_node in enumerate(text_nodes):
                if text_node.text and any(char in text_node.text for char in target_chars):
                    print(f"\n节点 {i}: '{text_node.text}'")
                    
                    # 获取父节点信息
                    parent = text_node.getparent()
                    if parent is not None:
                        print(f"父节点标签: {parent.tag}")
                        print(f"父节点XML: {ET.tostring(parent, encoding='unicode')[:300]}...")
                        
                        # 检查祖父节点
                        grandparent = parent.getparent()
                        if grandparent is not None:
                            print(f"祖父节点标签: {grandparent.tag}")
                            print(f"祖父节点XML: {ET.tostring(grandparent, encoding='unicode')[:400]}...")
    
    except Exception as e:
        print(f"❌ 分析失败: {e}")

def search_emphasis_patterns(docx_path):
    """搜索可能的着重号/加点字相关的XML模式"""
    print(f"\n🔍 搜索着重号相关的XML模式...")
    
    try:
        with zipfile.ZipFile(docx_path, 'r') as zip_file:
            document_xml = zip_file.read('word/document.xml')
            xml_content = document_xml.decode('utf-8')
            
            # 搜索可能相关的XML元素
            emphasis_patterns = [
                r'<w:em[^>]*>',
                r'<w:emphasis[^>]*>',
                r'<w:accent[^>]*>',
                r'<w:ruby[^>]*>',
                r'<w:eastAsianLayout[^>]*>',
                r'text-emphasis[^>]*>',
                r'emphasis[^>]*dot[^>]*>',
                r'dot[^>]*emphasis[^>]*>',
            ]
            
            for pattern in emphasis_patterns:
                matches = re.findall(pattern, xml_content, re.IGNORECASE)
                if matches:
                    print(f"找到模式 '{pattern}': {len(matches)} 个匹配")
                    for match in matches[:3]:  # 只显示前3个
                        print(f"  {match}")
    
    except Exception as e:
        print(f"❌ 搜索失败: {e}")

def check_styles_xml(docx_path):
    """检查styles.xml文件，可能包含加点字的样式定义"""
    print(f"\n📋 检查样式文件...")
    
    try:
        with zipfile.ZipFile(docx_path, 'r') as zip_file:
            if 'word/styles.xml' in zip_file.namelist():
                styles_xml = zip_file.read('word/styles.xml')
                styles_content = styles_xml.decode('utf-8')
                
                # 搜索可能相关的样式
                if 'emphasis' in styles_content.lower() or 'dot' in styles_content.lower():
                    print("发现可能相关的样式内容:")
                    # 查找包含emphasis或dot的行
                    lines = styles_content.split('\n')
                    for i, line in enumerate(lines):
                        if 'emphasis' in line.lower() or 'dot' in line.lower():
                            print(f"  行 {i}: {line.strip()}")
            else:
                print("未找到styles.xml文件")
    
    except Exception as e:
        print(f"❌ 检查样式失败: {e}")

if __name__ == "__main__":
    docx_file = "Chinese/精品解析：2025年甘肃省兰州市中考语文真题（解析版）.docx"
    
    if Path(docx_file).exists():
        print("=" * 60)
        print("DOCX XML 结构分析")
        print("=" * 60)
        
        analyze_docx_xml_for_dots(docx_file)
        search_emphasis_patterns(docx_file)
        check_styles_xml(docx_file)
        
        print("\n" + "=" * 60)
    else:
        print(f"文件不存在: {docx_file}")
