#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
JSON双引号修复工具
自动修复JSON文件中未转义的中文双引号
"""

import json
import re
import os
import shutil
from datetime import datetime

def fix_json_quotes(json_file_path):
    """修复JSON文件中的双引号问题"""
    print(f"🔧 开始修复JSON文件: {json_file_path}")
    
    # 备份原文件
    backup_file = f"{json_file_path}.backup_{datetime.now().strftime('%Y%m%d_%H%M%S')}"
    shutil.copy2(json_file_path, backup_file)
    print(f"📋 已备份原文件: {backup_file}")
    
    try:
        # 读取文件内容
        with open(json_file_path, 'r', encoding='utf-8') as f:
            content = f.read()
        
        print(f"📄 文件大小: {len(content)} 字符")
        
        # 统计修复次数
        fix_count = 0
        
        # 修复中文双引号（左引号和右引号）
        # 模式1: 修复字符串值中的中文双引号
        def replace_chinese_quotes(match):
            nonlocal fix_count
            full_match = match.group(0)
            field_name = match.group(1)  # 字段名
            quote_start = match.group(2)  # 开始的双引号
            content_part = match.group(3)  # 内容部分
            
            # 替换内容中的中文双引号
            original_content = content_part
            # 替换左右中文双引号
            content_part = content_part.replace('"', '\\"').replace('"', '\\"')
            
            if content_part != original_content:
                fix_count += 1
                print(f"  ✅ 修复字段 {field_name}: 发现中文双引号")
            
            # 重新构建完整的匹配内容
            # 需要找到这个字符串值的结束位置
            return f'"{field_name}": "{content_part}"'
        
        # 更精确的模式：匹配JSON字符串值
        # 匹配 "fieldname": "content with 中文双引号"
        json_string_pattern = r'"([^"]+)":\s*"([^"]*?["""][^"]*?)"'
        
        # 第一次尝试简单替换
        original_content = content
        content = re.sub(json_string_pattern, replace_chinese_quotes, content)
        
        # 如果还有问题，使用更保守的方法
        if fix_count == 0:
            # 直接替换所有中文双引号（在引号内）
            def replace_in_json_strings(match):
                nonlocal fix_count
                before = match.group(1)
                string_content = match.group(2)
                after = match.group(3)
                
                original = string_content
                # 替换中文双引号
                string_content = string_content.replace('"', '\\"').replace('"', '\\"')
                
                if string_content != original:
                    fix_count += 1
                
                return f'{before}"{string_content}"{after}'
            
            # 匹配JSON字符串 ": "content"
            content = re.sub(r'(:\s*)"([^"]*)"([,\]\}])', replace_in_json_strings, content)
        
        print(f"🔢 共修复 {fix_count} 处双引号问题")
        
        # 验证JSON是否有效
        try:
            json.loads(content)
            print("✅ JSON格式验证通过")
        except json.JSONDecodeError as e:
            print(f"⚠️ JSON验证失败: {e}")
            print("尝试更保守的修复方法...")
            
            # 回退到原内容，使用更保守的方法
            content = original_content
            fix_count = 0
            
            # 只替换明显的中文双引号模式
            patterns_to_fix = [
                (r'"([^"]*)"([^"]*)"([^"]*)"', r'"\1\\"\\2\\"\3"'),  # "content"more"content"
                (r'"([^"]*)"([^"]*)"', r'"\1\\"\2"'),  # "content"more
                (r'"([^"]*)"([^"]*)"', r'"\1\\"\2"'),  # different quotes
            ]
            
            for pattern, replacement in patterns_to_fix:
                matches_before = len(re.findall(pattern, content))
                content = re.sub(pattern, replacement, content)
                matches_after = len(re.findall(pattern, content))
                if matches_before > matches_after:
                    fix_count += matches_before - matches_after
            
            # 再次验证
            try:
                json.loads(content)
                print("✅ 保守修复后JSON格式验证通过")
            except json.JSONDecodeError as e:
                print(f"❌ 修复失败: {e}")
                return False
        
        # 保存修复后的文件
        with open(json_file_path, 'w', encoding='utf-8') as f:
            f.write(content)
        
        print(f"💾 文件修复完成，共修复 {fix_count} 处问题")
        return True
        
    except Exception as e:
        print(f"❌ 修复过程中出错: {e}")
        # 恢复备份文件
        shutil.copy2(backup_file, json_file_path)
        print("🔄 已恢复原文件")
        return False

def main():
    """主函数"""
    json_file = "json_res/questions_with_pandoc_精品解析：2025年甘肃省兰州市中考语文真题（解析版）.json"
    
    if not os.path.exists(json_file):
        print(f"❌ 文件不存在: {json_file}")
        return
    
    print("=" * 60)
    print("JSON双引号修复工具")
    print("=" * 60)
    
    success = fix_json_quotes(json_file)
    
    if success:
        print("\n🎉 修复成功！您现在可以正常使用JSON文件了。")
    else:
        print("\n❌ 修复失败，请检查文件内容。")

if __name__ == "__main__":
    main()
