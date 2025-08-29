#!/usr/bin/env python3
"""
详细分析波浪线情况的测试脚本
"""

def analyze_wavy_situation():
    """详细分析波浪线的真实情况"""
    print("🔍 详细分析波浪线情况")
    print("=" * 60)
    
    try:
        from docx import Document
        
        # 读取原始文档
        doc_path = "Chinese/精品解析：2025年四川省宜宾市中考语文真题（解析版）.docx"
        doc = Document(doc_path)
        
        for i, para in enumerate(doc.paragraphs):
            text = para.text.strip()
            if '然而' in text and '勾勒' in text:
                print(f"📍 目标段落 {i+1}:")
                print(f"   完整文本: {repr(text)}")
                print(f"   文本长度: {len(text)}")
                print()
                
                for j, run in enumerate(para.runs):
                    run_text = run.text
                    font = run.font
                    
                    print(f"  Run {j}:")
                    print(f"    文本: {repr(run_text)}")
                    print(f"    长度: {len(run_text)}")
                    print(f"    字符详情: {[ord(c) for c in run_text[:10]]}")  # 显示前10个字符的Unicode
                    
                    if font.underline:
                        print(f"    下划线: {font.underline}")
                    else:
                        print(f"    下划线: None")
                    
                    # 检查是否包含波浪线字符
                    wavy_chars = []
                    for k, char in enumerate(run_text):
                        if char in ['~', '～', '˜', '〜']:
                            wavy_chars.append((k, char, ord(char)))
                    
                    if wavy_chars:
                        print(f"    波浪线字符: {wavy_chars}")
                    else:
                        print(f"    波浪线字符: 无")
                    print()
                
                # 尝试查看段落的raw XML
                try:
                    para_xml = para._element.xml
                    print("📄 段落XML片段:")
                    # 只显示前500个字符避免太长
                    xml_preview = para_xml[:500] + "..." if len(para_xml) > 500 else para_xml
                    print(f"   {xml_preview}")
                except:
                    print("   XML获取失败")
                
                break
        
    except Exception as e:
        print(f"❌ 分析失败: {e}")

def check_expected_vs_actual():
    """检查期望的显示效果 vs 实际效果"""
    print("\n" + "=" * 60)
    print("🎯 期望 vs 实际效果对比")
    print("=" * 60)
    
    print("📝 从用户描述分析:")
    print("   用户说：'然而，～～～～～。在某种意义上...'")
    print("   期望效果：然而，后面应该有波浪线字符～作为填空")
    print()
    
    print("🔍 实际检测结果:")
    print("   - Word文档中：25个空格 + WAVY下划线格式")
    print("   - 这意味着：Word中显示为带波浪线下划线的空格")
    print("   - 但不是：波浪线字符～本身")
    print()
    
    print("💡 问题分析:")
    print("   1. Word中的'波浪线下划线格式'≠波浪线字符～")
    print("   2. 这是两种不同的概念：")
    print("      - 波浪线下划线：文字下方有波浪线装饰")
    print("      - 波浪线字符：实际的～字符")
    print("   3. 在填空题中，应该转换为波浪线字符～或<input>标签")

def check_unicode_chars():
    """检查各种波浪线相关的Unicode字符"""
    print("\n" + "=" * 60)
    print("🔤 波浪线相关Unicode字符")
    print("=" * 60)
    
    wavy_chars = [
        ('~', ord('~'), 'ASCII波浪线'),
        ('～', ord('～'), '全角波浪线'),
        ('˜', ord('˜'), '小波浪线'),
        ('〜', ord('〜'), '日文波浪线'),
        ('∼', ord('∼'), '数学波浪线'),
        ('⁓', ord('⁓'), '上标波浪线'),
    ]
    
    for char, code, desc in wavy_chars:
        print(f"   {char} (U+{code:04X}) - {desc}")
    
    print("\n🎯 在填空题中常用的字符：")
    print("   ～ (U+FF5E) - 全角波浪线，中文输入法常用")
    print("   ~ (U+007E) - 半角波浪线，英文键盘")

if __name__ == "__main__":
    analyze_wavy_situation()
    check_expected_vs_actual()
    check_unicode_chars()
