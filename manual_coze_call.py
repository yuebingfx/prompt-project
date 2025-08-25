#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
手动调用Coze工作流
用于处理JSON解析成功但Coze工作流被跳过的情况
"""

import json
import requests
from datetime import datetime
from pathlib import Path

def call_coze_workflow_manual(json_file_path):
    """手动调用Coze工作流"""
    print("🔗 手动调用Coze工作流...")
    
    # 读取JSON文件
    try:
        with open(json_file_path, 'r', encoding='utf-8') as f:
            processed_data = json.load(f)
        print(f"📄 成功读取JSON文件，包含 {len(processed_data)} 道题目")
    except Exception as e:
        print(f"❌ 读取JSON文件失败: {e}")
        return None
    
    # 调用Coze工作流
    try:
        headers = {
            'Authorization': f'Bearer pat_Z0r3WQNZ435IUDhJCc0bVHDd9mVcIh0Z6tOvYd3HPT3Q6WNfw5KaX7veOhNkqC3N',
            'Content-Type': 'application/json'
        }

        data = {
            "workflow_id": "7540878860784680995",
            "parameters": {
                "input": json.dumps(processed_data, ensure_ascii=False)
            }
        }
        
        print("🚀 调用Coze工作流开始...")
        print(f"📊 发送数据量: {len(json.dumps(processed_data, ensure_ascii=False))} 字符")
        
        response = requests.post('https://api.coze.cn/v1/workflow/run', 
                               headers=headers, 
                               data=json.dumps(data))

        if response.status_code == 200:
            response_data = response.json().get("data")
            
            if response_data:
                # 解析 JSON 字符串
                parsed_data = json.loads(response_data)
                
                # 提取 data 字段并按 \n 分割成数组
                id_list = parsed_data["data"].split("\n")
                
                print(f"✅ Coze工作流调用成功，返回 {len(id_list)} 个ID")
                print(f"📋 ID列表预览: {', '.join(id_list[:5])}...")
                
                # 保存结果
                timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")
                json_file_stem = Path(json_file_path).stem.replace("questions_with_pandoc_", "")
                output_file = f"coze_ids_{json_file_stem}_{timestamp}.txt"
                
                with open(output_file, 'w', encoding='utf-8') as f:
                    f.write(", ".join(id_list))
                
                print(f"📁 Coze ID列表已保存到: {output_file}")
                return id_list
            else:
                print("❌ Coze工作流返回数据为空")
                return None
        else:
            print(f"❌ Coze工作流调用失败，状态码: {response.status_code}")
            print(f"错误信息: {response.text}")
            return None

    except Exception as e:
        print(f"❌ 调用Coze工作流异常: {e}")
        return None

def main():
    """主函数"""
    json_file = "json_res/questions_with_pandoc_精品解析：2025年甘肃省兰州市中考语文真题（解析版）.json"
    
    print("=" * 60)
    print("手动Coze工作流调用工具")
    print("=" * 60)
    
    if not Path(json_file).exists():
        print(f"❌ JSON文件不存在: {json_file}")
        return
    
    coze_ids = call_coze_workflow_manual(json_file)
    
    if coze_ids:
        print("\n🎉 Coze工作流调用成功！")
        print(f"📊 获得 {len(coze_ids)} 个ID")
    else:
        print("\n❌ Coze工作流调用失败")

if __name__ == "__main__":
    main()
