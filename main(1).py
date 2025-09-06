import os
import subprocess
import tempfile

def install_dependencies():
    """检查并安装必要的依赖库"""
    # 检查libreoffice是否已安装
    try:
        subprocess.run(["which", "soffice"], check=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
        print("libreoffice已安装")
    except subprocess.CalledProcessError:
        print("正在安装libreoffice...")
        try:
            subprocess.run(["brew", "install", "libreoffice"], check=True)
            print("libreoffice安装成功")
        except subprocess.CalledProcessError:
            print("安装失败，请手动安装libreoffice")
            print("安装命令: brew install libreoffice")
            return False

    # 检查Ghostscript是否已安装
    try:
        subprocess.run(["which", "gs"], check=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
        print("Ghostscript已安装")
    except subprocess.CalledProcessError:
        print("正在安装Ghostscript...")
        try:
            subprocess.run(["brew", "install", "ghostscript"], check=True)
            print("Ghostscript安装成功")
        except subprocess.CalledProcessError:
            print("安装失败，请手动安装Ghostscript")
            print("安装命令: brew install ghostscript")
            return False

    # 检查ImageMagick是否已安装
    try:
        subprocess.run(["which", "magick"], check=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
        print("ImageMagick已安装")
    except subprocess.CalledProcessError:
        print("正在安装ImageMagick...")
        try:
            subprocess.run(["brew", "install", "imagemagick"], check=True)
            print("ImageMagick安装成功")
        except subprocess.CalledProcessError:
            print("安装失败，请手动安装ImageMagick")
            print("安装命令: brew install imagemagick")
            return False

    return True


def wmf_to_image(wmf_path, output_path, format='PNG'):
    """
    将WMF文件转换为指定格式的图片

    参数:
        wmf_path (str): WMF文件的路径
        output_path (str): 输出图片的路径
        format (str): 输出图片格式，如'PNG'、'JPG'等
    """
    # 检查输入文件是否存在
    if not os.path.exists(wmf_path):
        raise FileNotFoundError(f"WMF文件不存在: {wmf_path}")

    # 创建临时目录
    with tempfile.TemporaryDirectory() as temp_dir:
        try:
            # 获取文件名和扩展名
            file_name = os.path.basename(wmf_path)
            file_base = os.path.splitext(file_name)[0]

            # 使用LibreOffice转换为PDF
            result = subprocess.run(
                [
                    "soffice",
                    "--headless",
                    "--convert-to", "pdf",
                    "--outdir", temp_dir,
                    wmf_path
                ],
                stdout=subprocess.PIPE,
                stderr=subprocess.PIPE,
                text=True
            )

            if result.returncode != 0:
                raise RuntimeError(f"LibreOffice转换为PDF失败: {result.stderr}")

            # 检查PDF是否生成
            pdf_path = os.path.join(temp_dir, f"{file_base}.pdf")
            if not os.path.exists(pdf_path):
                raise FileNotFoundError(f"PDF转换产物未找到: {pdf_path}")

            # 使用convert命令将PDF转换为目标格式
            result = subprocess.run(
                ["magick", pdf_path, output_path],
                stdout=subprocess.PIPE,
                stderr=subprocess.PIPE,
                text=True
            )

            if result.returncode != 0:
                raise RuntimeError(f"转换PDF为{format}失败: {result.stderr}")

            print(f"成功转换为{format}: {output_path}")

        except Exception as e:
            print(f"转换失败: {str(e)}")
            raise


if __name__ == "__main__":
    # 安装依赖
    if not install_dependencies():
        exit(1)

    # 示例用法 - 请替换为你的文件路径
    input_wmf = "222.wmf"  # 替换为你的WMF文件路径
    output_png = "output.png"  # 输出PNG文件路径
    output_jpg = "output.jpg"  # 输出JPG文件路径

    # 确保输入文件存在
    if not os.path.exists(input_wmf):
        print(f"错误: 找不到输入文件 {input_wmf}")
        print("请检查文件路径是否正确")
        exit(1)

    # 转换为PNG
    wmf_to_image(input_wmf, output_png, "PNG")

    # 转换为JPG
    wmf_to_image(input_wmf, output_jpg, "JPG")
