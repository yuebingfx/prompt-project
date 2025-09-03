#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
子题序号智能处理修复脚本

用于修复已生成的JSON文件中的序号问题：
- 单一问题子题：删除序号（如"（1）"、"（2）"等）
- 多问题子题：标准化序号（将"（1）"、"（2）"改为"1."、"2."）
"""

import json
import re
import os
from pathlib import Path

def clean_subtitle_numbers_in_content(content):
    """清理单个content中的序号"""
    if not content or not isinstance(content, str):
        return content
    
    # 检查是否包含多个连续序号（多问题子题）
    multi_patterns = [
        r'<p>\s*（1）.*?</p>.*?<p>\s*（2）',
        r'<p>\s*1\..*?</p>.*?<p>\s*2\.',
        r'（1）.*?（2）',
        r'1\..*?2\.'
    ]
    
    is_multi_question = any(re.search(pattern, content, re.DOTALL) for pattern in multi_patterns)
    
    if is_multi_question:
        # 多问题：将（1）（2）标准化为1. 2.
        content = re.sub(r'（(\d+)）', r'\1.', content)
        print(f"    🔧 多问题子题标准化序号：（1）（2） → 1. 2.")
    else:
        # 单一问题：删除序号
        original_content = content
        # 删除开头的（1）（2）等
        content = re.sub(r'^(<p[^>]*>)\s*（\d+）\s*', r'\1', content)
        # 删除开头的1. 2.等
        content = re.sub(r'^(<p[^>]*>)\s*\d+\.\s*', r'\1', content)
        
        if content != original_content:
            print(f"    🔧 单一问题子题删除序号")
    
    return content

def clean_subtitle_numbers_recursive(data):
    """递归清理JSON数据中的序号"""
    if isinstance(data, dict):
        # 处理subQuestions数组
        if 'subQuestions' in data and isinstance(data['subQuestions'], list):
            for i, sub_question in enumerate(data['subQuestions']):
                if isinstance(sub_question, dict) and 'content' in sub_question:
                    print(f"  📝 处理子题 {i+1}")
                    sub_question['content'] = clean_subtitle_numbers_in_content(sub_question['content'])
        
        # 递归处理嵌套结构
        for key, value in data.items():
            if isinstance(value, (dict, list)):
                clean_subtitle_numbers_recursive(value)
                
    elif isinstance(data, list):
        for item in data:
            clean_subtitle_numbers_recursive(item)

def fix_json_file(input_file):
    """修复单个JSON文件"""
    print(f"🔍 处理文件: {input_file}")
    
    try:
        # 读取JSON文件
        with open(input_file, 'r', encoding='utf-8') as f:
            data = json.load(f)
        
        # 清理序号
        clean_subtitle_numbers_recursive(data)
        
        # 创建备份
        backup_file = str(input_file) + '.backup'
        if not os.path.exists(backup_file):
            with open(backup_file, 'w', encoding='utf-8') as f:
                json.dump(data, f, ensure_ascii=False, indent=2)
            print(f"  💾 创建备份: {backup_file}")
        
        # 保存修复后的文件
        with open(input_file, 'w', encoding='utf-8') as f:
            json.dump(data, f, ensure_ascii=False, indent=2)
        
        print(f"✅ 修复完成: {input_file}")
        return True
        
    except Exception as e:
        print(f"❌ 处理失败: {input_file} - {e}")
        return False

def main():
    """主函数"""
    print("=" * 60)
    print("子题序号智能处理修复脚本")
    print("=" * 60)
    
    # JSON结果目录
    json_dir = Path("json_res")
    
    if not json_dir.exists():
        print(f"❌ 目录不存在: {json_dir}")
        return
    
    # 查找所有JSON文件
    json_files = list(json_dir.glob("*.json"))
    
    if not json_files:
        print(f"❌ 未找到JSON文件: {json_dir}")
        return
    
    print(f"📁 找到 {len(json_files)} 个JSON文件")
    
    # 处理每个文件
    success_count = 0
    for json_file in json_files:
        if fix_json_file(json_file):
            success_count += 1
        print()
    
    print("=" * 60)
    print(f"🎉 处理完成: {success_count}/{len(json_files)} 个文件修复成功")
    print("=" * 60)

if __name__ == "__main__":
    main()
