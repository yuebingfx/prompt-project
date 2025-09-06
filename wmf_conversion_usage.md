# WMF文件转换功能使用说明

## 功能概述

本次修改为 `simple_parser_with_pandoc.py` 添加了 WMF 文件自动转换功能。当程序从Word文档中提取图片时，如果遇到WMF格式的图片，会自动转换为PNG格式，然后按照普通PNG图片的处理流程继续处理。

## 主要修改内容

### 1. 新增依赖管理
- `_check_wmf_dependencies()`: 检查WMF转换所需的依赖（LibreOffice、Ghostscript、ImageMagick）
- `_install_wmf_dependencies()`: 自动安装缺失的依赖（通过brew）

### 2. WMF转换功能
- `_wmf_to_png()`: 将WMF数据转换为PNG文件
  - 使用LibreOffice将WMF转换为PDF
  - 使用ImageMagick将PDF转换为PNG

### 3. 图片提取逻辑优化
- 修改 `extract_images_from_docx()` 方法，支持识别和处理WMF文件
- 自动将WMF文件转换为PNG格式
- 保留原始文件名信息，便于后续处理

### 4. 图片匹配逻辑优化
- 修改 `replace_image_watermarks()` 方法，支持WMF转换后的文件名匹配
- 自动更新图片路径从`.wmf`到`.png`

## 使用方法

使用方法与之前完全相同，程序会自动处理WMF文件：

```python
# 创建处理器实例
processor = PandocWordProcessor()

# 处理包含WMF图片的Word文档
result = processor.process_word_document(
    "your_document.docx", 
    "markdown", 
    "prompt.md"
)
```

## 处理流程

1. 程序检查并自动安装WMF转换所需的依赖
2. 从Word文档中提取所有图片（包括WMF文件）
3. 对于WMF文件：
   - 自动转换为PNG格式
   - 保存到media目录（如果启用了save_images）
   - 更新内部数据结构，记录转换信息
4. 使用LLM分析所有图片内容（包括转换后的PNG）
5. 替换文档中的图片水印，自动更新WMF引用为PNG引用

## 依赖要求

程序会自动检查和安装以下依赖：
- **LibreOffice**: 用于WMF到PDF的转换
- **Ghostscript**: PDF处理支持
- **ImageMagick**: 用于PDF到PNG的转换

如果自动安装失败，请手动安装：
```bash
brew install libreoffice
brew install ghostscript  
brew install imagemagick
```

## 兼容性说明

- ✅ 完全向后兼容，不影响现有PNG/JPG等格式的处理
- ✅ WMF文件会被透明转换，用户无需额外操作
- ✅ 转换后的PNG文件享受与原生PNG文件相同的处理流程
- ✅ 保留原始WMF文件名信息，便于调试和日志记录

## 输出示例

处理包含WMF文件的文档时，控制台输出：
```
🔄 检测到WMF文件: image1.wmf，开始转换...
✅ WMF转换为PNG成功: /path/to/media/image1.png
📷 提取图片: image1.png (800x600)
🔄 WMF替换: 学科网(www.zxxk.com)--教育资源门户... -> 这是一个数学函数图像... (路径: media/image1.wmf -> media/image1.png)
```

## 注意事项

1. WMF转换需要一定的时间，特别是复杂的矢量图形
2. 转换后的PNG文件可能比原始WMF文件大
3. 首次运行时可能需要安装依赖，请确保网络连接正常
4. 建议在处理大量WMF文件前先测试单个文件
