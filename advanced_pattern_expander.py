#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
高级WMF模式扩展器

使用更智能的算法大规模扩展WMF模式识别
"""

import re
import struct
from pathlib import Path
from collections import defaultdict, Counter
import json

class AdvancedPatternExpander:
    def __init__(self):
        # 已知模式用于学习
        self.known_patterns = {
            'image2.wmf': '-6',
            'image3.wmf': r'-\frac{1}{6}',  
            'image4.wmf': r'\frac{1}{6}',
            'image5.wmf': '6',
            'image10.wmf': '180°',
            'image17.wmf': '2',
            'image140.wmf': '0',
        }
        
        # 数学符号映射
        self.symbol_mapping = {
            45: '-',    # 负号/减号
            43: '+',    # 加号  
            42: '*',    # 乘号
            47: '/',    # 除号
            61: '=',    # 等号
            40: '(',    # 左括号
            41: ')',    # 右括号
            94: '^',    # 幂次
            95: '_',    # 下标
        }
        
        # 常见数学表达式模式
        self.math_patterns = [
            r'\\frac\{(\d+)\}\{(\d+)\}',  # 分数
            r'(\d+)°',                   # 角度
            r'(-?\d+)',                  # 整数
            r'(\d+\.\d+)',              # 小数
            r'×10\^(\d+)',              # 科学记数法
            r'\\sqrt\{([^}]+)\}',       # 根号
            r'([a-zA-Z]_\d+)',          # 下标变量
            r'\\triangle ([A-Z]+)',      # 三角形
            r'\((-?\d+),\s*(-?\d+)\)',  # 坐标
        ]
        
        # 上下文关键词
        self.context_keywords = {
            'fraction': ['分数', '分母', '分子', 'frac'],
            'angle': ['角', '度', '°', '旋转', '角度'],
            'coordinate': ['坐标', '点', '位置', '(', ')'],
            'triangle': ['三角形', '△', 'triangle', 'ABC'],
            'science': ['科学记数法', '×10', '亿', '万'],
            'equation': ['方程', '解', '=', '等于'],
            'variable': ['变量', '未知数', 'x', 'y', 'a', 'b'],
        }
    
    def extract_deep_wmf_info(self, wmf_path):
        """深度提取WMF文件信息"""
        try:
            with open(wmf_path, 'rb') as f:
                data = f.read()
            
            info = {
                'filename': Path(wmf_path).name,
                'size': len(data),
                'has_mathtype': b'MathType' in data,
                'numbers': [],
                'symbols': [],
                'ascii_strings': [],
                'hex_patterns': [],
                'byte_sequences': [],
            }
            
            # 查找MathType数据段
            mathtype_pos = data.find(b'MathType')
            if mathtype_pos != -1:
                mathtype_data = data[mathtype_pos:]
                info['mathtype_size'] = len(mathtype_data)
                
                # 提取数字
                numbers = []
                i = 0
                while i < len(mathtype_data):
                    if 48 <= mathtype_data[i] <= 57:  # 数字字符
                        num_str = ''
                        start_i = i
                        while i < len(mathtype_data) and 48 <= mathtype_data[i] <= 57:
                            num_str += chr(mathtype_data[i])
                            i += 1
                        if 1 <= len(num_str) <= 4:  # 合理长度的数字
                            numbers.append({
                                'value': num_str,
                                'position': start_i,
                                'length': len(num_str)
                            })
                    else:
                        i += 1
                
                info['numbers'] = numbers
                
                # 提取符号
                for i, byte in enumerate(mathtype_data):
                    if byte in self.symbol_mapping:
                        info['symbols'].append({
                            'symbol': self.symbol_mapping[byte],
                            'position': i,
                            'byte_value': byte
                        })
                
                # 提取ASCII字符串
                ascii_matches = re.findall(b'[\\x20-\\x7E]{3,}', mathtype_data)
                for match in ascii_matches:
                    try:
                        text = match.decode('ascii', errors='ignore')
                        if any(c.isdigit() or c in '+-*/=()' for c in text):
                            info['ascii_strings'].append(text)
                    except:
                        pass
                
                # 分析字节序列模式
                for i in range(len(mathtype_data) - 4):
                    seq = mathtype_data[i:i+4]
                    if any(b != 0 for b in seq):
                        info['byte_sequences'].append({
                            'position': i,
                            'hex': seq.hex(),
                            'ascii': ''.join(chr(b) if 32 <= b <= 126 else '.' for b in seq)
                        })
            
            return info
            
        except Exception as e:
            return None
    
    def analyze_context_clues(self, wmf_filename, pandoc_content):
        """分析文档上下文线索"""
        pattern = rf'!\[\]\(media/{re.escape(wmf_filename)}\)'
        contexts = []
        
        for match in re.finditer(pattern, pandoc_content):
            start = max(0, match.start() - 200)
            end = min(len(pandoc_content), match.end() + 200)
            context = pandoc_content[start:end]
            contexts.append(context)
        
        # 分析上下文特征
        context_features = {
            'total_occurrences': len(contexts),
            'keywords': defaultdict(int),
            'surrounding_numbers': [],
            'math_expressions': [],
            'position_hints': []
        }
        
        for context in contexts:
            # 查找关键词
            for category, keywords in self.context_keywords.items():
                for keyword in keywords:
                    if keyword in context.lower():
                        context_features['keywords'][category] += 1
            
            # 查找周围的数字
            numbers = re.findall(r'[-+]?\d*\.?\d+', context)
            context_features['surrounding_numbers'].extend(numbers)
            
            # 查找位置提示
            if '（ ）' in context or '( )' in context:
                context_features['position_hints'].append('choice_option')
            if '【答案】' in context:
                context_features['position_hints'].append('answer_section')
            if '解：' in context or '解答' in context:
                context_features['position_hints'].append('solution_section')
        
        return context_features
    
    def smart_pattern_inference(self, wmf_info, context_features):
        """智能推断公式模式"""
        candidates = []
        
        if not wmf_info or not wmf_info['has_mathtype']:
            return candidates
        
        numbers = [n['value'] for n in wmf_info['numbers']]
        symbols = [s['symbol'] for s in wmf_info['symbols']]
        
        # 规则1: 单个数字
        if len(numbers) == 1 and not symbols:
            num = numbers[0]
            confidence = 0.6
            
            # 检查是否是角度
            if any('angle' in str(kw) for kw in context_features['keywords']):
                candidates.append({
                    'pattern': f"{num}°",
                    'confidence': confidence + 0.2,
                    'rule': 'single_number_angle'
                })
            else:
                candidates.append({
                    'pattern': num,
                    'confidence': confidence,
                    'rule': 'single_number'
                })
        
        # 规则2: 带负号的数字
        elif len(numbers) == 1 and '-' in symbols:
            num = numbers[0]
            candidates.append({
                'pattern': f"-{num}",
                'confidence': 0.7,
                'rule': 'negative_number'
            })
        
        # 规则3: 分数模式
        elif len(numbers) >= 2 and '/' in symbols:
            num1, num2 = numbers[0], numbers[1]
            
            # 验证分数的合理性
            try:
                n1, n2 = int(num1), int(num2)
                if 0 < n2 <= 100 and 0 <= n1 <= 100:  # 合理的分数范围
                    confidence = 0.8
                    if context_features['keywords']['fraction'] > 0:
                        confidence += 0.1
                    
                    candidates.append({
                        'pattern': rf'\frac{{{num1}}}{{{num2}}}',
                        'confidence': confidence,
                        'rule': 'fraction_pattern'
                    })
            except:
                pass
        
        # 规则4: 坐标模式
        elif len(numbers) == 2 and context_features['keywords']['coordinate'] > 0:
            x, y = numbers[0], numbers[1]
            candidates.append({
                'pattern': f"({x}, {y})",
                'confidence': 0.7,
                'rule': 'coordinate_pattern'
            })
        
        # 规则5: 科学记数法
        elif context_features['keywords']['science'] > 0:
            if len(numbers) >= 2:
                base = numbers[0]
                exp = numbers[1] if len(numbers) > 1 else '8'
                candidates.append({
                    'pattern': f"{base}×10^{exp}",
                    'confidence': 0.7,
                    'rule': 'scientific_notation'
                })
        
        # 规则6: 几何图形
        elif context_features['keywords']['triangle'] > 0:
            if len(wmf_info['ascii_strings']) > 0:
                for text in wmf_info['ascii_strings']:
                    if any(c.isupper() for c in text):
                        candidates.append({
                            'pattern': rf'\triangle {text}',
                            'confidence': 0.6,
                            'rule': 'triangle_pattern'
                        })
        
        # 规则7: 变量和下标
        elif len(numbers) == 1 and any(c.isalpha() for s in wmf_info['ascii_strings'] for c in s):
            var_candidates = []
            for text in wmf_info['ascii_strings']:
                if len(text) <= 3 and any(c.isalpha() for c in text):
                    if numbers:
                        var_candidates.append(f"{text}_{numbers[0]}")
                    else:
                        var_candidates.append(text)
            
            for var in var_candidates:
                candidates.append({
                    'pattern': var,
                    'confidence': 0.5,
                    'rule': 'variable_pattern'
                })
        
        return candidates
    
    def batch_analyze_wmfs(self, limit=100):
        """批量分析WMF文件"""
        print(f"开始批量分析 {limit} 个WMF文件...")
        
        # 读取pandoc文档内容
        pandoc_file = "pandoc_res/pandoc转换结果_20250903_171402.txt"
        try:
            with open(pandoc_file, 'r', encoding='utf-8') as f:
                pandoc_content = f.read()
        except:
            print("无法读取pandoc文档")
            return {}
        
        media_dir = Path("media")
        wmf_files = list(media_dir.glob("*.wmf"))[:limit]
        
        new_patterns = {}
        processed = 0
        
        for wmf_file in wmf_files:
            filename = wmf_file.name
            
            # 跳过已知模式
            if filename in self.known_patterns:
                continue
            
            processed += 1
            print(f"[{processed}/{limit}] 分析 {filename}")
            
            # 深度分析WMF文件
            wmf_info = self.extract_deep_wmf_info(wmf_file)
            if not wmf_info:
                continue
            
            # 分析上下文
            context_features = self.analyze_context_clues(filename, pandoc_content)
            
            # 智能推断模式
            candidates = self.smart_pattern_inference(wmf_info, context_features)
            
            if candidates:
                # 选择最高置信度的候选
                best_candidate = max(candidates, key=lambda x: x['confidence'])
                if best_candidate['confidence'] >= 0.5:
                    new_patterns[filename] = {
                        'pattern': best_candidate['pattern'],
                        'confidence': best_candidate['confidence'],
                        'rule': best_candidate['rule'],
                        'wmf_info': {
                            'numbers': [n['value'] for n in wmf_info['numbers']],
                            'symbols': [s['symbol'] for s in wmf_info['symbols']],
                            'size': wmf_info['size']
                        },
                        'context': {
                            'occurrences': context_features['total_occurrences'],
                            'keywords': dict(context_features['keywords'])
                        }
                    }
                    print(f"  -> 发现模式: {best_candidate['pattern']} (置信度: {best_candidate['confidence']:.2f})")
                else:
                    print(f"  -> 置信度过低: {best_candidate['confidence']:.2f}")
            else:
                print(f"  -> 未找到合适模式")
        
        return new_patterns
    
    def generate_pattern_code(self, new_patterns, min_confidence=0.6):
        """生成可添加到转换器的代码"""
        high_confidence_patterns = {
            filename: info for filename, info in new_patterns.items()
            if info['confidence'] >= min_confidence
        }
        
        print(f"\n高置信度模式 ({len(high_confidence_patterns)} 个, 置信度 >= {min_confidence}):")
        print("=" * 60)
        
        code_lines = []
        for filename, info in sorted(high_confidence_patterns.items(), key=lambda x: x[1]['confidence'], reverse=True):
            print(f"{filename}: {info['pattern']} (置信度: {info['confidence']:.2f}, 规则: {info['rule']})")
            code_lines.append(f"            '{filename}': '{info['pattern']}',  # {info['rule']}")
        
        if code_lines:
            print("\n可添加到wmf_to_latex_converter.py的代码:")
            print("=" * 60)
            for line in code_lines:
                print(line)
        
        return high_confidence_patterns

def main():
    """主函数"""
    expander = AdvancedPatternExpander()
    
    print("高级WMF模式扩展器")
    print("=" * 60)
    
    # 批量分析WMF文件
    new_patterns = expander.batch_analyze_wmfs(limit=80)  # 分析更多文件
    
    print(f"\n发现 {len(new_patterns)} 个新的候选模式")
    
    # 生成高置信度模式
    high_confidence = expander.generate_pattern_code(new_patterns, min_confidence=0.6)
    
    # 保存分析结果
    with open('wmf_pattern_analysis.json', 'w', encoding='utf-8') as f:
        json.dump(new_patterns, f, ensure_ascii=False, indent=2)
    
    print(f"\n详细分析结果已保存到: wmf_pattern_analysis.json")
    print(f"可用于扩展的高置信度模式: {len(high_confidence)} 个")

if __name__ == "__main__":
    main()
