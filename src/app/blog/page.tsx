import { sanityClient } from "@/utils/sanityClient";
import BlogHeroSection from "@/components/blog/BlogHeroSection"; // Import the new hero component
import BlogListClient from "@/components/blog/BlogListClient";

export const revalidate = 60; // cache page for 60 seconds (ISR)

export default async function BlogPage() {
  const query = `*[_type == "post"] | order(publishedAt desc)[0...10]{
    _id,
    title,
    slug,
    publishedAt,
    excerpt,
    mainImage
  }`;
  const posts = await sanityClient.fetch(query);

  return (
    <>
      <BlogHeroSection
        bannerSrc="/images/blog/hero/hero.jpg.webp"
        title="Our Blogs"
        desc="Explore our latest articles, culinary insights, and stories from Akasa"
      />{" "}
      {/* Use the new hero component */}
      <main className="container mx-auto px-4 py-12 md:px-8 lg:px-16">
        {/* Re-added container and padding to main */}
        <BlogListClient initialPosts={posts} />
      </main>
    </>
  );
}
