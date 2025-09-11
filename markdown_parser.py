#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import requests
import json
import time
import os
from datetime import datetime
from pathlib import Path

class MarkdownMathPaperProcessor:
    """
    Markdown数学试卷处理器
    用于读取markdown格式的试卷文件，调用大模型API进行解析，并保存JSON结果
    """
    
    def __init__(self):
        # API配置 - 使用与math_paper_parser.py相同的配置
        self.api_key = "baf9ea42-7e17-4df6-9a22-90127ac8220e"
        self.base_url = "https://ark.cn-beijing.volces.com/api"
        
        # 文件路径配置
        self.base_path = Path(__file__).parent
        self.prompt_path = self.base_path / "prompt_math.md"
        self.markdown_dir = self.base_path / "MarkdownFile"
        self.json_output_dir = self.base_path / "json_res"
        
        # 确保输出目录存在
        self.json_output_dir.mkdir(exist_ok=True)
        
        print(f"✅ 初始化完成")
        print(f"📁 工作目录: {self.base_path}")
        print(f"📄 提示词文件: {self.prompt_path}")
        print(f"📚 Markdown目录: {self.markdown_dir}")
        print(f"💾 JSON输出目录: {self.json_output_dir}")

    def read_prompt_template(self):
        """读取提示词模板文件"""
        try:
            with open(self.prompt_path, 'r', encoding='utf-8') as f:
                prompt_template = f.read()
            print(f"✅ 成功读取提示词模板: {self.prompt_path}")
            print(f"📝 模板长度: {len(prompt_template)} 字符")
            return prompt_template
        except FileNotFoundError:
            print(f"❌ 未找到提示词模板文件: {self.prompt_path}")
            return None
        except Exception as e:
            print(f"❌ 读取提示词模板失败: {e}")
            return None

    def read_markdown_file(self, file_path):
        """读取markdown试卷文件"""
        try:
            with open(file_path, 'r', encoding='utf-8') as f:
                content = f.read()
            print(f"✅ 成功读取试卷文件: {file_path}")
            print(f"📝 文件长度: {len(content)} 字符")
            return content
        except FileNotFoundError:
            print(f"❌ 未找到试卷文件: {file_path}")
            return None
        except Exception as e:
            print(f"❌ 读取试卷文件失败: {e}")
            return None

    def call_llm_api(self, prompt):
        """调用大模型API解析试卷内容"""
        print("🚀 开始调用大模型API...")
        
        headers = {
            "Authorization": f"Bearer {self.api_key}",
            "Content-Type": "application/json"
        }
        
        # 先测试API连接
        test_data = {
            "model": "doubao-seed-1-6-250615",
            "messages": [{"role": "user", "content": "Hello"}],
            "max_tokens": 32000,
            "temperature": 0.1,
            "stream": True,
            "thinking": {
                "type": "enabled",
                "budget_tokens": 2000
            }
        }
        
        print("🔍 测试API连接...")
        try:
            test_response = requests.post(
                f"{self.base_url}/v3/chat/completions", 
                headers=headers, 
                json=test_data, 
                timeout=30
            )
            test_response.raise_for_status()
            print("✅ API连接测试成功")
        except requests.exceptions.HTTPError as e:
            print(f"❌ API连接测试失败: {e}")
            if hasattr(test_response, 'status_code'):
                print(f"响应状态码: {test_response.status_code}")
                print(f"响应内容: {test_response.text}")
            return None
        except Exception as e:
            print(f"❌ API连接测试异常: {e}")
            return None
        
        # 正式请求 - 使用流式输出
        data = {
            "model": "doubao-seed-1-6-250615",
            "messages": [{"role": "user", "content": prompt}],
            "stream": True,
            "thinking": {
                "type": "enabled",
                "budget_tokens": 1500
            },
            "response_format": {
                "type": "json_object"
            },
            "temperature": 0.1,
            "max_completion_tokens": 32000
        }
        
        print(f"📡 调用大模型API解析试卷内容...")
        print(f"🔗 请求URL: {self.base_url}/v3/chat/completions")
        print(f"🤖 模型: {data['model']}")
        print(f"📝 提示词长度: {len(prompt)} 字符")
        
        try:
            response = requests.post(
                f"{self.base_url}/v3/chat/completions", 
                headers=headers, 
                json=data, 
                timeout=300,  # 5分钟超时
                stream=True
            )
            response.raise_for_status()
            
            # 处理流式响应
            llm_content = ""
            print("📡 开始接收流式响应...")
            
            for line in response.iter_lines():
                if line:
                    line = line.decode('utf-8')
                    if line.startswith('data: '):
                        data_str = line[6:]  # 去掉 'data: ' 前缀
                        
                        if data_str == '[DONE]':
                            print("\n✅ 流式响应接收完成")
                            break
                        
                        try:
                            data_json = json.loads(data_str)
                            if 'choices' in data_json and len(data_json['choices']) > 0:
                                choice = data_json['choices'][0]
                                
                                # 处理thinking状态
                                if 'thinking' in choice:
                                    thinking = choice['thinking']
                                    if thinking.get('type') == 'thinking':
                                        print(f"🤔 思考中... ({thinking.get('tokens_used', 0)} tokens)")
                                    elif thinking.get('type') == 'finished':
                                        print(f"✅ 思考完成，共使用 {thinking.get('tokens_used', 0)} tokens")
                                
                                # 处理delta内容
                                if 'delta' in choice and 'content' in choice['delta']:
                                    content = choice['delta']['content']
                                    llm_content += content
                                    print(content, end='', flush=True)
                                    
                        except json.JSONDecodeError:
                            continue
            
            print(f"\n✅ API调用成功，响应长度: {len(llm_content)} 字符")
            return llm_content
            
        except requests.exceptions.HTTPError as e:
            print(f"❌ HTTP错误: {e}")
            if hasattr(response, 'status_code'):
                print(f"响应状态码: {response.status_code}")
                print(f"响应内容: {response.text}")
            return None
        except Exception as e:
            print(f"❌ API调用异常: {e}")
            return None

    def validate_and_parse_json(self, json_content):
        """验证并解析JSON内容"""
        try:
            # 尝试解析JSON
            parsed_data = json.loads(json_content)
            print(f"✅ JSON解析成功")
            
            # 基本验证
            if isinstance(parsed_data, list):
                print(f"📋 解析出 {len(parsed_data)} 道题目")
                return parsed_data
            elif isinstance(parsed_data, dict):
                print(f"📋 解析出单道题目")
                return [parsed_data]  # 转换为列表格式
            else:
                print(f"⚠️ 意外的JSON格式: {type(parsed_data)}")
                return parsed_data
                
        except json.JSONDecodeError as e:
            print(f"❌ JSON解析失败: {e}")
            print(f"错误位置: 第 {e.lineno} 行，第 {e.colno} 列")
            
            # 尝试清理JSON内容
            print("🔧 尝试清理JSON内容...")
            cleaned_json = self.clean_json_content(json_content)
            
            if cleaned_json:
                try:
                    parsed_data = json.loads(cleaned_json)
                    print(f"✅ 清理后JSON解析成功")
                    return parsed_data
                except json.JSONDecodeError:
                    print(f"❌ 清理后仍然解析失败")
            
            return None

    def clean_json_content(self, content):
        """清理JSON内容中的常见问题"""
        try:
            # 移除可能的markdown代码块标记
            if content.startswith('```json'):
                content = content[7:]
            if content.endswith('```'):
                content = content[:-3]
            
            # 移除开头和结尾的空白字符
            content = content.strip()
            
            return content
        except Exception as e:
            print(f"❌ JSON清理失败: {e}")
            return None

    def save_json_result(self, data, source_filename):
        """保存JSON结果到文件"""
        try:
            # 生成输出文件名
            timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")
            base_name = Path(source_filename).stem
            output_filename = f"questions_{base_name}_{timestamp}.json"
            output_path = self.json_output_dir / output_filename
            
            # 保存JSON文件
            with open(output_path, 'w', encoding='utf-8') as f:
                json.dump(data, f, ensure_ascii=False, indent=2)
            
            print(f"✅ JSON结果已保存: {output_path}")
            print(f"📊 文件大小: {output_path.stat().st_size} 字节")
            
            return output_path
        except Exception as e:
            print(f"❌ 保存JSON结果失败: {e}")
            return None

    def process_markdown_file(self, markdown_file_path):
        """处理单个markdown文件的完整流程"""
        print(f"\n" + "="*60)
        print(f"🚀 开始处理文件: {markdown_file_path}")
        print("="*60)
        
        # 1. 读取提示词模板
        prompt_template = self.read_prompt_template()
        if not prompt_template:
            return None
        
        # 2. 读取markdown文件
        markdown_content = self.read_markdown_file(markdown_file_path)
        if not markdown_content:
            return None
        
        # 3. 构建完整提示词
        print("🔨 构建提示词...")
        full_prompt = prompt_template.replace("{content}", markdown_content)
        print(f"✅ 提示词构建完成，总长度: {len(full_prompt)} 字符")
        
        # 4. 调用大模型API
        api_response = self.call_llm_api(full_prompt)
        if not api_response:
            return None
        
        # 5. 解析JSON结果
        print("\n🔍 解析API返回的JSON...")
        parsed_data = self.validate_and_parse_json(api_response)
        if not parsed_data:
            return None
        
        # 6. 保存结果
        print("\n💾 保存处理结果...")
        output_path = self.save_json_result(parsed_data, Path(markdown_file_path).name)
        
        if output_path:
            print(f"✅ 处理完成！结果已保存到: {output_path}")
        
        return output_path

    def process_target_file(self):
        """处理指定的目标文件"""
        target_file = "精品解析：2025年山东省青岛市中考数学真题（解析版）.md"
        target_path = self.markdown_dir / target_file
        
        print(f"🎯 目标文件: {target_file}")
        print(f"📍 完整路径: {target_path}")
        
        if not target_path.exists():
            print(f"❌ 目标文件不存在: {target_path}")
            return None
        
        return self.process_markdown_file(target_path)


def main():
    """主函数"""
    print("🎓 Markdown数学试卷处理器")
    print("="*60)
    
    processor = MarkdownMathPaperProcessor()
    
    # 处理指定的目标文件
    result = processor.process_target_file()
    
    if result:
        print(f"\n🎉 所有处理完成！")
    else:
        print(f"\n❌ 处理失败！")


if __name__ == "__main__":
    main()
