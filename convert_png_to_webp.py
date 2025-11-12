# 文件名：convert_images_to_webp.py
# 功能：批量将 PNG/JPG/JPEG 转 WebP（保留透明），删除原图并更新 Markdown 链接
# 使用方法：python convert_images_to_webp_preserve_alpha.py
# 前提：安装 Python + Pillow（pip install pillow）

from PIL import Image
import os
import re

# 配置 MkDocs 项目根目录
DOCS_DIR = "./docs"  # images/ 和 md 文件所在根目录
QUALITY = 100        # 图片质量 (0-100)，100 为最佳质量

def convert_images_to_webp():
    print("🔹 开始批量转换 PNG/JPG → WebP 并删除原图...")
    count = 0
    for subdir, _, files in os.walk(DOCS_DIR):
        for f in files:
            ext = f.lower().split('.')[-1]
            if ext in ["png", "jpg", "jpeg"]:
                orig_path = os.path.join(subdir, f)
                webp_path = os.path.splitext(orig_path)[0] + ".webp"
                try:
                    img = Image.open(orig_path)
                    
                    # 保留透明通道
                    if img.mode in ("RGBA", "LA") or (ext=="png" and "transparency" in img.info):
                        img.save(webp_path, "webp", quality=QUALITY, lossless=True)
                    else:
                        img.convert("RGB").save(webp_path, "webp", quality=QUALITY)
                    
                    os.remove(orig_path)  # 删除原图
                    print(f"✅ 转换并删除: {orig_path} → {webp_path}")
                    count += 1
                except Exception as e:
                    print(f"❌ 转换失败: {orig_path}，错误: {e}")
    print(f"🎉 总共处理 {count} 张图片。")

def update_markdown_links():
    print("🔹 开始批量更新 Markdown 图片链接为 .webp ...")
    md_count = 0
    for subdir, _, files in os.walk(DOCS_DIR):
        for f in files:
            if f.lower().endswith(".md"):
                md_path = os.path.join(subdir, f)
                with open(md_path, "r", encoding="utf-8") as file:
                    content = file.read()
                # 替换 .png, .jpg, .jpeg 为 .webp
                new_content = re.sub(r"\.(png|jpg|jpeg)\)", ".webp)", content, flags=re.IGNORECASE)
                if new_content != content:
                    with open(md_path, "w", encoding="utf-8") as file:
                        file.write(new_content)
                    print(f"✅ 更新 Markdown: {md_path}")
                    md_count += 1
    print(f"🎉 总共更新 {md_count} 个 Markdown 文件。")

if __name__ == "__main__":
    convert_images_to_webp()
    update_markdown_links()
    print("✅ 所有操作完成，请检查 MkDocs 项目效果。")
