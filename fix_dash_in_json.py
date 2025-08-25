#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
修复JSON文件中的破折号格式
将连续的短横线（------）转换为中文破折号（——）
"""

import json
import re
import os
from datetime import datetime

def fix_dashes_in_text(text):
    """
    修复文本中的破折号格式
    将连续的短横线（4个或更多）转换为中文破折号（——）
    """
    if not isinstance(text, str):
        return text
    
    # 匹配4个或更多连续的短横线
    dash_pattern = r'-{4,}'
    
    # 替换为中文破折号
    fixed_text = re.sub(dash_pattern, '——', text)
    
    return fixed_text

def fix_dashes_in_json_content(data):
    """
    递归地修复JSON数据中所有字符串内容的破折号格式
    """
    if isinstance(data, dict):
        fixed_data = {}
        for key, value in data.items():
            fixed_data[key] = fix_dashes_in_json_content(value)
        return fixed_data
    elif isinstance(data, list):
        return [fix_dashes_in_json_content(item) for item in data]
    elif isinstance(data, str):
        return fix_dashes_in_text(data)
    else:
        return data

def count_dash_issues(data):
    """
    统计JSON数据中的破折号问题数量
    """
    count = 0
    dash_pattern = r'-{4,}'
    
    if isinstance(data, dict):
        for value in data.values():
            count += count_dash_issues(value)
    elif isinstance(data, list):
        for item in data:
            count += count_dash_issues(item)
    elif isinstance(data, str):
        matches = re.findall(dash_pattern, data)
        count += len(matches)
    
    return count

def fix_json_file(input_file_path, output_file_path=None):
    """
    修复JSON文件中的破折号格式问题
    """
    try:
        print(f"🔍 正在检查文件: {input_file_path}")
        
        # 读取JSON文件
        with open(input_file_path, 'r', encoding='utf-8') as f:
            data = json.load(f)
        
        # 统计修复前的问题数量
        issues_before = count_dash_issues(data)
        
        if issues_before == 0:
            print(f"  ✅ 文件中没有发现破折号格式问题")
            return True
        
        print(f"  📊 发现 {issues_before} 处需要修复的破折号格式")
        
        # 修复破折号格式
        fixed_data = fix_dashes_in_json_content(data)
        
        # 统计修复后的问题数量
        issues_after = count_dash_issues(fixed_data)
        
        # 确定输出文件路径
        if output_file_path is None:
            output_file_path = input_file_path
        
        # 保存修复后的文件
        with open(output_file_path, 'w', encoding='utf-8') as f:
            json.dump(fixed_data, f, ensure_ascii=False, indent=2)
        
        print(f"  ✅ 修复完成，已修复 {issues_before - issues_after} 处破折号格式问题")
        
        if issues_after > 0:
            print(f"  ⚠️ 仍有 {issues_after} 处问题未修复（可能是特殊格式）")
        
        return True
        
    except Exception as e:
        print(f"  ❌ 修复失败: {e}")
        return False

def fix_all_json_files_in_directory(directory_path):
    """
    修复目录中所有JSON文件的破折号格式问题
    """
    try:
        print(f"🔍 扫描目录: {directory_path}")
        
        json_files = []
        for root, dirs, files in os.walk(directory_path):
            for file in files:
                if file.endswith('.json'):
                    json_files.append(os.path.join(root, file))
        
        if not json_files:
            print("  ℹ️ 未找到JSON文件")
            return
        
        print(f"  📁 找到 {len(json_files)} 个JSON文件")
        
        total_fixed = 0
        for json_file in json_files:
            if fix_json_file(json_file):
                total_fixed += 1
        
        print(f"\n🎉 批量修复完成，成功处理 {total_fixed}/{len(json_files)} 个文件")
        
    except Exception as e:
        print(f"❌ 批量修复失败: {e}")

def main():
    """主函数"""
    print("🔧 JSON破折号格式修复工具")
    print("=" * 50)
    
    # 获取当前脚本所在目录
    current_dir = os.path.dirname(os.path.abspath(__file__))
    
    # 修复json_res目录中的所有JSON文件
    json_res_dir = os.path.join(current_dir, "json_res")
    
    if os.path.exists(json_res_dir):
        print(f"\n📂 修复 json_res 目录中的JSON文件...")
        fix_all_json_files_in_directory(json_res_dir)
    else:
        print(f"  ⚠️ 未找到 json_res 目录: {json_res_dir}")
    
    print("\n" + "=" * 50)
    print("🎯 修复完成！")

if __name__ == "__main__":
    main()
