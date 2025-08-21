#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
Pandoc Word文档处理工具 - 增强版

使用pandoc将Word文档转换为模型可读的纯文本内容，支持：
1. 文档文本转换
2. 图片提取和内容分析
3. 水印文字替换
4. 大模型API调用

使用方法：
1. 确保系统已安装pandoc: https://pandoc.org/installing.html
2. 运行脚本处理Word文档
3. 自动提取图片并使用LLM分析内容
4. 替换水印文字为图片内容描述
"""

import subprocess
import requests
import json
import time
import os
import re
import zipfile
import tempfile
from datetime import datetime
from pathlib import Path
from PIL import Image
import base64
from io import BytesIO

class PandocWordProcessor:
    def __init__(self):
        self.api_key = "baf9ea42-7e17-4df6-9a22-90127ac8220e"
        self.base_url = "https://ark.cn-beijing.volces.com/api"
        
        # 检查pandoc是否可用
        self.pandoc_available = self._check_pandoc()
        if not self.pandoc_available:
            print("⚠️ 警告: pandoc未安装或不在PATH中")
            print("请访问 https://pandoc.org/installing.html 安装pandoc")
    
    def _check_pandoc(self):
        """检查pandoc是否可用"""
        try:
            result = subprocess.run(['pandoc', '--version'], 
                                  capture_output=True, text=True, timeout=10)
            if result.returncode == 0:
                print(f"✅ Pandoc可用: {result.stdout.split()[1]}")
                return True
            else:
                print(f"❌ Pandoc检查失败: {result.stderr}")
                return False
        except FileNotFoundError:
            print("❌ 未找到pandoc命令")
            return False
        except subprocess.TimeoutExpired:
            print("❌ Pandoc检查超时")
            return False
        except Exception as e:
            print(f"❌ Pandoc检查异常: {e}")
            return False
    
    def get_supported_formats(self):
        """获取支持的文档格式"""
        return ['.docx', '.doc', '.rtf', '.odt', '.txt']
    
    def is_supported_format(self, file_path):
        """检查文件格式是否支持"""
        file_ext = Path(file_path).suffix.lower()
        return file_ext in self.get_supported_formats()
    
    def extract_images_from_docx(self, docx_path, save_images=False):
        """从docx文件中提取图片"""
        print(f"🖼️  从docx文件中提取图片...")
        
        images = []
        if save_images:
            # 创建media文件夹
            media_dir = Path("media")
            media_dir.mkdir(exist_ok=True)
            print(f"📁 创建图片保存目录: {media_dir}")
        
        try:
            # docx文件本质上是一个zip文件
            with zipfile.ZipFile(docx_path, 'r') as zip_file:
                # 查找media文件夹中的图片
                for file_info in zip_file.filelist:
                    if file_info.filename.startswith('word/media/'):
                        file_name = file_info.filename.split('/')[-1]
                        file_ext = Path(file_name).suffix.lower()
                        
                        # 只处理图片文件
                        if file_ext in ['.png', '.jpg', '.jpeg', '.gif', '.bmp']:
                            try:
                                # 读取图片数据
                                with zip_file.open(file_info.filename) as img_file:
                                    img_data = img_file.read()
                                
                                # 转换为PIL Image对象
                                img = Image.open(BytesIO(img_data))
                                
                                # 如果需要保存图片到本地
                                if save_images:
                                    img_path = media_dir / file_name
                                    with open(img_path, 'wb') as f:
                                        f.write(img_data)
                                    print(f"  💾 保存图片: {img_path}")
                                
                                images.append({
                                    'filename': file_name,
                                    'path': file_info.filename,
                                    'image': img,
                                    'data': img_data,
                                    'size': img.size,
                                    'format': img.format
                                })
                                
                                print(f"  📷 提取图片: {file_name} ({img.size[0]}x{img.size[1]})")
                                
                            except Exception as e:
                                print(f"  ⚠️  图片 {file_name} 读取失败: {e}")
                                continue
                
                print(f"✅ 共提取 {len(images)} 张图片")
                return images
                
        except Exception as e:
            print(f"❌ 提取图片失败: {e}")
            return []
    
    def analyze_image_with_llm(self, image_data, image_name):
        """使用LLM分析图片内容"""
        print(f"  🤖 使用LLM分析图片: {image_name}")
        
        try:
            # 将图片转换为base64
            img_buffer = BytesIO()
            if isinstance(image_data, bytes):
                # 如果已经是bytes，直接使用
                img_base64 = base64.b64encode(image_data).decode()
            else:
                # 如果是PIL Image，先保存为bytes
                image_data.save(img_buffer, format='PNG')
                img_base64 = base64.b64encode(img_buffer.getvalue()).decode()
            
            # 构建API请求
            headers = {
                "Authorization": f"Bearer {self.api_key}",
                "Content-Type": "application/json"
            }
            
            # 使用vision API分析图片
            data = {
                "model": "doubao-seed-1-6-250615",
                "messages": [
                    {
                        "role": "user",
                        "content": [
                            {
                                "type": "text",
                                "text": "请分析这张图片的内容，用简洁的中文描述图片中显示的内容。如果是试卷题目，请描述题目类型和主要内容。"
                            },
                            {
                                "type": "image_url",
                                "image_url": {
                                    "url": f"data:image/png;base64,{img_base64}"
                                }
                            }
                        ]
                    }
                ],
                "max_tokens": 500,
                "temperature": 0.1
            }
            
            # 调用API
            response = requests.post(
                f"{self.base_url}/v3/chat/completions",
                headers=headers,
                json=data,
                timeout=60
            )
            
            if response.status_code == 200:
                result = response.json()
                if 'choices' in result and len(result['choices']) > 0:
                    content = result['choices'][0]['message']['content']
                    print(f"  ✅ 图片分析完成: {content[:100]}...")
                    return content
                else:
                    print(f"  ⚠️  API响应格式异常")
                    return f"图片内容: {image_name}"
            else:
                print(f"  ❌ API调用失败: {response.status_code}")
                return f"图片内容: {image_name}"
                
        except Exception as e:
            print(f"  ❌ 图片分析异常: {e}")
            return f"图片内容: {image_name}"
    
    def replace_image_watermarks(self, content, images):
        """替换内容中的图片水印为图片内容描述"""
        print("🔄 替换图片水印...")
        
        if not images:
            print("  ℹ️  没有图片需要处理")
            return content
        
        # 查找图片引用模式
        # 匹配类似 ![学科网(www.zxxk.com)--教育资源门户...](media/image6.png) 的模式
        image_pattern = r'!\[([^\]]+)\]\(([^)]+)\)'
        
        def replace_image_ref(match):
            watermark_text = match.group(1)
            image_path = match.group(2)
            
            # 提取图片文件名
            image_filename = Path(image_path).name
            
            # 查找对应的图片
            for img_info in images:
                if img_info['filename'] == image_filename:
                    # 使用LLM分析图片内容
                    image_description = self.analyze_image_with_llm(img_info['image'], image_filename)
                    
                    # 替换水印文字为图片描述
                    new_text = f"![{image_description}]({image_path})"
                    print(f"  🔄 替换: {watermark_text[:50]}... -> {image_description[:50]}...")
                    return new_text
            
            # 如果没找到对应图片，保留原样
            print(f"  ⚠️  未找到图片: {image_filename}")
            return match.group(0)
        
        # 执行替换
        modified_content = re.sub(image_pattern, replace_image_ref, content)
        
        # 统计替换次数
        original_count = len(re.findall(image_pattern, content))
        modified_count = len(re.findall(image_pattern, modified_content))
        
        print(f"✅ 水印替换完成，处理了 {len(images)} 张图片")
        return modified_content
    
    def convert_word_to_text(self, file_path, output_format='markdown'):
        """使用pandoc将Word文档转换为文本"""
        if not self.pandoc_available:
            print("❌ Pandoc不可用，无法处理文档")
            return None
        
        if not self.is_supported_format(file_path):
            print(f"❌ 不支持的文件格式: {Path(file_path).suffix}")
            print(f"支持的格式: {', '.join(self.get_supported_formats())}")
            return None
        
        if not os.path.exists(file_path):
            print(f"❌ 文件不存在: {file_path}")
            return None
        
        print(f"📄 开始处理文档: {file_path}")
        print(f"📊 文件大小: {os.path.getsize(file_path) / (1024*1024):.2f} MB")
        
        try:
            # 构建pandoc命令
            cmd = [
                'pandoc',
                file_path,
                '--to', output_format,
                '--wrap', 'none',  # 不自动换行
                '--standalone',  # 生成独立文档
                '--quiet'  # 减少输出
            ]
            
            print(f"🔧 执行命令: {' '.join(cmd)}")
            
            # 执行pandoc转换
            result = subprocess.run(cmd, capture_output=True, text=True, timeout=300)
            
            if result.returncode == 0:
                content = result.stdout
                print(f"✅ 转换成功: {len(content)} 字符")
                
                # 如果是docx文件，提取图片并替换水印
                # 注释掉图片处理功能
                if file_path.lower().endswith('.docx'):
                     print("🖼️  检测到docx文件，开始处理图片...")
                     images = self.extract_images_from_docx(file_path, save_images=True)
                     if images:
                         content = self.replace_image_watermarks(content, images)
                     else:
                         print("ℹ️  未找到图片或图片处理失败")
                
                # 保存转换结果
                # 创建 pandoc_res 文件夹
                pandoc_res_dir = Path("pandoc_res")
                pandoc_res_dir.mkdir(exist_ok=True)
                
                timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")
                output_filename = pandoc_res_dir / f"pandoc转换结果_{timestamp}.txt"
                with open(output_filename, 'w', encoding='utf-8') as f:
                    f.write(content)
                print(f"📝 转换结果已保存到: {output_filename}")
                
                return content
            else:
                print(f"❌ 转换失败: {result.stderr}")
                return None
                
        except subprocess.TimeoutExpired:
            print("❌ 转换超时（5分钟）")
            return None
        except Exception as e:
            print(f"❌ 转换异常: {e}")
            return None
    
    def convert_word_to_markdown(self, file_path):
        """将Word文档转换为Markdown格式"""
        return self.convert_word_to_text(file_path, 'markdown')
    
    def convert_word_to_plain_text(self, file_path):
        """将Word文档转换为纯文本格式"""
        return self.convert_word_to_text(file_path, 'plain')
    
    def convert_word_to_html(self, file_path):
        """将Word文档转换为HTML格式"""
        return self.convert_word_to_text(file_path, 'html')
    
    def call_llm_api(self, content, prompt_template_path="prompt.md"):
        """调用大模型API解析文档结构"""
        print("🤖 开始调用大模型API...")
        
        # 读取prompt模板
        try:
            with open(prompt_template_path, 'r', encoding='utf-8') as f:
                prompt_template = f.read()
            # 使用安全的字符串替换
            prompt = prompt_template.replace("{content}", content)
            print(f"✅ 成功加载prompt模板: {prompt_template_path}")
        except FileNotFoundError:
            print(f"⚠️ 未找到prompt模板文件: {prompt_template_path}")
            print("使用默认prompt...")
            prompt = f"""
一套试卷有三级结构，1. 分题型/类型的大模块 2.完整的一道题 3. 完整的一道题中的多个小题。你需要解析前两级结构。
请分析以下文档内容，提取出试卷的二级结构（完整的一道题），返回JSON格式的数组，每个对象包含以下字段：
- total_number: 总题号，唯一，及此题按照试卷题目展示顺序的总题号。（字符串）
- module_number: 模块中的题号，即在一级结构中的题号。（字符串） 
- question_first_sentence: 题目的第一个分句（字符串）
- question_page: 题目所在的页码（int数组）
- answer_first_sentence: 题目答案的第一个分句（字符串，如果没有答案则为空字符串）
- explanation_first_sentence: 题目解析的第一个分句（字符串，如果没有解析则为空字符串）
- answer_page: 题目答案解析所在的页码（int数组，如果没有答案则为null）

文档内容：
{content}

请只返回JSON数组，不要包含其他说明文字。
如果题目/答案跨页，则在页码中需要记录两页信息。
"""
        
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
        
        print("🚀 调用大模型API解析文档结构...")
        print(f"请求URL: {self.base_url}/v3/chat/completions")
        print(f"模型: {data['model']}")
        print(f"消息长度: {len(prompt)} 字符")
        
        try:
            response = requests.post(
                f"{self.base_url}/v3/chat/completions", 
                headers=headers, 
                json=data, 
                timeout=300,  # 减少超时时间到5分钟
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
            print(f"HTTP错误: {e}")
            print(f"响应状态码: {response.status_code}")
            print(f"响应内容: {response.text}")
            return None
        except Exception as e:
            print(f"❌ API调用异常: {e}")
            return None
    
    def process_word_document(self, file_path, output_format='markdown', prompt_template_path="prompt.md"):
        """完整的Word文档处理流程"""
        print("=" * 60)
        print("Pandoc Word文档处理工具 - 增强版")
        print("=" * 60)
        print(f"文档文件: {file_path}")
        print(f"输出格式: {output_format}")
        print(f"Prompt模板: {prompt_template_path}")
        print("=" * 60)
        
        # 第一步：使用pandoc转换文档
        content = self.convert_word_to_text(file_path, output_format)
        if not content:
            print("❌ 文档转换失败，无法继续处理")
            return None
        
        # 第二步：调用大模型API解析内容
        llm_response = self.call_llm_api(content, prompt_template_path)
        if not llm_response:
            print("❌ API调用失败")
            return None
        
        # 第三步：处理API响应
        return self._process_api_response(llm_response, file_path)
    
    def _process_api_response(self, llm_content, original_file_path):
        """处理API响应并保存结果"""
        # 去掉markdown代码块标记（如果有的话）
        if '```json' in llm_content:
            start_idx = llm_content.find('```json') + 7
            end_idx = llm_content.find('```', start_idx)
            if end_idx != -1:
                llm_content = llm_content[start_idx:end_idx]
            else:
                llm_content = llm_content[start_idx:]
        elif '```' in llm_content:
            parts = llm_content.split('```')
            if len(parts) >= 2:
                llm_content = parts[1]
        
        llm_content = llm_content.strip()
        
        # 检测重复模式（防止API生成错误）
        import re
        # 检测重复的score模式
        if re.search(r'("score"\s*,\s*){3,}', llm_content):
            print("❌ 检测到重复的score模式，API响应异常")
            return None
        
        # 检测其他重复模式
        if re.search(r'(\s*,\s*,\s*){3,}', llm_content):
            print("❌ 检测到重复的逗号模式，API响应异常")
            return None
        
        # 修复JSON中的双引号问题
        # 替换题目内容中的未转义双引号
        llm_content = re.sub(r'将数据"([^"]+)"', r'将数据\\"\\1\\"', llm_content)
        
        # 保存原始API响应
        # timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")
        # raw_filename = f"raw_api_response_{timestamp}.txt"
        # with open(raw_filename, 'w', encoding='utf-8') as f:
        #     f.write(llm_content)
        # print(f"📄 原始API响应已保存到: {raw_filename}")
        
        # 尝试转换为JSON
        try:
            questions = json.loads(llm_content)
            
            # 创建 json_res 文件夹
            json_res_dir = Path("json_res")
            json_res_dir.mkdir(exist_ok=True)
            
            output_file = json_res_dir / f"questions_with_pandoc_{Path(original_file_path).stem}.json"
            with open(output_file, 'w', encoding='utf-8') as f:
                json.dump(questions, f, ensure_ascii=False, indent=2)
            print(f"🎉 完成！共{len(questions)}道题目，保存到: {output_file}")
            return questions
        except json.JSONDecodeError as e:
            print(f"❌ JSON解析失败: {e}")
            print(f"错误位置: 第{e.lineno}行第{e.colno}列")
            print("请检查原始API响应文件")
            return None

def main():
    """主函数"""
    import sys
    
    # 配置参数
    if len(sys.argv) > 1:
        word_file_path = sys.argv[1]
    else:
        word_file_path = "精品解析：2025年山东省临沂市中考英语真题（解析版）.docx"  # 默认文件路径
     
    output_format = "markdown"  # 可选: markdown, plain, html
    prompt_template_path = "prompt_Chinese.md"
    
    # 创建处理器实例
    processor = PandocWordProcessor()
    
    # 检查pandoc可用性
    if not processor.pandoc_available:
        print("❌ Pandoc不可用，请先安装pandoc")
        print("安装方法:")
        print("  macOS: brew install pandoc")
        print("  Ubuntu/Debian: sudo apt-get install pandoc")
        print("  Windows: 下载安装包 https://pandoc.org/installing.html")
        return
    
    # 检查文件格式
    if not processor.is_supported_format(word_file_path):
        print(f"❌ 不支持的文件格式: {Path(word_file_path).suffix}")
        print(f"请使用以下格式之一: {', '.join(processor.get_supported_formats())}")
        return
    
    # 处理文档
    result = processor.process_word_document(
        word_file_path, 
        output_format, 
        prompt_template_path
    )
    
    if result:
        print("✅ 文档处理完成！")
    else:
        print("❌ 文档处理失败")

if __name__ == "__main__":
    main() 