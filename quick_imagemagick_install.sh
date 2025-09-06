#!/bin/bash

# ImageMagick快速安装脚本 - macOS
# 多种方法尝试安装ImageMagick

echo "🚀 ImageMagick快速安装脚本"
echo "=========================="

# 检查是否已经安装
if command -v convert >/dev/null 2>&1; then
    echo "✅ ImageMagick已经安装!"
    convert -version | head -1
    exit 0
fi

echo "📥 开始安装ImageMagick..."

# 方法1: 尝试从GitHub下载预编译版本
echo ""
echo "方法1: 下载预编译二进制文件..."
DOWNLOAD_DIR="$HOME/ImageMagick"
mkdir -p "$DOWNLOAD_DIR"
cd "$DOWNLOAD_DIR"

# 下载最新的macOS二进制文件
echo "下载ImageMagick二进制文件..."
if curl -L -o ImageMagick-macos.tar.gz "https://download.imagemagick.org/ImageMagick/download/binaries/ImageMagick-x86_64-apple-darwin20.1.0.tar.gz" 2>/dev/null; then
    echo "✅ 下载成功，正在解压..."
    tar -xzf ImageMagick-macos.tar.gz 2>/dev/null
    
    # 查找解压后的目录
    IMAGEMAGICK_DIR=$(find . -name "ImageMagick-*" -type d | head -1)
    if [ -n "$IMAGEMAGICK_DIR" ]; then
        echo "✅ 解压成功: $IMAGEMAGICK_DIR"
        
        # 添加到PATH
        IMAGEMAGICK_BIN="$HOME/ImageMagick/$IMAGEMAGICK_DIR/bin"
        if [ -d "$IMAGEMAGICK_BIN" ]; then
            export PATH="$IMAGEMAGICK_BIN:$PATH"
            
            # 测试是否可用
            if "$IMAGEMAGICK_BIN/convert" -version >/dev/null 2>&1; then
                echo "✅ ImageMagick安装成功!"
                
                # 添加到shell配置文件
                if [[ $SHELL == *"zsh"* ]]; then
                    echo "export PATH=\"$IMAGEMAGICK_BIN:\$PATH\"" >> ~/.zshrc
                    echo "✅ 已添加到 ~/.zshrc"
                elif [[ $SHELL == *"bash"* ]]; then
                    echo "export PATH=\"$IMAGEMAGICK_BIN:\$PATH\"" >> ~/.bash_profile
                    echo "✅ 已添加到 ~/.bash_profile"
                fi
                
                echo ""
                echo "🎉 安装完成!"
                echo "请运行以下命令重新加载环境:"
                echo "  source ~/.zshrc   # 如果使用zsh"
                echo "  source ~/.bash_profile   # 如果使用bash"
                echo ""
                echo "或者重新打开终端，然后测试:"
                echo "  convert -version"
                exit 0
            fi
        fi
    fi
fi

echo "❌ 二进制安装失败"

# 方法2: 尝试安装Homebrew
echo ""
echo "方法2: 尝试安装Homebrew..."
if ! command -v brew >/dev/null 2>&1; then
    echo "正在安装Homebrew..."
    if /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"; then
        echo "✅ Homebrew安装成功"
        # 安装ImageMagick
        if brew install imagemagick; then
            echo "✅ ImageMagick通过Homebrew安装成功!"
            exit 0
        fi
    else
        echo "❌ Homebrew安装失败"
    fi
else
    echo "✅ Homebrew已安装，尝试安装ImageMagick..."
    if brew install imagemagick; then
        echo "✅ ImageMagick通过Homebrew安装成功!"
        exit 0
    fi
fi

# 方法3: 显示手动安装指导
echo ""
echo "❌ 自动安装失败"
echo ""
echo "🛠️  请手动安装ImageMagick:"
echo "=========================="
echo ""
echo "选项1: 下载官方安装包"
echo "  1. 访问: https://imagemagick.org/script/download.php#macosx"
echo "  2. 下载适合你系统的.pkg安装包"
echo "  3. 双击安装"
echo ""
echo "选项2: 使用MacPorts"
echo "  1. 安装MacPorts: https://www.macports.org/install.php"
echo "  2. 运行: sudo port install ImageMagick"
echo ""
echo "选项3: 使用在线转换"
echo "  访问: https://cloudconvert.com/wmf-to-png"
echo ""
echo "安装完成后，运行以下命令测试WMF转换:"
echo "  python3 advanced_wmf_converter.py --test"
