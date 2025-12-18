import os
from PIL import Image

# Base directory for images
BASE_DIR = "public"

# List of image paths relative to BASE_DIR
missing_images = [
    "images/chef/hero/hero.jpg.webp",
    "images/common/footer-bg.jpg.webp",
    "images/events/event3.jpg.webp",
    "images/events/gallery4.jpg.webp",
    "images/events/hero/hero.jpg.webp",
    "images/home/drink.jpg.webp",
    "images/home/hero/hero.jpg.webp",
    "images/home/location.jpg.webp",
    "images/home/philosophy-bg.jpg.webp",
    "images/home/whats-happening-bg.jpg.webp",
    "images/home/whats-happening.jpg.webp",
    "images/home/gallery/gallery1.jpg.webp",
    "images/home/gallery/gallery2.jpg.webp",
    "images/home/gallery/gallery3.jpg.webp",
    "images/home/gallery/gallery4.jpg.webp",
    "images/home/gallery/gallery5.jpg.webp",
    "images/home/philosophy/background.jpg.webp",
    "images/home/philosophy/drink.jpg.webp",
    "images/home/testimonials/avatar-2.jpg.webp",
    "images/offers/gallery1.jpg.webp",
    "images/offers/gallery5.jpg.webp",
    "images/reservations/gallery3.jpg.webp",
    "images/testimonials/testimonial-bg.jpg.webp",
    "images/unused/chef.jpg.webp",
    "images/unused/drink.jpg.webp",
    "images/unused/gallery1.jpg.webp",
    "images/unused/gallery2.jpg.webp",
    "images/unused/gallery3.jpg.webp",
    "images/unused/gallery5.jpg.webp",
    "images/unused/gallery6.jpg.webp",
    "images/unused/hero.jpg.webp",
    "images/unused/texture-bg-1.jpg.webp",
    "images/unused/texture-bg-2.jpg.webp",
]

def convert_image(file_path):
    base, ext = os.path.splitext(file_path)
    avif_path = base + ".avif"
    webp_path = base + ".webp"

    if os.path.exists(avif_path) or os.path.exists(webp_path):
        print(f"Skipping {file_path} — AVIF or WebP already exists.")
        return

    try:
        with Image.open(file_path) as img:
            img.save(avif_path, format="AVIF")
            print(f"Saved AVIF: {avif_path}")

            img.save(webp_path, format="WEBP", quality=80)
            print(f"Saved WebP: {webp_path}")

    except Exception as e:
        print(f"Failed to convert {file_path}: {e}")

def main():
    for rel_path in missing_images:
        full_path = os.path.join(BASE_DIR, rel_path)
        if os.path.exists(full_path):
            convert_image(full_path)
        else:
            print(f"File not found: {full_path}")

if __name__ == "__main__":
    main()
