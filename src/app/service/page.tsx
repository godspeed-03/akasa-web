import { sanityClient } from "@/utils/sanityClient";
import BlogHeroSection from "@/components/blog/BlogHeroSection"; // Import the new hero component
import ServiceListClient from "@/components/blog/ServiceListClient";

export const revalidate = 60; // cache page for 60 seconds (ISR)

export default async function BlogPage() {
  const query = `*[_type == "service"] | order(publishedAt desc){
    _id,
    title,
    slug,
    publishedAt,
    excerpt,
    mainImage
  }`;
  const service = await sanityClient.fetch(query);

  return (
    <>
      <BlogHeroSection
        bannerSrc="/images/blog/hero/hero.jpg.webp"
        title="Our Services"
        desc="Explore our services, culinary insights, and stories from Akasa"
      />
      <main className="container mx-auto px-4 py-12 md:px-8 lg:px-16">
        {/* Re-added container and padding to main */}
        <ServiceListClient initialPosts={service} />
      </main>
    </>
  );
}
