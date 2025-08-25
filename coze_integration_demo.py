#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
Coze工作流集成演示脚本

演示如何使用集成了Coze工作流的simple_parser_with_pandoc.py
"""

import sys
import os
sys.path.append(os.path.dirname(__file__))

from simple_parser_with_pandoc import PandocWordProcessor

def demo_with_coze():
    """演示启用Coze工作流的文档处理"""
    
    # 测试文档
    test_document = "Chinese/精品解析：2025年甘肃省兰州市中考语文真题（解析版）.docx"
    
    if not os.path.exists(test_document):
        print(f"❌ 测试文档不存在: {test_document}")
        return
    
    print("🚀 演示：集成Coze工作流的文档处理")
    print("=" * 60)
    
    # 创建处理器实例
    processor = PandocWordProcessor()
    
    # 处理文档，启用Coze工作流
    result = processor.process_word_document(
        test_document,
        enable_coze_workflow=True  # 启用Coze工作流
    )
    
    if result and isinstance(result, dict):
        questions = result.get('questions', [])
        coze_ids = result.get('coze_ids', [])
        
        print("\n🎯 最终处理结果:")
        print(f"  📝 题目数量: {len(questions)}")
        print(f"  🆔 Coze ID数量: {len(coze_ids)}")
        
        if coze_ids:
            print(f"\n🔗 Coze ID列表 (前5个):")
            for i, coze_id in enumerate(coze_ids[:5]):
                print(f"    {i+1}. {coze_id}")
        
        # 验证题目中是否包含coze_id字段
        if questions and isinstance(questions[0], dict) and 'coze_id' in questions[0]:
            print(f"\n✅ 题目已成功整合Coze ID")
            print(f"  示例: 题目1的Coze ID = {questions[0]['coze_id']}")
        
        return result
    else:
        print("❌ 处理失败或结果格式错误")
        return None

def demo_without_coze():
    """演示不启用Coze工作流的常规处理"""
    
    test_document = "Chinese/精品解析：2025年甘肃省兰州市中考语文真题（解析版）.docx"
    
    if not os.path.exists(test_document):
        print(f"❌ 测试文档不存在: {test_document}")
        return
    
    print("\n🚀 演示：常规文档处理（不启用Coze工作流）")
    print("=" * 60)
    
    processor = PandocWordProcessor()
    
    # 处理文档，不启用Coze工作流
    result = processor.process_word_document(
        test_document,
        enable_coze_workflow=False  # 不启用Coze工作流
    )
    
    if result and isinstance(result, list):
        print(f"\n📝 处理了 {len(result)} 道题目")
        return result
    else:
        print("❌ 处理失败")
        return None

if __name__ == "__main__":
    import sys
    
    if "--with-coze" in sys.argv:
        # 演示启用Coze工作流
        demo_with_coze()
    elif "--without-coze" in sys.argv:
        # 演示不启用Coze工作流
        demo_without_coze()
    else:
        # 两种方式都演示
        print("📚 Coze工作流集成演示")
        print("=" * 60)
        print("使用参数:")
        print("  --with-coze    : 只演示启用Coze工作流的处理")
        print("  --without-coze : 只演示常规处理")
        print("  (无参数)       : 演示两种处理方式")
        print()
        
        # 演示常规处理
        demo_without_coze()
        
        print("\n" + "=" * 60)
        
        # 演示Coze工作流处理
        demo_with_coze()
        
        print("\n🎉 演示完成！")
        print("💡 使用说明:")
        print("  1. 常规处理: python simple_parser_with_pandoc.py <文档路径>")
        print("  2. 启用Coze: python simple_parser_with_pandoc.py <文档路径> --enable-coze")
