#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
题目序号清理工具
用于删除JSON文件中残留的题目序号，确保符合prompt要求
"""

import json
import re
import os
import sys
from pathlib import Path


def clean_question_numbers(content):
    """
    清理文本中的题目序号
    
    根据prompt要求删除：
    1. 数字序号：1. 2. 3. ... 19. 25. 等
    2. 中文序号：一、二、三、四、五、等
    3. 括号序号：（1）（2）（3）等
    4. 解析中的题号：31. 32. 33. 等
    """
    if not isinstance(content, str):
        return content
    
    # 删除开头的数字序号（如 "1. 题目内容" -> "题目内容"）
    content = re.sub(r'^(\s*)<p>(\s*)\d+\.\s*(.+)', r'\1<p>\2\3', content, flags=re.MULTILINE)
    
    # 删除开头的括号序号（如 "（1）题目内容" -> "题目内容"）
    content = re.sub(r'^(\s*)<p>(\s*)（\d+）\s*(.+)', r'\1<p>\2\3', content, flags=re.MULTILINE)
    content = re.sub(r'^(\s*)<p>(\s*)\(\d+\)\s*(.+)', r'\1<p>\2\3', content, flags=re.MULTILINE)
    
    # 删除开头的中文序号（如 "一、题目内容" -> "题目内容"）
    chinese_numbers = ['一', '二', '三', '四', '五', '六', '七', '八', '九', '十', 
                      '十一', '十二', '十三', '十四', '十五', '十六', '十七', '十八', '十九', '二十']
    for num in chinese_numbers:
        content = re.sub(rf'^(\s*)<p>(\s*){num}、\s*(.+)', r'\1<p>\2\3', content, flags=re.MULTILINE)
    
    # 删除解析和答案中的题号（如 "31. 句意：" -> "句意："）
    content = re.sub(r'<p>(\s*)\d+\.\s*(.+)', r'<p>\1\2', content)
    
    # 删除表格中的序号
    # 处理 <td>1. 内容</td> -> <td>内容</td>
    content = re.sub(r'<td>(\s*)\d+\.\s*(.+?)</td>', r'<td>\1\2</td>', content)
    content = re.sub(r'<td>(\s*)（\d+）\s*(.+?)</td>', r'<td>\1\2</td>', content)
    
    # 删除大题标号但保留题型名称
    # 如 "四、名著阅读（6分）" -> "名著阅读（6分）"
    for num in chinese_numbers:
        content = re.sub(rf'<p>(\s*)<strong>{num}、(.+?)</strong></p>', r'<p>\1<strong>\2</strong></p>', content)
        content = re.sub(rf'<p>(\s*){num}、(.+?)</p>', r'<p>\1\2</p>', content)
    
    return content


def clean_json_file(file_path):
    """清理JSON文件中的题目序号"""
    print(f"正在处理文件: {file_path}")
    
    try:
        # 读取JSON文件
        with open(file_path, 'r', encoding='utf-8') as f:
            data = json.load(f)
        
        if not isinstance(data, list):
            print(f"  ⚠️ 文件格式不正确，跳过: {file_path}")
            return False
        
        changes_made = 0
        
        # 递归清理所有字符串字段
        def clean_item(item):
            nonlocal changes_made
            
            if isinstance(item, dict):
                for key, value in item.items():
                    if isinstance(value, str):
                        cleaned_value = clean_question_numbers(value)
                        if cleaned_value != value:
                            item[key] = cleaned_value
                            changes_made += 1
                    elif isinstance(value, (dict, list)):
                        clean_item(value)
            elif isinstance(item, list):
                for i, value in enumerate(item):
                    if isinstance(value, str):
                        cleaned_value = clean_question_numbers(value)
                        if cleaned_value != value:
                            item[i] = cleaned_value
                            changes_made += 1
                    elif isinstance(value, (dict, list)):
                        clean_item(value)
        
        # 清理数据
        clean_item(data)
        
        if changes_made > 0:
            # 备份原文件
            backup_path = str(file_path) + '.backup'
            if not os.path.exists(backup_path):
                import shutil
                shutil.copy2(file_path, backup_path)
                print(f"  📁 已创建备份: {backup_path}")
            
            # 保存清理后的文件
            with open(file_path, 'w', encoding='utf-8') as f:
                json.dump(data, f, ensure_ascii=False, indent=2)
            
            print(f"  ✅ 已清理 {changes_made} 处序号")
            return True
        else:
            print(f"  ℹ️ 未发现需要清理的序号")
            return False
            
    except Exception as e:
        print(f"  ❌ 处理失败: {e}")
        return False


def main():
    """主函数"""
    # 处理命令行参数
    if len(sys.argv) > 1:
        target_file = sys.argv[1]
        if os.path.isfile(target_file) and target_file.endswith('.json'):
            clean_json_file(target_file)
        else:
            print(f"❌ 指定的文件不存在或不是JSON文件: {target_file}")
        return
    
    # 自动处理json_res文件夹中的所有JSON文件
    json_res_dir = Path("json_res")
    if not json_res_dir.exists():
        print("❌ json_res 文件夹不存在")
        return
    
    json_files = list(json_res_dir.glob("*.json"))
    if not json_files:
        print("❌ json_res 文件夹中没有JSON文件")
        return
    
    print(f"📁 发现 {len(json_files)} 个JSON文件")
    print("=" * 60)
    
    success_count = 0
    total_count = len(json_files)
    
    for json_file in json_files:
        if clean_json_file(json_file):
            success_count += 1
        print()
    
    print("=" * 60)
    print(f"🎉 处理完成: {success_count}/{total_count} 个文件成功清理")
    
    if success_count > 0:
        print("\n💡 提示:")
        print("  - 原始文件已备份为 .backup 后缀")
        print("  - 如果需要恢复，可以重命名 .backup 文件")
        print("  - 清理后的文件符合prompt要求，不包含题目序号")


if __name__ == "__main__":
    main()

