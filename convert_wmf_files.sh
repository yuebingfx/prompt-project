#!/bin/bash
# WMF到PNG批量转换脚本
# 生成时间: 2025-09-04 15:02:39
# 总文件数: 564

# 颜色定义
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo "🚀 开始WMF到PNG批量转换"
echo "总文件数: 564"
echo "=================================="

# 检查ImageMagick是否安装
if ! command -v convert &> /dev/null; then
    echo "${RED}❌ ImageMagick未安装${NC}"
    echo "请先安装ImageMagick:"
    echo "  macOS: brew install imagemagick"
    echo "  Ubuntu: sudo apt-get install imagemagick"
    exit 1
fi

# 创建转换统计
success_count=0
fail_count=0
skip_count=0


# 转换 image197.wmf
if [ -f "media/image197.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image197.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image197.wmf"
    if convert "media/image197.wmf" -background white -flatten "media/image197.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image197.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image197.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image183.wmf
if [ -f "media/image183.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image183.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image183.wmf"
    if convert "media/image183.wmf" -background white -flatten "media/image183.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image183.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image183.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image168.wmf
if [ -f "media/image168.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image168.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image168.wmf"
    if convert "media/image168.wmf" -background white -flatten "media/image168.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image168.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image168.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image154.wmf
if [ -f "media/image154.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image154.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image154.wmf"
    if convert "media/image154.wmf" -background white -flatten "media/image154.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image154.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image154.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image140.wmf
if [ -f "media/image140.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image140.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image140.wmf"
    if convert "media/image140.wmf" -background white -flatten "media/image140.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image140.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image140.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image395.wmf
if [ -f "media/image395.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image395.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image395.wmf"
    if convert "media/image395.wmf" -background white -flatten "media/image395.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image395.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image395.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image381.wmf
if [ -f "media/image381.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image381.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image381.wmf"
    if convert "media/image381.wmf" -background white -flatten "media/image381.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image381.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image381.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image418.wmf
if [ -f "media/image418.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image418.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image418.wmf"
    if convert "media/image418.wmf" -background white -flatten "media/image418.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image418.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image418.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image356.wmf
if [ -f "media/image356.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image356.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image356.wmf"
    if convert "media/image356.wmf" -background white -flatten "media/image356.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image356.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image356.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image430.wmf
if [ -f "media/image430.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image430.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image430.wmf"
    if convert "media/image430.wmf" -background white -flatten "media/image430.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image430.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image430.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image424.wmf
if [ -f "media/image424.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image424.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image424.wmf"
    if convert "media/image424.wmf" -background white -flatten "media/image424.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image424.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image424.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image342.wmf
if [ -f "media/image342.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image342.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image342.wmf"
    if convert "media/image342.wmf" -background white -flatten "media/image342.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image342.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image342.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image587.wmf
if [ -f "media/image587.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image587.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image587.wmf"
    if convert "media/image587.wmf" -background white -flatten "media/image587.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image587.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image587.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image593.wmf
if [ -f "media/image593.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image593.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image593.wmf"
    if convert "media/image593.wmf" -background white -flatten "media/image593.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image593.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image593.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image578.wmf
if [ -f "media/image578.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image578.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image578.wmf"
    if convert "media/image578.wmf" -background white -flatten "media/image578.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image578.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image578.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image17.wmf
if [ -f "media/image17.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image17.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image17.wmf"
    if convert "media/image17.wmf" -background white -flatten "media/image17.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image17.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image17.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image222.wmf
if [ -f "media/image222.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image222.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image222.wmf"
    if convert "media/image222.wmf" -background white -flatten "media/image222.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image222.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image222.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image544.wmf
if [ -f "media/image544.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image544.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image544.wmf"
    if convert "media/image544.wmf" -background white -flatten "media/image544.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image544.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image544.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image550.wmf
if [ -f "media/image550.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image550.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image550.wmf"
    if convert "media/image550.wmf" -background white -flatten "media/image550.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image550.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image550.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image551.wmf
if [ -f "media/image551.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image551.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image551.wmf"
    if convert "media/image551.wmf" -background white -flatten "media/image551.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image551.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image551.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image237.wmf
if [ -f "media/image237.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image237.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image237.wmf"
    if convert "media/image237.wmf" -background white -flatten "media/image237.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image237.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image237.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image223.wmf
if [ -f "media/image223.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image223.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image223.wmf"
    if convert "media/image223.wmf" -background white -flatten "media/image223.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image223.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image223.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image545.wmf
if [ -f "media/image545.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image545.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image545.wmf"
    if convert "media/image545.wmf" -background white -flatten "media/image545.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image545.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image545.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image16.wmf
if [ -f "media/image16.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image16.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image16.wmf"
    if convert "media/image16.wmf" -background white -flatten "media/image16.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image16.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image16.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image579.wmf
if [ -f "media/image579.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image579.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image579.wmf"
    if convert "media/image579.wmf" -background white -flatten "media/image579.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image579.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image579.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image592.wmf
if [ -f "media/image592.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image592.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image592.wmf"
    if convert "media/image592.wmf" -background white -flatten "media/image592.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image592.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image592.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image586.wmf
if [ -f "media/image586.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image586.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image586.wmf"
    if convert "media/image586.wmf" -background white -flatten "media/image586.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image586.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image586.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image343.wmf
if [ -f "media/image343.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image343.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image343.wmf"
    if convert "media/image343.wmf" -background white -flatten "media/image343.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image343.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image343.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image431.wmf
if [ -f "media/image431.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image431.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image431.wmf"
    if convert "media/image431.wmf" -background white -flatten "media/image431.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image431.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image431.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image419.wmf
if [ -f "media/image419.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image419.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image419.wmf"
    if convert "media/image419.wmf" -background white -flatten "media/image419.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image419.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image419.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image380.wmf
if [ -f "media/image380.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image380.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image380.wmf"
    if convert "media/image380.wmf" -background white -flatten "media/image380.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image380.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image380.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image394.wmf
if [ -f "media/image394.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image394.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image394.wmf"
    if convert "media/image394.wmf" -background white -flatten "media/image394.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image394.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image394.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image141.wmf
if [ -f "media/image141.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image141.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image141.wmf"
    if convert "media/image141.wmf" -background white -flatten "media/image141.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image141.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image141.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image155.wmf
if [ -f "media/image155.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image155.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image155.wmf"
    if convert "media/image155.wmf" -background white -flatten "media/image155.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image155.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image155.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image169.wmf
if [ -f "media/image169.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image169.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image169.wmf"
    if convert "media/image169.wmf" -background white -flatten "media/image169.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image169.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image169.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image182.wmf
if [ -f "media/image182.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image182.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image182.wmf"
    if convert "media/image182.wmf" -background white -flatten "media/image182.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image182.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image182.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image196.wmf
if [ -f "media/image196.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image196.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image196.wmf"
    if convert "media/image196.wmf" -background white -flatten "media/image196.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image196.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image196.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image180.wmf
if [ -f "media/image180.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image180.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image180.wmf"
    if convert "media/image180.wmf" -background white -flatten "media/image180.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image180.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image180.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image194.wmf
if [ -f "media/image194.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image194.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image194.wmf"
    if convert "media/image194.wmf" -background white -flatten "media/image194.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image194.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image194.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image143.wmf
if [ -f "media/image143.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image143.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image143.wmf"
    if convert "media/image143.wmf" -background white -flatten "media/image143.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image143.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image143.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image157.wmf
if [ -f "media/image157.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image157.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image157.wmf"
    if convert "media/image157.wmf" -background white -flatten "media/image157.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image157.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image157.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image382.wmf
if [ -f "media/image382.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image382.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image382.wmf"
    if convert "media/image382.wmf" -background white -flatten "media/image382.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image382.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image382.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image396.wmf
if [ -f "media/image396.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image396.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image396.wmf"
    if convert "media/image396.wmf" -background white -flatten "media/image396.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image396.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image396.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image369.wmf
if [ -f "media/image369.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image369.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image369.wmf"
    if convert "media/image369.wmf" -background white -flatten "media/image369.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image369.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image369.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image341.wmf
if [ -f "media/image341.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image341.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image341.wmf"
    if convert "media/image341.wmf" -background white -flatten "media/image341.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image341.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image341.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image427.wmf
if [ -f "media/image427.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image427.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image427.wmf"
    if convert "media/image427.wmf" -background white -flatten "media/image427.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image427.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image427.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image433.wmf
if [ -f "media/image433.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image433.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image433.wmf"
    if convert "media/image433.wmf" -background white -flatten "media/image433.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image433.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image433.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image355.wmf
if [ -f "media/image355.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image355.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image355.wmf"
    if convert "media/image355.wmf" -background white -flatten "media/image355.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image355.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image355.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image590.wmf
if [ -f "media/image590.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image590.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image590.wmf"
    if convert "media/image590.wmf" -background white -flatten "media/image590.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image590.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image590.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image584.wmf
if [ -f "media/image584.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image584.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image584.wmf"
    if convert "media/image584.wmf" -background white -flatten "media/image584.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image584.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image584.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image209.wmf
if [ -f "media/image209.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image209.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image209.wmf"
    if convert "media/image209.wmf" -background white -flatten "media/image209.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image209.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image209.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image14.wmf
if [ -f "media/image14.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image14.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image14.wmf"
    if convert "media/image14.wmf" -background white -flatten "media/image14.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image14.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image14.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image235.wmf
if [ -f "media/image235.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image235.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image235.wmf"
    if convert "media/image235.wmf" -background white -flatten "media/image235.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image235.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image235.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image28.wmf
if [ -f "media/image28.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image28.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image28.wmf"
    if convert "media/image28.wmf" -background white -flatten "media/image28.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image28.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image28.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image553.wmf
if [ -f "media/image553.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image553.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image553.wmf"
    if convert "media/image553.wmf" -background white -flatten "media/image553.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image553.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image553.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image547.wmf
if [ -f "media/image547.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image547.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image547.wmf"
    if convert "media/image547.wmf" -background white -flatten "media/image547.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image547.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image547.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image221.wmf
if [ -f "media/image221.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image221.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image221.wmf"
    if convert "media/image221.wmf" -background white -flatten "media/image221.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image221.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image221.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image546.wmf
if [ -f "media/image546.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image546.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image546.wmf"
    if convert "media/image546.wmf" -background white -flatten "media/image546.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image546.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image546.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image220.wmf
if [ -f "media/image220.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image220.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image220.wmf"
    if convert "media/image220.wmf" -background white -flatten "media/image220.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image220.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image220.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image29.wmf
if [ -f "media/image29.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image29.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image29.wmf"
    if convert "media/image29.wmf" -background white -flatten "media/image29.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image29.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image29.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image234.wmf
if [ -f "media/image234.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image234.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image234.wmf"
    if convert "media/image234.wmf" -background white -flatten "media/image234.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image234.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image234.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image15.wmf
if [ -f "media/image15.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image15.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image15.wmf"
    if convert "media/image15.wmf" -background white -flatten "media/image15.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image15.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image15.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image208.wmf
if [ -f "media/image208.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image208.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image208.wmf"
    if convert "media/image208.wmf" -background white -flatten "media/image208.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image208.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image208.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image585.wmf
if [ -f "media/image585.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image585.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image585.wmf"
    if convert "media/image585.wmf" -background white -flatten "media/image585.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image585.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image585.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image432.wmf
if [ -f "media/image432.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image432.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image432.wmf"
    if convert "media/image432.wmf" -background white -flatten "media/image432.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image432.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image432.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image354.wmf
if [ -f "media/image354.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image354.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image354.wmf"
    if convert "media/image354.wmf" -background white -flatten "media/image354.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image354.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image354.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image426.wmf
if [ -f "media/image426.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image426.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image426.wmf"
    if convert "media/image426.wmf" -background white -flatten "media/image426.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image426.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image426.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image368.wmf
if [ -f "media/image368.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image368.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image368.wmf"
    if convert "media/image368.wmf" -background white -flatten "media/image368.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image368.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image368.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image397.wmf
if [ -f "media/image397.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image397.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image397.wmf"
    if convert "media/image397.wmf" -background white -flatten "media/image397.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image397.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image397.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image383.wmf
if [ -f "media/image383.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image383.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image383.wmf"
    if convert "media/image383.wmf" -background white -flatten "media/image383.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image383.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image383.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image156.wmf
if [ -f "media/image156.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image156.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image156.wmf"
    if convert "media/image156.wmf" -background white -flatten "media/image156.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image156.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image156.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image142.wmf
if [ -f "media/image142.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image142.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image142.wmf"
    if convert "media/image142.wmf" -background white -flatten "media/image142.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image142.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image142.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image195.wmf
if [ -f "media/image195.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image195.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image195.wmf"
    if convert "media/image195.wmf" -background white -flatten "media/image195.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image195.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image195.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image181.wmf
if [ -f "media/image181.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image181.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image181.wmf"
    if convert "media/image181.wmf" -background white -flatten "media/image181.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image181.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image181.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image185.wmf
if [ -f "media/image185.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image185.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image185.wmf"
    if convert "media/image185.wmf" -background white -flatten "media/image185.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image185.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image185.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image191.wmf
if [ -f "media/image191.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image191.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image191.wmf"
    if convert "media/image191.wmf" -background white -flatten "media/image191.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image191.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image191.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image146.wmf
if [ -f "media/image146.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image146.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image146.wmf"
    if convert "media/image146.wmf" -background white -flatten "media/image146.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image146.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image146.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image152.wmf
if [ -f "media/image152.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image152.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image152.wmf"
    if convert "media/image152.wmf" -background white -flatten "media/image152.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image152.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image152.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image387.wmf
if [ -f "media/image387.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image387.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image387.wmf"
    if convert "media/image387.wmf" -background white -flatten "media/image387.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image387.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image387.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image393.wmf
if [ -f "media/image393.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image393.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image393.wmf"
    if convert "media/image393.wmf" -background white -flatten "media/image393.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image393.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image393.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image422.wmf
if [ -f "media/image422.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image422.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image422.wmf"
    if convert "media/image422.wmf" -background white -flatten "media/image422.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image422.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image422.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image344.wmf
if [ -f "media/image344.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image344.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image344.wmf"
    if convert "media/image344.wmf" -background white -flatten "media/image344.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image344.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image344.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image350.wmf
if [ -f "media/image350.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image350.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image350.wmf"
    if convert "media/image350.wmf" -background white -flatten "media/image350.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image350.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image350.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image436.wmf
if [ -f "media/image436.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image436.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image436.wmf"
    if convert "media/image436.wmf" -background white -flatten "media/image436.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image436.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image436.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image378.wmf
if [ -f "media/image378.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image378.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image378.wmf"
    if convert "media/image378.wmf" -background white -flatten "media/image378.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image378.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image378.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image595.wmf
if [ -f "media/image595.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image595.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image595.wmf"
    if convert "media/image595.wmf" -background white -flatten "media/image595.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image595.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image595.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image581.wmf
if [ -f "media/image581.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image581.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image581.wmf"
    if convert "media/image581.wmf" -background white -flatten "media/image581.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image581.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image581.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image230.wmf
if [ -f "media/image230.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image230.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image230.wmf"
    if convert "media/image230.wmf" -background white -flatten "media/image230.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image230.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image230.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image39.wmf
if [ -f "media/image39.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image39.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image39.wmf"
    if convert "media/image39.wmf" -background white -flatten "media/image39.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image39.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image39.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image224.wmf
if [ -f "media/image224.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image224.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image224.wmf"
    if convert "media/image224.wmf" -background white -flatten "media/image224.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image224.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image224.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image542.wmf
if [ -f "media/image542.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image542.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image542.wmf"
    if convert "media/image542.wmf" -background white -flatten "media/image542.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image542.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image542.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image11.wmf
if [ -f "media/image11.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image11.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image11.wmf"
    if convert "media/image11.wmf" -background white -flatten "media/image11.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image11.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image11.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image218.wmf
if [ -f "media/image218.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image218.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image218.wmf"
    if convert "media/image218.wmf" -background white -flatten "media/image218.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image218.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image218.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image219.wmf
if [ -f "media/image219.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image219.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image219.wmf"
    if convert "media/image219.wmf" -background white -flatten "media/image219.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image219.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image219.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image10.wmf
if [ -f "media/image10.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image10.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image10.wmf"
    if convert "media/image10.wmf" -background white -flatten "media/image10.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image10.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image10.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image225.wmf
if [ -f "media/image225.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image225.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image225.wmf"
    if convert "media/image225.wmf" -background white -flatten "media/image225.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image225.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image225.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image38.wmf
if [ -f "media/image38.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image38.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image38.wmf"
    if convert "media/image38.wmf" -background white -flatten "media/image38.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image38.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image38.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image543.wmf
if [ -f "media/image543.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image543.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image543.wmf"
    if convert "media/image543.wmf" -background white -flatten "media/image543.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image543.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image543.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image557.wmf
if [ -f "media/image557.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image557.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image557.wmf"
    if convert "media/image557.wmf" -background white -flatten "media/image557.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image557.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image557.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image580.wmf
if [ -f "media/image580.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image580.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image580.wmf"
    if convert "media/image580.wmf" -background white -flatten "media/image580.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image580.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image580.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image594.wmf
if [ -f "media/image594.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image594.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image594.wmf"
    if convert "media/image594.wmf" -background white -flatten "media/image594.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image594.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image594.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image379.wmf
if [ -f "media/image379.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image379.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image379.wmf"
    if convert "media/image379.wmf" -background white -flatten "media/image379.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image379.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image379.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image351.wmf
if [ -f "media/image351.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image351.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image351.wmf"
    if convert "media/image351.wmf" -background white -flatten "media/image351.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image351.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image351.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image437.wmf
if [ -f "media/image437.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image437.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image437.wmf"
    if convert "media/image437.wmf" -background white -flatten "media/image437.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image437.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image437.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image423.wmf
if [ -f "media/image423.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image423.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image423.wmf"
    if convert "media/image423.wmf" -background white -flatten "media/image423.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image423.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image423.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image345.wmf
if [ -f "media/image345.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image345.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image345.wmf"
    if convert "media/image345.wmf" -background white -flatten "media/image345.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image345.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image345.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image392.wmf
if [ -f "media/image392.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image392.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image392.wmf"
    if convert "media/image392.wmf" -background white -flatten "media/image392.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image392.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image392.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image386.wmf
if [ -f "media/image386.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image386.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image386.wmf"
    if convert "media/image386.wmf" -background white -flatten "media/image386.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image386.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image386.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image153.wmf
if [ -f "media/image153.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image153.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image153.wmf"
    if convert "media/image153.wmf" -background white -flatten "media/image153.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image153.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image153.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image147.wmf
if [ -f "media/image147.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image147.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image147.wmf"
    if convert "media/image147.wmf" -background white -flatten "media/image147.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image147.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image147.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image184.wmf
if [ -f "media/image184.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image184.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image184.wmf"
    if convert "media/image184.wmf" -background white -flatten "media/image184.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image184.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image184.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image192.wmf
if [ -f "media/image192.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image192.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image192.wmf"
    if convert "media/image192.wmf" -background white -flatten "media/image192.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image192.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image192.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image186.wmf
if [ -f "media/image186.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image186.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image186.wmf"
    if convert "media/image186.wmf" -background white -flatten "media/image186.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image186.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image186.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image151.wmf
if [ -f "media/image151.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image151.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image151.wmf"
    if convert "media/image151.wmf" -background white -flatten "media/image151.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image151.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image151.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image145.wmf
if [ -f "media/image145.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image145.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image145.wmf"
    if convert "media/image145.wmf" -background white -flatten "media/image145.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image145.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image145.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image179.wmf
if [ -f "media/image179.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image179.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image179.wmf"
    if convert "media/image179.wmf" -background white -flatten "media/image179.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image179.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image179.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image390.wmf
if [ -f "media/image390.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image390.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image390.wmf"
    if convert "media/image390.wmf" -background white -flatten "media/image390.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image390.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image390.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image384.wmf
if [ -f "media/image384.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image384.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image384.wmf"
    if convert "media/image384.wmf" -background white -flatten "media/image384.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image384.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image384.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image435.wmf
if [ -f "media/image435.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image435.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image435.wmf"
    if convert "media/image435.wmf" -background white -flatten "media/image435.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image435.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image435.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image353.wmf
if [ -f "media/image353.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image353.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image353.wmf"
    if convert "media/image353.wmf" -background white -flatten "media/image353.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image353.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image353.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image347.wmf
if [ -f "media/image347.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image347.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image347.wmf"
    if convert "media/image347.wmf" -background white -flatten "media/image347.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image347.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image347.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image421.wmf
if [ -f "media/image421.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image421.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image421.wmf"
    if convert "media/image421.wmf" -background white -flatten "media/image421.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image421.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image421.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image409.wmf
if [ -f "media/image409.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image409.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image409.wmf"
    if convert "media/image409.wmf" -background white -flatten "media/image409.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image409.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image409.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image582.wmf
if [ -f "media/image582.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image582.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image582.wmf"
    if convert "media/image582.wmf" -background white -flatten "media/image582.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image582.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image582.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image596.wmf
if [ -f "media/image596.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image596.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image596.wmf"
    if convert "media/image596.wmf" -background white -flatten "media/image596.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image596.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image596.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image541.wmf
if [ -f "media/image541.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image541.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image541.wmf"
    if convert "media/image541.wmf" -background white -flatten "media/image541.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image541.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image541.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image227.wmf
if [ -f "media/image227.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image227.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image227.wmf"
    if convert "media/image227.wmf" -background white -flatten "media/image227.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image227.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image227.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image233.wmf
if [ -f "media/image233.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image233.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image233.wmf"
    if convert "media/image233.wmf" -background white -flatten "media/image233.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image233.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image233.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image555.wmf
if [ -f "media/image555.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image555.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image555.wmf"
    if convert "media/image555.wmf" -background white -flatten "media/image555.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image555.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image555.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image12.wmf
if [ -f "media/image12.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image12.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image12.wmf"
    if convert "media/image12.wmf" -background white -flatten "media/image12.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image12.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image12.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image13.wmf
if [ -f "media/image13.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image13.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image13.wmf"
    if convert "media/image13.wmf" -background white -flatten "media/image13.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image13.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image13.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image568.wmf
if [ -f "media/image568.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image568.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image568.wmf"
    if convert "media/image568.wmf" -background white -flatten "media/image568.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image568.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image568.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image232.wmf
if [ -f "media/image232.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image232.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image232.wmf"
    if convert "media/image232.wmf" -background white -flatten "media/image232.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image232.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image232.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image554.wmf
if [ -f "media/image554.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image554.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image554.wmf"
    if convert "media/image554.wmf" -background white -flatten "media/image554.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image554.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image554.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image540.wmf
if [ -f "media/image540.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image540.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image540.wmf"
    if convert "media/image540.wmf" -background white -flatten "media/image540.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image540.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image540.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image226.wmf
if [ -f "media/image226.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image226.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image226.wmf"
    if convert "media/image226.wmf" -background white -flatten "media/image226.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image226.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image226.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image597.wmf
if [ -f "media/image597.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image597.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image597.wmf"
    if convert "media/image597.wmf" -background white -flatten "media/image597.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image597.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image597.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image583.wmf
if [ -f "media/image583.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image583.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image583.wmf"
    if convert "media/image583.wmf" -background white -flatten "media/image583.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image583.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image583.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image408.wmf
if [ -f "media/image408.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image408.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image408.wmf"
    if convert "media/image408.wmf" -background white -flatten "media/image408.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image408.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image408.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image346.wmf
if [ -f "media/image346.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image346.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image346.wmf"
    if convert "media/image346.wmf" -background white -flatten "media/image346.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image346.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image346.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image420.wmf
if [ -f "media/image420.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image420.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image420.wmf"
    if convert "media/image420.wmf" -background white -flatten "media/image420.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image420.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image420.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image434.wmf
if [ -f "media/image434.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image434.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image434.wmf"
    if convert "media/image434.wmf" -background white -flatten "media/image434.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image434.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image434.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image352.wmf
if [ -f "media/image352.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image352.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image352.wmf"
    if convert "media/image352.wmf" -background white -flatten "media/image352.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image352.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image352.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image385.wmf
if [ -f "media/image385.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image385.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image385.wmf"
    if convert "media/image385.wmf" -background white -flatten "media/image385.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image385.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image385.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image391.wmf
if [ -f "media/image391.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image391.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image391.wmf"
    if convert "media/image391.wmf" -background white -flatten "media/image391.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image391.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image391.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image178.wmf
if [ -f "media/image178.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image178.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image178.wmf"
    if convert "media/image178.wmf" -background white -flatten "media/image178.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image178.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image178.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image144.wmf
if [ -f "media/image144.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image144.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image144.wmf"
    if convert "media/image144.wmf" -background white -flatten "media/image144.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image144.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image144.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image150.wmf
if [ -f "media/image150.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image150.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image150.wmf"
    if convert "media/image150.wmf" -background white -flatten "media/image150.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image150.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image150.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image187.wmf
if [ -f "media/image187.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image187.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image187.wmf"
    if convert "media/image187.wmf" -background white -flatten "media/image187.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image187.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image187.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image193.wmf
if [ -f "media/image193.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image193.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image193.wmf"
    if convert "media/image193.wmf" -background white -flatten "media/image193.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image193.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image193.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image137.wmf
if [ -f "media/image137.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image137.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image137.wmf"
    if convert "media/image137.wmf" -background white -flatten "media/image137.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image137.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image137.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image490.wmf
if [ -f "media/image490.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image490.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image490.wmf"
    if convert "media/image490.wmf" -background white -flatten "media/image490.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image490.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image490.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image484.wmf
if [ -f "media/image484.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image484.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image484.wmf"
    if convert "media/image484.wmf" -background white -flatten "media/image484.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image484.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image484.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image309.wmf
if [ -f "media/image309.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image309.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image309.wmf"
    if convert "media/image309.wmf" -background white -flatten "media/image309.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image309.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image309.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image453.wmf
if [ -f "media/image453.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image453.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image453.wmf"
    if convert "media/image453.wmf" -background white -flatten "media/image453.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image453.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image453.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image335.wmf
if [ -f "media/image335.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image335.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image335.wmf"
    if convert "media/image335.wmf" -background white -flatten "media/image335.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image335.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image335.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image321.wmf
if [ -f "media/image321.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image321.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image321.wmf"
    if convert "media/image321.wmf" -background white -flatten "media/image321.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image321.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image321.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image447.wmf
if [ -f "media/image447.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image447.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image447.wmf"
    if convert "media/image447.wmf" -background white -flatten "media/image447.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image447.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image447.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image282.wmf
if [ -f "media/image282.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image282.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image282.wmf"
    if convert "media/image282.wmf" -background white -flatten "media/image282.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image282.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image282.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image296.wmf
if [ -f "media/image296.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image296.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image296.wmf"
    if convert "media/image296.wmf" -background white -flatten "media/image296.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image296.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image296.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image60.wmf
if [ -f "media/image60.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image60.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image60.wmf"
    if convert "media/image60.wmf" -background white -flatten "media/image60.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image60.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image60.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image269.wmf
if [ -f "media/image269.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image269.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image269.wmf"
    if convert "media/image269.wmf" -background white -flatten "media/image269.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image269.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image269.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image74.wmf
if [ -f "media/image74.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image74.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image74.wmf"
    if convert "media/image74.wmf" -background white -flatten "media/image74.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image74.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image74.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image527.wmf
if [ -f "media/image527.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image527.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image527.wmf"
    if convert "media/image527.wmf" -background white -flatten "media/image527.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image527.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image527.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image241.wmf
if [ -f "media/image241.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image241.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image241.wmf"
    if convert "media/image241.wmf" -background white -flatten "media/image241.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image241.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image241.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image255.wmf
if [ -f "media/image255.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image255.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image255.wmf"
    if convert "media/image255.wmf" -background white -flatten "media/image255.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image255.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image255.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image48.wmf
if [ -f "media/image48.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image48.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image48.wmf"
    if convert "media/image48.wmf" -background white -flatten "media/image48.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image48.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image48.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image533.wmf
if [ -f "media/image533.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image533.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image533.wmf"
    if convert "media/image533.wmf" -background white -flatten "media/image533.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image533.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image533.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image49.wmf
if [ -f "media/image49.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image49.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image49.wmf"
    if convert "media/image49.wmf" -background white -flatten "media/image49.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image49.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image49.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image254.wmf
if [ -f "media/image254.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image254.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image254.wmf"
    if convert "media/image254.wmf" -background white -flatten "media/image254.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image254.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image254.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image532.wmf
if [ -f "media/image532.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image532.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image532.wmf"
    if convert "media/image532.wmf" -background white -flatten "media/image532.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image532.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image532.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image526.wmf
if [ -f "media/image526.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image526.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image526.wmf"
    if convert "media/image526.wmf" -background white -flatten "media/image526.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image526.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image526.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image240.wmf
if [ -f "media/image240.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image240.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image240.wmf"
    if convert "media/image240.wmf" -background white -flatten "media/image240.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image240.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image240.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image75.wmf
if [ -f "media/image75.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image75.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image75.wmf"
    if convert "media/image75.wmf" -background white -flatten "media/image75.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image75.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image75.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image268.wmf
if [ -f "media/image268.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image268.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image268.wmf"
    if convert "media/image268.wmf" -background white -flatten "media/image268.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image268.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image268.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image61.wmf
if [ -f "media/image61.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image61.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image61.wmf"
    if convert "media/image61.wmf" -background white -flatten "media/image61.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image61.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image61.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image297.wmf
if [ -f "media/image297.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image297.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image297.wmf"
    if convert "media/image297.wmf" -background white -flatten "media/image297.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image297.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image297.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image283.wmf
if [ -f "media/image283.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image283.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image283.wmf"
    if convert "media/image283.wmf" -background white -flatten "media/image283.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image283.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image283.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image320.wmf
if [ -f "media/image320.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image320.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image320.wmf"
    if convert "media/image320.wmf" -background white -flatten "media/image320.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image320.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image320.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image446.wmf
if [ -f "media/image446.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image446.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image446.wmf"
    if convert "media/image446.wmf" -background white -flatten "media/image446.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image446.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image446.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image452.wmf
if [ -f "media/image452.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image452.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image452.wmf"
    if convert "media/image452.wmf" -background white -flatten "media/image452.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image452.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image452.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image308.wmf
if [ -f "media/image308.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image308.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image308.wmf"
    if convert "media/image308.wmf" -background white -flatten "media/image308.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image308.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image308.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image485.wmf
if [ -f "media/image485.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image485.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image485.wmf"
    if convert "media/image485.wmf" -background white -flatten "media/image485.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image485.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image485.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image491.wmf
if [ -f "media/image491.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image491.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image491.wmf"
    if convert "media/image491.wmf" -background white -flatten "media/image491.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image491.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image491.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image122.wmf
if [ -f "media/image122.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image122.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image122.wmf"
    if convert "media/image122.wmf" -background white -flatten "media/image122.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image122.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image122.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image136.wmf
if [ -f "media/image136.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image136.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image136.wmf"
    if convert "media/image136.wmf" -background white -flatten "media/image136.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image136.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image136.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image108.wmf
if [ -f "media/image108.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image108.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image108.wmf"
    if convert "media/image108.wmf" -background white -flatten "media/image108.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image108.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image108.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image120.wmf
if [ -f "media/image120.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image120.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image120.wmf"
    if convert "media/image120.wmf" -background white -flatten "media/image120.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image120.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image120.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image134.wmf
if [ -f "media/image134.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image134.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image134.wmf"
    if convert "media/image134.wmf" -background white -flatten "media/image134.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image134.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image134.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image487.wmf
if [ -f "media/image487.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image487.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image487.wmf"
    if convert "media/image487.wmf" -background white -flatten "media/image487.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image487.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image487.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image493.wmf
if [ -f "media/image493.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image493.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image493.wmf"
    if convert "media/image493.wmf" -background white -flatten "media/image493.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image493.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image493.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image478.wmf
if [ -f "media/image478.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image478.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image478.wmf"
    if convert "media/image478.wmf" -background white -flatten "media/image478.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image478.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image478.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image444.wmf
if [ -f "media/image444.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image444.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image444.wmf"
    if convert "media/image444.wmf" -background white -flatten "media/image444.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image444.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image444.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image322.wmf
if [ -f "media/image322.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image322.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image322.wmf"
    if convert "media/image322.wmf" -background white -flatten "media/image322.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image322.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image322.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image336.wmf
if [ -f "media/image336.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image336.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image336.wmf"
    if convert "media/image336.wmf" -background white -flatten "media/image336.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image336.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image336.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image450.wmf
if [ -f "media/image450.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image450.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image450.wmf"
    if convert "media/image450.wmf" -background white -flatten "media/image450.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image450.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image450.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image295.wmf
if [ -f "media/image295.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image295.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image295.wmf"
    if convert "media/image295.wmf" -background white -flatten "media/image295.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image295.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image295.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image88.wmf
if [ -f "media/image88.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image88.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image88.wmf"
    if convert "media/image88.wmf" -background white -flatten "media/image88.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image88.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image88.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image281.wmf
if [ -f "media/image281.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image281.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image281.wmf"
    if convert "media/image281.wmf" -background white -flatten "media/image281.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image281.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image281.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image77.wmf
if [ -f "media/image77.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image77.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image77.wmf"
    if convert "media/image77.wmf" -background white -flatten "media/image77.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image77.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image77.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image63.wmf
if [ -f "media/image63.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image63.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image63.wmf"
    if convert "media/image63.wmf" -background white -flatten "media/image63.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image63.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image63.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image518.wmf
if [ -f "media/image518.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image518.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image518.wmf"
    if convert "media/image518.wmf" -background white -flatten "media/image518.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image518.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image518.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image530.wmf
if [ -f "media/image530.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image530.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image530.wmf"
    if convert "media/image530.wmf" -background white -flatten "media/image530.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image530.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image530.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image256.wmf
if [ -f "media/image256.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image256.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image256.wmf"
    if convert "media/image256.wmf" -background white -flatten "media/image256.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image256.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image256.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image242.wmf
if [ -f "media/image242.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image242.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image242.wmf"
    if convert "media/image242.wmf" -background white -flatten "media/image242.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image242.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image242.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image524.wmf
if [ -f "media/image524.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image524.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image524.wmf"
    if convert "media/image524.wmf" -background white -flatten "media/image524.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image524.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image524.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image243.wmf
if [ -f "media/image243.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image243.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image243.wmf"
    if convert "media/image243.wmf" -background white -flatten "media/image243.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image243.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image243.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image525.wmf
if [ -f "media/image525.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image525.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image525.wmf"
    if convert "media/image525.wmf" -background white -flatten "media/image525.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image525.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image525.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image531.wmf
if [ -f "media/image531.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image531.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image531.wmf"
    if convert "media/image531.wmf" -background white -flatten "media/image531.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image531.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image531.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image257.wmf
if [ -f "media/image257.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image257.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image257.wmf"
    if convert "media/image257.wmf" -background white -flatten "media/image257.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image257.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image257.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image62.wmf
if [ -f "media/image62.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image62.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image62.wmf"
    if convert "media/image62.wmf" -background white -flatten "media/image62.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image62.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image62.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image519.wmf
if [ -f "media/image519.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image519.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image519.wmf"
    if convert "media/image519.wmf" -background white -flatten "media/image519.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image519.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image519.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image76.wmf
if [ -f "media/image76.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image76.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image76.wmf"
    if convert "media/image76.wmf" -background white -flatten "media/image76.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image76.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image76.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image280.wmf
if [ -f "media/image280.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image280.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image280.wmf"
    if convert "media/image280.wmf" -background white -flatten "media/image280.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image280.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image280.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image89.wmf
if [ -f "media/image89.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image89.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image89.wmf"
    if convert "media/image89.wmf" -background white -flatten "media/image89.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image89.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image89.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image294.wmf
if [ -f "media/image294.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image294.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image294.wmf"
    if convert "media/image294.wmf" -background white -flatten "media/image294.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image294.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image294.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image337.wmf
if [ -f "media/image337.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image337.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image337.wmf"
    if convert "media/image337.wmf" -background white -flatten "media/image337.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image337.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image337.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image451.wmf
if [ -f "media/image451.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image451.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image451.wmf"
    if convert "media/image451.wmf" -background white -flatten "media/image451.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image451.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image451.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image445.wmf
if [ -f "media/image445.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image445.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image445.wmf"
    if convert "media/image445.wmf" -background white -flatten "media/image445.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image445.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image445.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image323.wmf
if [ -f "media/image323.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image323.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image323.wmf"
    if convert "media/image323.wmf" -background white -flatten "media/image323.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image323.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image323.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image479.wmf
if [ -f "media/image479.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image479.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image479.wmf"
    if convert "media/image479.wmf" -background white -flatten "media/image479.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image479.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image479.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image492.wmf
if [ -f "media/image492.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image492.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image492.wmf"
    if convert "media/image492.wmf" -background white -flatten "media/image492.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image492.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image492.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image486.wmf
if [ -f "media/image486.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image486.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image486.wmf"
    if convert "media/image486.wmf" -background white -flatten "media/image486.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image486.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image486.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image135.wmf
if [ -f "media/image135.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image135.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image135.wmf"
    if convert "media/image135.wmf" -background white -flatten "media/image135.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image135.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image135.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image121.wmf
if [ -f "media/image121.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image121.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image121.wmf"
    if convert "media/image121.wmf" -background white -flatten "media/image121.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image121.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image121.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image109.wmf
if [ -f "media/image109.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image109.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image109.wmf"
    if convert "media/image109.wmf" -background white -flatten "media/image109.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image109.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image109.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image125.wmf
if [ -f "media/image125.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image125.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image125.wmf"
    if convert "media/image125.wmf" -background white -flatten "media/image125.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image125.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image125.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image131.wmf
if [ -f "media/image131.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image131.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image131.wmf"
    if convert "media/image131.wmf" -background white -flatten "media/image131.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image131.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image131.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image119.wmf
if [ -f "media/image119.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image119.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image119.wmf"
    if convert "media/image119.wmf" -background white -flatten "media/image119.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image119.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image119.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image482.wmf
if [ -f "media/image482.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image482.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image482.wmf"
    if convert "media/image482.wmf" -background white -flatten "media/image482.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image482.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image482.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image496.wmf
if [ -f "media/image496.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image496.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image496.wmf"
    if convert "media/image496.wmf" -background white -flatten "media/image496.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image496.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image496.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image327.wmf
if [ -f "media/image327.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image327.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image327.wmf"
    if convert "media/image327.wmf" -background white -flatten "media/image327.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image327.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image327.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image441.wmf
if [ -f "media/image441.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image441.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image441.wmf"
    if convert "media/image441.wmf" -background white -flatten "media/image441.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image441.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image441.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image455.wmf
if [ -f "media/image455.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image455.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image455.wmf"
    if convert "media/image455.wmf" -background white -flatten "media/image455.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image455.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image455.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image469.wmf
if [ -f "media/image469.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image469.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image469.wmf"
    if convert "media/image469.wmf" -background white -flatten "media/image469.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image469.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image469.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image290.wmf
if [ -f "media/image290.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image290.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image290.wmf"
    if convert "media/image290.wmf" -background white -flatten "media/image290.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image290.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image290.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image99.wmf
if [ -f "media/image99.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image99.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image99.wmf"
    if convert "media/image99.wmf" -background white -flatten "media/image99.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image99.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image99.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image284.wmf
if [ -f "media/image284.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image284.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image284.wmf"
    if convert "media/image284.wmf" -background white -flatten "media/image284.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image284.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image284.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image253.wmf
if [ -f "media/image253.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image253.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image253.wmf"
    if convert "media/image253.wmf" -background white -flatten "media/image253.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image253.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image253.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image535.wmf
if [ -f "media/image535.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image535.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image535.wmf"
    if convert "media/image535.wmf" -background white -flatten "media/image535.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image535.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image535.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image521.wmf
if [ -f "media/image521.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image521.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image521.wmf"
    if convert "media/image521.wmf" -background white -flatten "media/image521.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image521.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image521.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image247.wmf
if [ -f "media/image247.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image247.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image247.wmf"
    if convert "media/image247.wmf" -background white -flatten "media/image247.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image247.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image247.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image72.wmf
if [ -f "media/image72.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image72.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image72.wmf"
    if convert "media/image72.wmf" -background white -flatten "media/image72.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image72.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image72.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image509.wmf
if [ -f "media/image509.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image509.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image509.wmf"
    if convert "media/image509.wmf" -background white -flatten "media/image509.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image509.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image509.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image66.wmf
if [ -f "media/image66.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image66.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image66.wmf"
    if convert "media/image66.wmf" -background white -flatten "media/image66.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image66.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image66.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image67.wmf
if [ -f "media/image67.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image67.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image67.wmf"
    if convert "media/image67.wmf" -background white -flatten "media/image67.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image67.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image67.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image73.wmf
if [ -f "media/image73.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image73.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image73.wmf"
    if convert "media/image73.wmf" -background white -flatten "media/image73.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image73.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image73.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image508.wmf
if [ -f "media/image508.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image508.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image508.wmf"
    if convert "media/image508.wmf" -background white -flatten "media/image508.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image508.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image508.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image520.wmf
if [ -f "media/image520.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image520.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image520.wmf"
    if convert "media/image520.wmf" -background white -flatten "media/image520.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image520.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image520.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image246.wmf
if [ -f "media/image246.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image246.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image246.wmf"
    if convert "media/image246.wmf" -background white -flatten "media/image246.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image246.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image246.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image252.wmf
if [ -f "media/image252.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image252.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image252.wmf"
    if convert "media/image252.wmf" -background white -flatten "media/image252.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image252.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image252.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image534.wmf
if [ -f "media/image534.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image534.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image534.wmf"
    if convert "media/image534.wmf" -background white -flatten "media/image534.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image534.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image534.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image285.wmf
if [ -f "media/image285.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image285.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image285.wmf"
    if convert "media/image285.wmf" -background white -flatten "media/image285.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image285.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image285.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image98.wmf
if [ -f "media/image98.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image98.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image98.wmf"
    if convert "media/image98.wmf" -background white -flatten "media/image98.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image98.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image98.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image291.wmf
if [ -f "media/image291.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image291.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image291.wmf"
    if convert "media/image291.wmf" -background white -flatten "media/image291.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image291.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image291.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image468.wmf
if [ -f "media/image468.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image468.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image468.wmf"
    if convert "media/image468.wmf" -background white -flatten "media/image468.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image468.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image468.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image454.wmf
if [ -f "media/image454.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image454.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image454.wmf"
    if convert "media/image454.wmf" -background white -flatten "media/image454.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image454.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image454.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image332.wmf
if [ -f "media/image332.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image332.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image332.wmf"
    if convert "media/image332.wmf" -background white -flatten "media/image332.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image332.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image332.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image440.wmf
if [ -f "media/image440.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image440.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image440.wmf"
    if convert "media/image440.wmf" -background white -flatten "media/image440.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image440.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image440.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image497.wmf
if [ -f "media/image497.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image497.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image497.wmf"
    if convert "media/image497.wmf" -background white -flatten "media/image497.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image497.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image497.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image483.wmf
if [ -f "media/image483.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image483.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image483.wmf"
    if convert "media/image483.wmf" -background white -flatten "media/image483.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image483.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image483.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image118.wmf
if [ -f "media/image118.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image118.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image118.wmf"
    if convert "media/image118.wmf" -background white -flatten "media/image118.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image118.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image118.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image130.wmf
if [ -f "media/image130.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image130.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image130.wmf"
    if convert "media/image130.wmf" -background white -flatten "media/image130.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image130.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image130.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image124.wmf
if [ -f "media/image124.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image124.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image124.wmf"
    if convert "media/image124.wmf" -background white -flatten "media/image124.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image124.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image124.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image132.wmf
if [ -f "media/image132.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image132.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image132.wmf"
    if convert "media/image132.wmf" -background white -flatten "media/image132.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image132.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image132.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image126.wmf
if [ -f "media/image126.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image126.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image126.wmf"
    if convert "media/image126.wmf" -background white -flatten "media/image126.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image126.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image126.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image495.wmf
if [ -f "media/image495.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image495.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image495.wmf"
    if convert "media/image495.wmf" -background white -flatten "media/image495.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image495.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image495.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image481.wmf
if [ -f "media/image481.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image481.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image481.wmf"
    if convert "media/image481.wmf" -background white -flatten "media/image481.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image481.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image481.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image330.wmf
if [ -f "media/image330.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image330.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image330.wmf"
    if convert "media/image330.wmf" -background white -flatten "media/image330.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image330.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image330.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image456.wmf
if [ -f "media/image456.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image456.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image456.wmf"
    if convert "media/image456.wmf" -background white -flatten "media/image456.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image456.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image456.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image442.wmf
if [ -f "media/image442.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image442.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image442.wmf"
    if convert "media/image442.wmf" -background white -flatten "media/image442.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image442.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image442.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image324.wmf
if [ -f "media/image324.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image324.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image324.wmf"
    if convert "media/image324.wmf" -background white -flatten "media/image324.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image324.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image324.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image318.wmf
if [ -f "media/image318.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image318.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image318.wmf"
    if convert "media/image318.wmf" -background white -flatten "media/image318.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image318.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image318.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image287.wmf
if [ -f "media/image287.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image287.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image287.wmf"
    if convert "media/image287.wmf" -background white -flatten "media/image287.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image287.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image287.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image293.wmf
if [ -f "media/image293.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image293.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image293.wmf"
    if convert "media/image293.wmf" -background white -flatten "media/image293.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image293.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image293.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image59.wmf
if [ -f "media/image59.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image59.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image59.wmf"
    if convert "media/image59.wmf" -background white -flatten "media/image59.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image59.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image59.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image244.wmf
if [ -f "media/image244.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image244.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image244.wmf"
    if convert "media/image244.wmf" -background white -flatten "media/image244.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image244.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image244.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image522.wmf
if [ -f "media/image522.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image522.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image522.wmf"
    if convert "media/image522.wmf" -background white -flatten "media/image522.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image522.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image522.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image536.wmf
if [ -f "media/image536.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image536.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image536.wmf"
    if convert "media/image536.wmf" -background white -flatten "media/image536.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image536.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image536.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image250.wmf
if [ -f "media/image250.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image250.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image250.wmf"
    if convert "media/image250.wmf" -background white -flatten "media/image250.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image250.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image250.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image278.wmf
if [ -f "media/image278.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image278.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image278.wmf"
    if convert "media/image278.wmf" -background white -flatten "media/image278.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image278.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image278.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image71.wmf
if [ -f "media/image71.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image71.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image71.wmf"
    if convert "media/image71.wmf" -background white -flatten "media/image71.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image71.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image71.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image70.wmf
if [ -f "media/image70.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image70.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image70.wmf"
    if convert "media/image70.wmf" -background white -flatten "media/image70.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image70.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image70.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image279.wmf
if [ -f "media/image279.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image279.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image279.wmf"
    if convert "media/image279.wmf" -background white -flatten "media/image279.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image279.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image279.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image64.wmf
if [ -f "media/image64.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image64.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image64.wmf"
    if convert "media/image64.wmf" -background white -flatten "media/image64.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image64.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image64.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image537.wmf
if [ -f "media/image537.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image537.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image537.wmf"
    if convert "media/image537.wmf" -background white -flatten "media/image537.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image537.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image537.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image251.wmf
if [ -f "media/image251.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image251.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image251.wmf"
    if convert "media/image251.wmf" -background white -flatten "media/image251.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image251.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image251.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image245.wmf
if [ -f "media/image245.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image245.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image245.wmf"
    if convert "media/image245.wmf" -background white -flatten "media/image245.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image245.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image245.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image58.wmf
if [ -f "media/image58.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image58.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image58.wmf"
    if convert "media/image58.wmf" -background white -flatten "media/image58.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image58.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image58.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image523.wmf
if [ -f "media/image523.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image523.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image523.wmf"
    if convert "media/image523.wmf" -background white -flatten "media/image523.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image523.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image523.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image292.wmf
if [ -f "media/image292.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image292.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image292.wmf"
    if convert "media/image292.wmf" -background white -flatten "media/image292.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image292.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image292.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image286.wmf
if [ -f "media/image286.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image286.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image286.wmf"
    if convert "media/image286.wmf" -background white -flatten "media/image286.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image286.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image286.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image319.wmf
if [ -f "media/image319.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image319.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image319.wmf"
    if convert "media/image319.wmf" -background white -flatten "media/image319.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image319.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image319.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image443.wmf
if [ -f "media/image443.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image443.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image443.wmf"
    if convert "media/image443.wmf" -background white -flatten "media/image443.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image443.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image443.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image325.wmf
if [ -f "media/image325.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image325.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image325.wmf"
    if convert "media/image325.wmf" -background white -flatten "media/image325.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image325.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image325.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image331.wmf
if [ -f "media/image331.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image331.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image331.wmf"
    if convert "media/image331.wmf" -background white -flatten "media/image331.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image331.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image331.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image457.wmf
if [ -f "media/image457.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image457.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image457.wmf"
    if convert "media/image457.wmf" -background white -flatten "media/image457.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image457.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image457.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image480.wmf
if [ -f "media/image480.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image480.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image480.wmf"
    if convert "media/image480.wmf" -background white -flatten "media/image480.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image480.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image480.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image494.wmf
if [ -f "media/image494.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image494.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image494.wmf"
    if convert "media/image494.wmf" -background white -flatten "media/image494.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image494.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image494.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image127.wmf
if [ -f "media/image127.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image127.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image127.wmf"
    if convert "media/image127.wmf" -background white -flatten "media/image127.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image127.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image127.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image133.wmf
if [ -f "media/image133.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image133.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image133.wmf"
    if convert "media/image133.wmf" -background white -flatten "media/image133.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image133.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image133.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image116.wmf
if [ -f "media/image116.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image116.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image116.wmf"
    if convert "media/image116.wmf" -background white -flatten "media/image116.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image116.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image116.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image102.wmf
if [ -f "media/image102.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image102.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image102.wmf"
    if convert "media/image102.wmf" -background white -flatten "media/image102.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image102.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image102.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image4.wmf
if [ -f "media/image4.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image4.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image4.wmf"
    if convert "media/image4.wmf" -background white -flatten "media/image4.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image4.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image4.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image499.wmf
if [ -f "media/image499.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image499.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image499.wmf"
    if convert "media/image499.wmf" -background white -flatten "media/image499.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image499.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image499.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image328.wmf
if [ -f "media/image328.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image328.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image328.wmf"
    if convert "media/image328.wmf" -background white -flatten "media/image328.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image328.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image328.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image472.wmf
if [ -f "media/image472.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image472.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image472.wmf"
    if convert "media/image472.wmf" -background white -flatten "media/image472.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image472.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image472.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image314.wmf
if [ -f "media/image314.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image314.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image314.wmf"
    if convert "media/image314.wmf" -background white -flatten "media/image314.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image314.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image314.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image300.wmf
if [ -f "media/image300.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image300.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image300.wmf"
    if convert "media/image300.wmf" -background white -flatten "media/image300.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image300.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image300.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image466.wmf
if [ -f "media/image466.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image466.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image466.wmf"
    if convert "media/image466.wmf" -background white -flatten "media/image466.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image466.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image466.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image82.wmf
if [ -f "media/image82.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image82.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image82.wmf"
    if convert "media/image82.wmf" -background white -flatten "media/image82.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image82.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image82.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image96.wmf
if [ -f "media/image96.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image96.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image96.wmf"
    if convert "media/image96.wmf" -background white -flatten "media/image96.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image96.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image96.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image41.wmf
if [ -f "media/image41.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image41.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image41.wmf"
    if convert "media/image41.wmf" -background white -flatten "media/image41.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image41.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image41.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image248.wmf
if [ -f "media/image248.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image248.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image248.wmf"
    if convert "media/image248.wmf" -background white -flatten "media/image248.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image248.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image248.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image55.wmf
if [ -f "media/image55.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image55.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image55.wmf"
    if convert "media/image55.wmf" -background white -flatten "media/image55.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image55.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image55.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image506.wmf
if [ -f "media/image506.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image506.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image506.wmf"
    if convert "media/image506.wmf" -background white -flatten "media/image506.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image506.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image506.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image260.wmf
if [ -f "media/image260.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image260.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image260.wmf"
    if convert "media/image260.wmf" -background white -flatten "media/image260.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image260.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image260.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image274.wmf
if [ -f "media/image274.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image274.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image274.wmf"
    if convert "media/image274.wmf" -background white -flatten "media/image274.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image274.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image274.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image69.wmf
if [ -f "media/image69.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image69.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image69.wmf"
    if convert "media/image69.wmf" -background white -flatten "media/image69.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image69.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image69.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image512.wmf
if [ -f "media/image512.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image512.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image512.wmf"
    if convert "media/image512.wmf" -background white -flatten "media/image512.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image512.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image512.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image68.wmf
if [ -f "media/image68.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image68.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image68.wmf"
    if convert "media/image68.wmf" -background white -flatten "media/image68.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image68.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image68.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image275.wmf
if [ -f "media/image275.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image275.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image275.wmf"
    if convert "media/image275.wmf" -background white -flatten "media/image275.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image275.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image275.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image513.wmf
if [ -f "media/image513.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image513.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image513.wmf"
    if convert "media/image513.wmf" -background white -flatten "media/image513.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image513.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image513.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image507.wmf
if [ -f "media/image507.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image507.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image507.wmf"
    if convert "media/image507.wmf" -background white -flatten "media/image507.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image507.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image507.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image261.wmf
if [ -f "media/image261.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image261.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image261.wmf"
    if convert "media/image261.wmf" -background white -flatten "media/image261.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image261.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image261.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image54.wmf
if [ -f "media/image54.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image54.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image54.wmf"
    if convert "media/image54.wmf" -background white -flatten "media/image54.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image54.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image54.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image249.wmf
if [ -f "media/image249.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image249.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image249.wmf"
    if convert "media/image249.wmf" -background white -flatten "media/image249.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image249.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image249.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image40.wmf
if [ -f "media/image40.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image40.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image40.wmf"
    if convert "media/image40.wmf" -background white -flatten "media/image40.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image40.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image40.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image97.wmf
if [ -f "media/image97.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image97.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image97.wmf"
    if convert "media/image97.wmf" -background white -flatten "media/image97.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image97.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image97.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image83.wmf
if [ -f "media/image83.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image83.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image83.wmf"
    if convert "media/image83.wmf" -background white -flatten "media/image83.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image83.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image83.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image301.wmf
if [ -f "media/image301.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image301.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image301.wmf"
    if convert "media/image301.wmf" -background white -flatten "media/image301.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image301.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image301.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image467.wmf
if [ -f "media/image467.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image467.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image467.wmf"
    if convert "media/image467.wmf" -background white -flatten "media/image467.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image467.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image467.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image473.wmf
if [ -f "media/image473.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image473.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image473.wmf"
    if convert "media/image473.wmf" -background white -flatten "media/image473.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image473.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image473.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image315.wmf
if [ -f "media/image315.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image315.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image315.wmf"
    if convert "media/image315.wmf" -background white -flatten "media/image315.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image315.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image315.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image329.wmf
if [ -f "media/image329.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image329.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image329.wmf"
    if convert "media/image329.wmf" -background white -flatten "media/image329.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image329.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image329.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image498.wmf
if [ -f "media/image498.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image498.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image498.wmf"
    if convert "media/image498.wmf" -background white -flatten "media/image498.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image498.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image498.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image5.wmf
if [ -f "media/image5.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image5.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image5.wmf"
    if convert "media/image5.wmf" -background white -flatten "media/image5.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image5.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image5.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image103.wmf
if [ -f "media/image103.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image103.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image103.wmf"
    if convert "media/image103.wmf" -background white -flatten "media/image103.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image103.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image103.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image117.wmf
if [ -f "media/image117.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image117.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image117.wmf"
    if convert "media/image117.wmf" -background white -flatten "media/image117.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image117.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image117.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image129.wmf
if [ -f "media/image129.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image129.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image129.wmf"
    if convert "media/image129.wmf" -background white -flatten "media/image129.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image129.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image129.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image101.wmf
if [ -f "media/image101.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image101.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image101.wmf"
    if convert "media/image101.wmf" -background white -flatten "media/image101.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image101.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image101.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image115.wmf
if [ -f "media/image115.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image115.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image115.wmf"
    if convert "media/image115.wmf" -background white -flatten "media/image115.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image115.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image115.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image459.wmf
if [ -f "media/image459.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image459.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image459.wmf"
    if convert "media/image459.wmf" -background white -flatten "media/image459.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image459.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image459.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image303.wmf
if [ -f "media/image303.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image303.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image303.wmf"
    if convert "media/image303.wmf" -background white -flatten "media/image303.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image303.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image303.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image317.wmf
if [ -f "media/image317.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image317.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image317.wmf"
    if convert "media/image317.wmf" -background white -flatten "media/image317.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image317.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image317.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image471.wmf
if [ -f "media/image471.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image471.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image471.wmf"
    if convert "media/image471.wmf" -background white -flatten "media/image471.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image471.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image471.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image288.wmf
if [ -f "media/image288.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image288.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image288.wmf"
    if convert "media/image288.wmf" -background white -flatten "media/image288.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image288.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image288.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image95.wmf
if [ -f "media/image95.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image95.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image95.wmf"
    if convert "media/image95.wmf" -background white -flatten "media/image95.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image95.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image95.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image81.wmf
if [ -f "media/image81.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image81.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image81.wmf"
    if convert "media/image81.wmf" -background white -flatten "media/image81.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image81.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image81.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image56.wmf
if [ -f "media/image56.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image56.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image56.wmf"
    if convert "media/image56.wmf" -background white -flatten "media/image56.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image56.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image56.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image42.wmf
if [ -f "media/image42.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image42.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image42.wmf"
    if convert "media/image42.wmf" -background white -flatten "media/image42.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image42.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image42.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image539.wmf
if [ -f "media/image539.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image539.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image539.wmf"
    if convert "media/image539.wmf" -background white -flatten "media/image539.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image539.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image539.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image511.wmf
if [ -f "media/image511.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image511.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image511.wmf"
    if convert "media/image511.wmf" -background white -flatten "media/image511.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image511.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image511.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image277.wmf
if [ -f "media/image277.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image277.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image277.wmf"
    if convert "media/image277.wmf" -background white -flatten "media/image277.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image277.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image277.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image263.wmf
if [ -f "media/image263.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image263.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image263.wmf"
    if convert "media/image263.wmf" -background white -flatten "media/image263.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image263.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image263.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image505.wmf
if [ -f "media/image505.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image505.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image505.wmf"
    if convert "media/image505.wmf" -background white -flatten "media/image505.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image505.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image505.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image262.wmf
if [ -f "media/image262.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image262.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image262.wmf"
    if convert "media/image262.wmf" -background white -flatten "media/image262.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image262.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image262.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image504.wmf
if [ -f "media/image504.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image504.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image504.wmf"
    if convert "media/image504.wmf" -background white -flatten "media/image504.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image504.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image504.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image510.wmf
if [ -f "media/image510.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image510.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image510.wmf"
    if convert "media/image510.wmf" -background white -flatten "media/image510.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image510.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image510.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image276.wmf
if [ -f "media/image276.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image276.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image276.wmf"
    if convert "media/image276.wmf" -background white -flatten "media/image276.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image276.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image276.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image43.wmf
if [ -f "media/image43.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image43.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image43.wmf"
    if convert "media/image43.wmf" -background white -flatten "media/image43.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image43.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image43.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image538.wmf
if [ -f "media/image538.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image538.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image538.wmf"
    if convert "media/image538.wmf" -background white -flatten "media/image538.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image538.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image538.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image57.wmf
if [ -f "media/image57.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image57.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image57.wmf"
    if convert "media/image57.wmf" -background white -flatten "media/image57.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image57.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image57.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image80.wmf
if [ -f "media/image80.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image80.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image80.wmf"
    if convert "media/image80.wmf" -background white -flatten "media/image80.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image80.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image80.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image289.wmf
if [ -f "media/image289.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image289.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image289.wmf"
    if convert "media/image289.wmf" -background white -flatten "media/image289.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image289.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image289.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image316.wmf
if [ -f "media/image316.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image316.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image316.wmf"
    if convert "media/image316.wmf" -background white -flatten "media/image316.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image316.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image316.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image470.wmf
if [ -f "media/image470.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image470.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image470.wmf"
    if convert "media/image470.wmf" -background white -flatten "media/image470.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image470.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image470.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image464.wmf
if [ -f "media/image464.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image464.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image464.wmf"
    if convert "media/image464.wmf" -background white -flatten "media/image464.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image464.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image464.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image302.wmf
if [ -f "media/image302.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image302.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image302.wmf"
    if convert "media/image302.wmf" -background white -flatten "media/image302.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image302.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image302.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image458.wmf
if [ -f "media/image458.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image458.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image458.wmf"
    if convert "media/image458.wmf" -background white -flatten "media/image458.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image458.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image458.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image114.wmf
if [ -f "media/image114.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image114.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image114.wmf"
    if convert "media/image114.wmf" -background white -flatten "media/image114.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image114.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image114.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image100.wmf
if [ -f "media/image100.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image100.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image100.wmf"
    if convert "media/image100.wmf" -background white -flatten "media/image100.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image100.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image100.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image128.wmf
if [ -f "media/image128.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image128.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image128.wmf"
    if convert "media/image128.wmf" -background white -flatten "media/image128.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image128.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image128.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image104.wmf
if [ -f "media/image104.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image104.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image104.wmf"
    if convert "media/image104.wmf" -background white -flatten "media/image104.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image104.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image104.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image2.wmf
if [ -f "media/image2.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image2.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image2.wmf"
    if convert "media/image2.wmf" -background white -flatten "media/image2.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image2.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image2.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image110.wmf
if [ -f "media/image110.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image110.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image110.wmf"
    if convert "media/image110.wmf" -background white -flatten "media/image110.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image110.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image110.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image306.wmf
if [ -f "media/image306.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image306.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image306.wmf"
    if convert "media/image306.wmf" -background white -flatten "media/image306.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image306.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image306.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image460.wmf
if [ -f "media/image460.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image460.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image460.wmf"
    if convert "media/image460.wmf" -background white -flatten "media/image460.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image460.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image460.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image474.wmf
if [ -f "media/image474.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image474.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image474.wmf"
    if convert "media/image474.wmf" -background white -flatten "media/image474.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image474.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image474.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image448.wmf
if [ -f "media/image448.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image448.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image448.wmf"
    if convert "media/image448.wmf" -background white -flatten "media/image448.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image448.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image448.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image90.wmf
if [ -f "media/image90.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image90.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image90.wmf"
    if convert "media/image90.wmf" -background white -flatten "media/image90.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image90.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image90.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image84.wmf
if [ -f "media/image84.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image84.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image84.wmf"
    if convert "media/image84.wmf" -background white -flatten "media/image84.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image84.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image84.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image299.wmf
if [ -f "media/image299.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image299.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image299.wmf"
    if convert "media/image299.wmf" -background white -flatten "media/image299.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image299.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image299.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image272.wmf
if [ -f "media/image272.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image272.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image272.wmf"
    if convert "media/image272.wmf" -background white -flatten "media/image272.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image272.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image272.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image514.wmf
if [ -f "media/image514.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image514.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image514.wmf"
    if convert "media/image514.wmf" -background white -flatten "media/image514.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image514.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image514.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image500.wmf
if [ -f "media/image500.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image500.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image500.wmf"
    if convert "media/image500.wmf" -background white -flatten "media/image500.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image500.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image500.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image266.wmf
if [ -f "media/image266.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image266.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image266.wmf"
    if convert "media/image266.wmf" -background white -flatten "media/image266.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image266.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image266.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image528.wmf
if [ -f "media/image528.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image528.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image528.wmf"
    if convert "media/image528.wmf" -background white -flatten "media/image528.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image528.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image528.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image47.wmf
if [ -f "media/image47.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image47.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image47.wmf"
    if convert "media/image47.wmf" -background white -flatten "media/image47.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image47.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image47.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image46.wmf
if [ -f "media/image46.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image46.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image46.wmf"
    if convert "media/image46.wmf" -background white -flatten "media/image46.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image46.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image46.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image52.wmf
if [ -f "media/image52.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image52.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image52.wmf"
    if convert "media/image52.wmf" -background white -flatten "media/image52.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image52.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image52.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image529.wmf
if [ -f "media/image529.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image529.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image529.wmf"
    if convert "media/image529.wmf" -background white -flatten "media/image529.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image529.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image529.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image501.wmf
if [ -f "media/image501.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image501.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image501.wmf"
    if convert "media/image501.wmf" -background white -flatten "media/image501.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image501.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image501.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image267.wmf
if [ -f "media/image267.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image267.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image267.wmf"
    if convert "media/image267.wmf" -background white -flatten "media/image267.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image267.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image267.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image273.wmf
if [ -f "media/image273.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image273.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image273.wmf"
    if convert "media/image273.wmf" -background white -flatten "media/image273.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image273.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image273.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image298.wmf
if [ -f "media/image298.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image298.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image298.wmf"
    if convert "media/image298.wmf" -background white -flatten "media/image298.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image298.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image298.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image85.wmf
if [ -f "media/image85.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image85.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image85.wmf"
    if convert "media/image85.wmf" -background white -flatten "media/image85.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image85.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image85.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image91.wmf
if [ -f "media/image91.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image91.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image91.wmf"
    if convert "media/image91.wmf" -background white -flatten "media/image91.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image91.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image91.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image449.wmf
if [ -f "media/image449.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image449.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image449.wmf"
    if convert "media/image449.wmf" -background white -flatten "media/image449.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image449.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image449.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image475.wmf
if [ -f "media/image475.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image475.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image475.wmf"
    if convert "media/image475.wmf" -background white -flatten "media/image475.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image475.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image475.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image313.wmf
if [ -f "media/image313.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image313.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image313.wmf"
    if convert "media/image313.wmf" -background white -flatten "media/image313.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image313.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image313.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image461.wmf
if [ -f "media/image461.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image461.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image461.wmf"
    if convert "media/image461.wmf" -background white -flatten "media/image461.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image461.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image461.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image139.wmf
if [ -f "media/image139.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image139.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image139.wmf"
    if convert "media/image139.wmf" -background white -flatten "media/image139.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image139.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image139.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image111.wmf
if [ -f "media/image111.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image111.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image111.wmf"
    if convert "media/image111.wmf" -background white -flatten "media/image111.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image111.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image111.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image3.wmf
if [ -f "media/image3.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image3.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image3.wmf"
    if convert "media/image3.wmf" -background white -flatten "media/image3.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image3.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image3.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image105.wmf
if [ -f "media/image105.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image105.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image105.wmf"
    if convert "media/image105.wmf" -background white -flatten "media/image105.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image105.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image105.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image113.wmf
if [ -f "media/image113.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image113.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image113.wmf"
    if convert "media/image113.wmf" -background white -flatten "media/image113.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image113.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image113.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image107.wmf
if [ -f "media/image107.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image107.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image107.wmf"
    if convert "media/image107.wmf" -background white -flatten "media/image107.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image107.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image107.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image488.wmf
if [ -f "media/image488.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image488.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image488.wmf"
    if convert "media/image488.wmf" -background white -flatten "media/image488.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image488.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image488.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image311.wmf
if [ -f "media/image311.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image311.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image311.wmf"
    if convert "media/image311.wmf" -background white -flatten "media/image311.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image311.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image311.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image477.wmf
if [ -f "media/image477.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image477.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image477.wmf"
    if convert "media/image477.wmf" -background white -flatten "media/image477.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image477.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image477.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image463.wmf
if [ -f "media/image463.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image463.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image463.wmf"
    if convert "media/image463.wmf" -background white -flatten "media/image463.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image463.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image463.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image305.wmf
if [ -f "media/image305.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image305.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image305.wmf"
    if convert "media/image305.wmf" -background white -flatten "media/image305.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image305.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image305.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image339.wmf
if [ -f "media/image339.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image339.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image339.wmf"
    if convert "media/image339.wmf" -background white -flatten "media/image339.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image339.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image339.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image87.wmf
if [ -f "media/image87.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image87.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image87.wmf"
    if convert "media/image87.wmf" -background white -flatten "media/image87.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image87.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image87.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image93.wmf
if [ -f "media/image93.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image93.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image93.wmf"
    if convert "media/image93.wmf" -background white -flatten "media/image93.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image93.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image93.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image78.wmf
if [ -f "media/image78.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image78.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image78.wmf"
    if convert "media/image78.wmf" -background white -flatten "media/image78.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image78.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image78.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image503.wmf
if [ -f "media/image503.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image503.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image503.wmf"
    if convert "media/image503.wmf" -background white -flatten "media/image503.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image503.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image503.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image517.wmf
if [ -f "media/image517.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image517.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image517.wmf"
    if convert "media/image517.wmf" -background white -flatten "media/image517.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image517.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image517.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image271.wmf
if [ -f "media/image271.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image271.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image271.wmf"
    if convert "media/image271.wmf" -background white -flatten "media/image271.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image271.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image271.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image44.wmf
if [ -f "media/image44.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image44.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image44.wmf"
    if convert "media/image44.wmf" -background white -flatten "media/image44.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image44.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image44.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image259.wmf
if [ -f "media/image259.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image259.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image259.wmf"
    if convert "media/image259.wmf" -background white -flatten "media/image259.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image259.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image259.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image50.wmf
if [ -f "media/image50.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image50.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image50.wmf"
    if convert "media/image50.wmf" -background white -flatten "media/image50.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image50.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image50.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image51.wmf
if [ -f "media/image51.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image51.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image51.wmf"
    if convert "media/image51.wmf" -background white -flatten "media/image51.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image51.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image51.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image258.wmf
if [ -f "media/image258.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image258.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image258.wmf"
    if convert "media/image258.wmf" -background white -flatten "media/image258.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image258.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image258.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image45.wmf
if [ -f "media/image45.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image45.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image45.wmf"
    if convert "media/image45.wmf" -background white -flatten "media/image45.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image45.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image45.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image516.wmf
if [ -f "media/image516.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image516.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image516.wmf"
    if convert "media/image516.wmf" -background white -flatten "media/image516.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image516.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image516.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image270.wmf
if [ -f "media/image270.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image270.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image270.wmf"
    if convert "media/image270.wmf" -background white -flatten "media/image270.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image270.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image270.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image264.wmf
if [ -f "media/image264.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image264.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image264.wmf"
    if convert "media/image264.wmf" -background white -flatten "media/image264.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image264.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image264.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image79.wmf
if [ -f "media/image79.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image79.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image79.wmf"
    if convert "media/image79.wmf" -background white -flatten "media/image79.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image79.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image79.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image502.wmf
if [ -f "media/image502.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image502.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image502.wmf"
    if convert "media/image502.wmf" -background white -flatten "media/image502.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image502.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image502.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image92.wmf
if [ -f "media/image92.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image92.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image92.wmf"
    if convert "media/image92.wmf" -background white -flatten "media/image92.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image92.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image92.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image86.wmf
if [ -f "media/image86.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image86.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image86.wmf"
    if convert "media/image86.wmf" -background white -flatten "media/image86.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image86.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image86.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image338.wmf
if [ -f "media/image338.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image338.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image338.wmf"
    if convert "media/image338.wmf" -background white -flatten "media/image338.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image338.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image338.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image462.wmf
if [ -f "media/image462.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image462.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image462.wmf"
    if convert "media/image462.wmf" -background white -flatten "media/image462.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image462.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image462.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image304.wmf
if [ -f "media/image304.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image304.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image304.wmf"
    if convert "media/image304.wmf" -background white -flatten "media/image304.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image304.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image304.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image310.wmf
if [ -f "media/image310.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image310.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image310.wmf"
    if convert "media/image310.wmf" -background white -flatten "media/image310.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image310.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image310.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image476.wmf
if [ -f "media/image476.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image476.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image476.wmf"
    if convert "media/image476.wmf" -background white -flatten "media/image476.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image476.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image476.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image489.wmf
if [ -f "media/image489.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image489.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image489.wmf"
    if convert "media/image489.wmf" -background white -flatten "media/image489.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image489.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image489.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image106.wmf
if [ -f "media/image106.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image106.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image106.wmf"
    if convert "media/image106.wmf" -background white -flatten "media/image106.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image106.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image106.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image112.wmf
if [ -f "media/image112.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image112.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image112.wmf"
    if convert "media/image112.wmf" -background white -flatten "media/image112.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image112.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image112.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image149.wmf
if [ -f "media/image149.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image149.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image149.wmf"
    if convert "media/image149.wmf" -background white -flatten "media/image149.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image149.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image149.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image175.wmf
if [ -f "media/image175.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image175.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image175.wmf"
    if convert "media/image175.wmf" -background white -flatten "media/image175.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image175.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image175.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image161.wmf
if [ -f "media/image161.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image161.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image161.wmf"
    if convert "media/image161.wmf" -background white -flatten "media/image161.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image161.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image161.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image388.wmf
if [ -f "media/image388.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image388.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image388.wmf"
    if convert "media/image388.wmf" -background white -flatten "media/image388.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image388.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image388.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image439.wmf
if [ -f "media/image439.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image439.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image439.wmf"
    if convert "media/image439.wmf" -background white -flatten "media/image439.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image439.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image439.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image377.wmf
if [ -f "media/image377.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image377.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image377.wmf"
    if convert "media/image377.wmf" -background white -flatten "media/image377.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image377.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image377.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image411.wmf
if [ -f "media/image411.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image411.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image411.wmf"
    if convert "media/image411.wmf" -background white -flatten "media/image411.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image411.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image411.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image363.wmf
if [ -f "media/image363.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image363.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image363.wmf"
    if convert "media/image363.wmf" -background white -flatten "media/image363.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image363.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image363.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image559.wmf
if [ -f "media/image559.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image559.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image559.wmf"
    if convert "media/image559.wmf" -background white -flatten "media/image559.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image559.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image559.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image203.wmf
if [ -f "media/image203.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image203.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image203.wmf"
    if convert "media/image203.wmf" -background white -flatten "media/image203.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image203.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image203.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image565.wmf
if [ -f "media/image565.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image565.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image565.wmf"
    if convert "media/image565.wmf" -background white -flatten "media/image565.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image565.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image565.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image571.wmf
if [ -f "media/image571.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image571.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image571.wmf"
    if convert "media/image571.wmf" -background white -flatten "media/image571.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image571.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image571.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image217.wmf
if [ -f "media/image217.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image217.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image217.wmf"
    if convert "media/image217.wmf" -background white -flatten "media/image217.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image217.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image217.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image570.wmf
if [ -f "media/image570.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image570.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image570.wmf"
    if convert "media/image570.wmf" -background white -flatten "media/image570.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image570.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image570.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image216.wmf
if [ -f "media/image216.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image216.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image216.wmf"
    if convert "media/image216.wmf" -background white -flatten "media/image216.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image216.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image216.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image202.wmf
if [ -f "media/image202.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image202.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image202.wmf"
    if convert "media/image202.wmf" -background white -flatten "media/image202.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image202.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image202.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image564.wmf
if [ -f "media/image564.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image564.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image564.wmf"
    if convert "media/image564.wmf" -background white -flatten "media/image564.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image564.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image564.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image37.wmf
if [ -f "media/image37.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image37.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image37.wmf"
    if convert "media/image37.wmf" -background white -flatten "media/image37.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image37.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image37.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image558.wmf
if [ -f "media/image558.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image558.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image558.wmf"
    if convert "media/image558.wmf" -background white -flatten "media/image558.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image558.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image558.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image404.wmf
if [ -f "media/image404.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image404.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image404.wmf"
    if convert "media/image404.wmf" -background white -flatten "media/image404.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image404.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image404.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image362.wmf
if [ -f "media/image362.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image362.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image362.wmf"
    if convert "media/image362.wmf" -background white -flatten "media/image362.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image362.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image362.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image376.wmf
if [ -f "media/image376.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image376.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image376.wmf"
    if convert "media/image376.wmf" -background white -flatten "media/image376.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image376.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image376.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image410.wmf
if [ -f "media/image410.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image410.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image410.wmf"
    if convert "media/image410.wmf" -background white -flatten "media/image410.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image410.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image410.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image438.wmf
if [ -f "media/image438.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image438.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image438.wmf"
    if convert "media/image438.wmf" -background white -flatten "media/image438.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image438.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image438.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image389.wmf
if [ -f "media/image389.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image389.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image389.wmf"
    if convert "media/image389.wmf" -background white -flatten "media/image389.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image389.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image389.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image160.wmf
if [ -f "media/image160.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image160.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image160.wmf"
    if convert "media/image160.wmf" -background white -flatten "media/image160.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image160.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image160.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image174.wmf
if [ -f "media/image174.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image174.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image174.wmf"
    if convert "media/image174.wmf" -background white -flatten "media/image174.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image174.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image174.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image148.wmf
if [ -f "media/image148.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image148.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image148.wmf"
    if convert "media/image148.wmf" -background white -flatten "media/image148.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image148.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image148.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image189.wmf
if [ -f "media/image189.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image189.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image189.wmf"
    if convert "media/image189.wmf" -background white -flatten "media/image189.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image189.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image189.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image162.wmf
if [ -f "media/image162.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image162.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image162.wmf"
    if convert "media/image162.wmf" -background white -flatten "media/image162.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image162.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image162.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image176.wmf
if [ -f "media/image176.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image176.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image176.wmf"
    if convert "media/image176.wmf" -background white -flatten "media/image176.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image176.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image176.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image348.wmf
if [ -f "media/image348.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image348.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image348.wmf"
    if convert "media/image348.wmf" -background white -flatten "media/image348.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image348.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image348.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image360.wmf
if [ -f "media/image360.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image360.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image360.wmf"
    if convert "media/image360.wmf" -background white -flatten "media/image360.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image360.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image360.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image406.wmf
if [ -f "media/image406.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image406.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image406.wmf"
    if convert "media/image406.wmf" -background white -flatten "media/image406.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image406.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image406.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image412.wmf
if [ -f "media/image412.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image412.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image412.wmf"
    if convert "media/image412.wmf" -background white -flatten "media/image412.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image412.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image412.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image374.wmf
if [ -f "media/image374.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image374.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image374.wmf"
    if convert "media/image374.wmf" -background white -flatten "media/image374.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image374.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image374.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image599.wmf
if [ -f "media/image599.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image599.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image599.wmf"
    if convert "media/image599.wmf" -background white -flatten "media/image599.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image599.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image599.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image228.wmf
if [ -f "media/image228.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image228.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image228.wmf"
    if convert "media/image228.wmf" -background white -flatten "media/image228.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image228.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image228.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image35.wmf
if [ -f "media/image35.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image35.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image35.wmf"
    if convert "media/image35.wmf" -background white -flatten "media/image35.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image35.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image35.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image214.wmf
if [ -f "media/image214.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image214.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image214.wmf"
    if convert "media/image214.wmf" -background white -flatten "media/image214.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image214.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image214.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image572.wmf
if [ -f "media/image572.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image572.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image572.wmf"
    if convert "media/image572.wmf" -background white -flatten "media/image572.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image572.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image572.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image566.wmf
if [ -f "media/image566.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image566.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image566.wmf"
    if convert "media/image566.wmf" -background white -flatten "media/image566.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image566.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image566.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image200.wmf
if [ -f "media/image200.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image200.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image200.wmf"
    if convert "media/image200.wmf" -background white -flatten "media/image200.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image200.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image200.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image567.wmf
if [ -f "media/image567.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image567.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image567.wmf"
    if convert "media/image567.wmf" -background white -flatten "media/image567.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image567.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image567.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image201.wmf
if [ -f "media/image201.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image201.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image201.wmf"
    if convert "media/image201.wmf" -background white -flatten "media/image201.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image201.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image201.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image215.wmf
if [ -f "media/image215.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image215.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image215.wmf"
    if convert "media/image215.wmf" -background white -flatten "media/image215.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image215.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image215.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image573.wmf
if [ -f "media/image573.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image573.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image573.wmf"
    if convert "media/image573.wmf" -background white -flatten "media/image573.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image573.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image573.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image34.wmf
if [ -f "media/image34.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image34.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image34.wmf"
    if convert "media/image34.wmf" -background white -flatten "media/image34.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image34.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image34.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image229.wmf
if [ -f "media/image229.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image229.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image229.wmf"
    if convert "media/image229.wmf" -background white -flatten "media/image229.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image229.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image229.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image598.wmf
if [ -f "media/image598.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image598.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image598.wmf"
    if convert "media/image598.wmf" -background white -flatten "media/image598.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image598.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image598.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image413.wmf
if [ -f "media/image413.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image413.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image413.wmf"
    if convert "media/image413.wmf" -background white -flatten "media/image413.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image413.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image413.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image375.wmf
if [ -f "media/image375.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image375.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image375.wmf"
    if convert "media/image375.wmf" -background white -flatten "media/image375.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image375.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image375.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image361.wmf
if [ -f "media/image361.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image361.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image361.wmf"
    if convert "media/image361.wmf" -background white -flatten "media/image361.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image361.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image361.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image407.wmf
if [ -f "media/image407.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image407.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image407.wmf"
    if convert "media/image407.wmf" -background white -flatten "media/image407.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image407.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image407.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image349.wmf
if [ -f "media/image349.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image349.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image349.wmf"
    if convert "media/image349.wmf" -background white -flatten "media/image349.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image349.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image349.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image177.wmf
if [ -f "media/image177.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image177.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image177.wmf"
    if convert "media/image177.wmf" -background white -flatten "media/image177.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image177.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image177.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image163.wmf
if [ -f "media/image163.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image163.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image163.wmf"
    if convert "media/image163.wmf" -background white -flatten "media/image163.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image163.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image163.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image188.wmf
if [ -f "media/image188.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image188.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image188.wmf"
    if convert "media/image188.wmf" -background white -flatten "media/image188.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image188.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image188.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image167.wmf
if [ -f "media/image167.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image167.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image167.wmf"
    if convert "media/image167.wmf" -background white -flatten "media/image167.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image167.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image167.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image601.wmf
if [ -f "media/image601.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image601.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image601.wmf"
    if convert "media/image601.wmf" -background white -flatten "media/image601.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image601.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image601.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image173.wmf
if [ -f "media/image173.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image173.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image173.wmf"
    if convert "media/image173.wmf" -background white -flatten "media/image173.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image173.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image173.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image403.wmf
if [ -f "media/image403.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image403.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image403.wmf"
    if convert "media/image403.wmf" -background white -flatten "media/image403.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image403.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image403.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image365.wmf
if [ -f "media/image365.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image365.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image365.wmf"
    if convert "media/image365.wmf" -background white -flatten "media/image365.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image365.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image365.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image371.wmf
if [ -f "media/image371.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image371.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image371.wmf"
    if convert "media/image371.wmf" -background white -flatten "media/image371.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image371.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image371.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image417.wmf
if [ -f "media/image417.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image417.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image417.wmf"
    if convert "media/image417.wmf" -background white -flatten "media/image417.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image417.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image417.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image359.wmf
if [ -f "media/image359.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image359.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image359.wmf"
    if convert "media/image359.wmf" -background white -flatten "media/image359.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image359.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image359.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image588.wmf
if [ -f "media/image588.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image588.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image588.wmf"
    if convert "media/image588.wmf" -background white -flatten "media/image588.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image588.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image588.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image577.wmf
if [ -f "media/image577.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image577.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image577.wmf"
    if convert "media/image577.wmf" -background white -flatten "media/image577.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image577.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image577.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image211.wmf
if [ -f "media/image211.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image211.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image211.wmf"
    if convert "media/image211.wmf" -background white -flatten "media/image211.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image211.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image211.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image18.wmf
if [ -f "media/image18.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image18.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image18.wmf"
    if convert "media/image18.wmf" -background white -flatten "media/image18.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image18.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image18.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image205.wmf
if [ -f "media/image205.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image205.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image205.wmf"
    if convert "media/image205.wmf" -background white -flatten "media/image205.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image205.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image205.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image563.wmf
if [ -f "media/image563.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image563.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image563.wmf"
    if convert "media/image563.wmf" -background white -flatten "media/image563.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image563.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image563.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image30.wmf
if [ -f "media/image30.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image30.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image30.wmf"
    if convert "media/image30.wmf" -background white -flatten "media/image30.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image30.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image30.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image24.wmf
if [ -f "media/image24.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image24.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image24.wmf"
    if convert "media/image24.wmf" -background white -flatten "media/image24.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image24.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image24.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image239.wmf
if [ -f "media/image239.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image239.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image239.wmf"
    if convert "media/image239.wmf" -background white -flatten "media/image239.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image239.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image239.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image238.wmf
if [ -f "media/image238.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image238.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image238.wmf"
    if convert "media/image238.wmf" -background white -flatten "media/image238.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image238.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image238.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image25.wmf
if [ -f "media/image25.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image25.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image25.wmf"
    if convert "media/image25.wmf" -background white -flatten "media/image25.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image25.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image25.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image31.wmf
if [ -f "media/image31.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image31.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image31.wmf"
    if convert "media/image31.wmf" -background white -flatten "media/image31.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image31.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image31.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image204.wmf
if [ -f "media/image204.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image204.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image204.wmf"
    if convert "media/image204.wmf" -background white -flatten "media/image204.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image204.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image204.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image562.wmf
if [ -f "media/image562.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image562.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image562.wmf"
    if convert "media/image562.wmf" -background white -flatten "media/image562.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image562.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image562.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image576.wmf
if [ -f "media/image576.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image576.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image576.wmf"
    if convert "media/image576.wmf" -background white -flatten "media/image576.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image576.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image576.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image210.wmf
if [ -f "media/image210.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image210.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image210.wmf"
    if convert "media/image210.wmf" -background white -flatten "media/image210.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image210.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image210.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image589.wmf
if [ -f "media/image589.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image589.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image589.wmf"
    if convert "media/image589.wmf" -background white -flatten "media/image589.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image589.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image589.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image358.wmf
if [ -f "media/image358.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image358.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image358.wmf"
    if convert "media/image358.wmf" -background white -flatten "media/image358.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image358.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image358.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image370.wmf
if [ -f "media/image370.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image370.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image370.wmf"
    if convert "media/image370.wmf" -background white -flatten "media/image370.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image370.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image370.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image416.wmf
if [ -f "media/image416.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image416.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image416.wmf"
    if convert "media/image416.wmf" -background white -flatten "media/image416.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image416.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image416.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image402.wmf
if [ -f "media/image402.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image402.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image402.wmf"
    if convert "media/image402.wmf" -background white -flatten "media/image402.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image402.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image402.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image364.wmf
if [ -f "media/image364.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image364.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image364.wmf"
    if convert "media/image364.wmf" -background white -flatten "media/image364.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image364.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image364.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image172.wmf
if [ -f "media/image172.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image172.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image172.wmf"
    if convert "media/image172.wmf" -background white -flatten "media/image172.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image172.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image172.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image166.wmf
if [ -f "media/image166.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image166.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image166.wmf"
    if convert "media/image166.wmf" -background white -flatten "media/image166.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image166.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image166.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image600.wmf
if [ -f "media/image600.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image600.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image600.wmf"
    if convert "media/image600.wmf" -background white -flatten "media/image600.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image600.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image600.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image199.wmf
if [ -f "media/image199.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image199.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image199.wmf"
    if convert "media/image199.wmf" -background white -flatten "media/image199.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image199.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image199.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image170.wmf
if [ -f "media/image170.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image170.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image170.wmf"
    if convert "media/image170.wmf" -background white -flatten "media/image170.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image170.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image170.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image602.wmf
if [ -f "media/image602.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image602.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image602.wmf"
    if convert "media/image602.wmf" -background white -flatten "media/image602.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image602.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image602.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image164.wmf
if [ -f "media/image164.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image164.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image164.wmf"
    if convert "media/image164.wmf" -background white -flatten "media/image164.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image164.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image164.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image158.wmf
if [ -f "media/image158.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image158.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image158.wmf"
    if convert "media/image158.wmf" -background white -flatten "media/image158.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image158.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image158.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image399.wmf
if [ -f "media/image399.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image399.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image399.wmf"
    if convert "media/image399.wmf" -background white -flatten "media/image399.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image399.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image399.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image414.wmf
if [ -f "media/image414.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image414.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image414.wmf"
    if convert "media/image414.wmf" -background white -flatten "media/image414.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image414.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image414.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image366.wmf
if [ -f "media/image366.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image366.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image366.wmf"
    if convert "media/image366.wmf" -background white -flatten "media/image366.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image366.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image366.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image400.wmf
if [ -f "media/image400.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image400.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image400.wmf"
    if convert "media/image400.wmf" -background white -flatten "media/image400.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image400.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image400.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image428.wmf
if [ -f "media/image428.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image428.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image428.wmf"
    if convert "media/image428.wmf" -background white -flatten "media/image428.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image428.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image428.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image560.wmf
if [ -f "media/image560.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image560.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image560.wmf"
    if convert "media/image560.wmf" -background white -flatten "media/image560.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image560.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image560.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image212.wmf
if [ -f "media/image212.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image212.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image212.wmf"
    if convert "media/image212.wmf" -background white -flatten "media/image212.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image212.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image212.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image574.wmf
if [ -f "media/image574.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image574.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image574.wmf"
    if convert "media/image574.wmf" -background white -flatten "media/image574.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image574.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image574.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image33.wmf
if [ -f "media/image33.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image33.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image33.wmf"
    if convert "media/image33.wmf" -background white -flatten "media/image33.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image33.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image33.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image548.wmf
if [ -f "media/image548.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image548.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image548.wmf"
    if convert "media/image548.wmf" -background white -flatten "media/image548.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image548.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image548.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image32.wmf
if [ -f "media/image32.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image32.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image32.wmf"
    if convert "media/image32.wmf" -background white -flatten "media/image32.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image32.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image32.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image549.wmf
if [ -f "media/image549.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image549.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image549.wmf"
    if convert "media/image549.wmf" -background white -flatten "media/image549.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image549.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image549.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image26.wmf
if [ -f "media/image26.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image26.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image26.wmf"
    if convert "media/image26.wmf" -background white -flatten "media/image26.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image26.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image26.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image213.wmf
if [ -f "media/image213.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image213.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image213.wmf"
    if convert "media/image213.wmf" -background white -flatten "media/image213.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image213.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image213.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image575.wmf
if [ -f "media/image575.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image575.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image575.wmf"
    if convert "media/image575.wmf" -background white -flatten "media/image575.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image575.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image575.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image561.wmf
if [ -f "media/image561.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image561.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image561.wmf"
    if convert "media/image561.wmf" -background white -flatten "media/image561.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image561.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image561.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image207.wmf
if [ -f "media/image207.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image207.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image207.wmf"
    if convert "media/image207.wmf" -background white -flatten "media/image207.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image207.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image207.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image429.wmf
if [ -f "media/image429.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image429.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image429.wmf"
    if convert "media/image429.wmf" -background white -flatten "media/image429.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image429.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image429.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image367.wmf
if [ -f "media/image367.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image367.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image367.wmf"
    if convert "media/image367.wmf" -background white -flatten "media/image367.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image367.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image367.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image401.wmf
if [ -f "media/image401.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image401.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image401.wmf"
    if convert "media/image401.wmf" -background white -flatten "media/image401.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image401.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image401.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image415.wmf
if [ -f "media/image415.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image415.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image415.wmf"
    if convert "media/image415.wmf" -background white -flatten "media/image415.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image415.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image415.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image373.wmf
if [ -f "media/image373.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image373.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image373.wmf"
    if convert "media/image373.wmf" -background white -flatten "media/image373.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image373.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image373.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image398.wmf
if [ -f "media/image398.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image398.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image398.wmf"
    if convert "media/image398.wmf" -background white -flatten "media/image398.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image398.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image398.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image159.wmf
if [ -f "media/image159.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image159.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image159.wmf"
    if convert "media/image159.wmf" -background white -flatten "media/image159.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image159.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image159.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image603.wmf
if [ -f "media/image603.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image603.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image603.wmf"
    if convert "media/image603.wmf" -background white -flatten "media/image603.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image603.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image603.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image165.wmf
if [ -f "media/image165.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image165.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image165.wmf"
    if convert "media/image165.wmf" -background white -flatten "media/image165.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image165.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image165.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

# 转换 image171.wmf
if [ -f "media/image171.png" ]; then
    echo "${YELLOW}⏭️  跳过已存在: image171.wmf${NC}"
    skip_count=$((skip_count + 1))
else
    echo "🔄 转换: image171.wmf"
    if convert "media/image171.wmf" -background white -flatten "media/image171.png" 2>/dev/null; then
        echo "${GREEN}✅ 成功: image171.wmf${NC}"
        success_count=$((success_count + 1))
    else
        echo "${RED}❌ 失败: image171.wmf${NC}"
        fail_count=$((fail_count + 1))
    fi
fi

echo "=================================="
echo "📊 转换完成统计:"
echo "  成功: $success_count"
echo "  失败: $fail_count"  
echo "  跳过: $skip_count"
echo "  总计: 564"

if [ $success_count -gt 0 ]; then
    echo "${GREEN}🎉 转换完成！${NC}"
else
    echo "${RED}😞 没有文件转换成功${NC}"
fi
