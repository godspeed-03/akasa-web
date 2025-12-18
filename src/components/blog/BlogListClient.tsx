"use client";

import { useState } from "react";
import BlogPostCard from "./BlogPostCard";

interface BlogListClientProps {
  initialPosts: Record<string, unknown>[];
}

interface Post {
  _id: string;
  title: string;
  slug: { current: string };
  publishedAt: string;
  excerpt: string;
  mainImage?: unknown;
}

export default function BlogListClient({ initialPosts }: BlogListClientProps) {
  const LIMIT = 10;
  const [posts, setPosts] = useState<Post[]>((initialPosts as unknown as Post[]) || []);
  const [offset, setOffset] = useState(posts.length || 0);
  const [loading, setLoading] = useState(false);
  const [hasMore, setHasMore] = useState(true);
  const [error, setError] = useState<string | null>(null);

  const loadMore = async () => {
    if (loading || !hasMore) return;
    setLoading(true);
    setError(null);
    try {
      const res = await fetch(`/api/blog?offset=${offset}&limit=${LIMIT}`);
      if (!res.ok) throw new Error(`HTTP ${res.status}`);
      const data = await res.json();
      if (!Array.isArray(data)) throw new Error("Invalid response");
      setPosts((p) => [...p, ...data]);
      setOffset((o) => o + data.length);
      if (data.length < LIMIT) setHasMore(false);
    } catch (e: unknown) {
      const msg = e instanceof Error ? e.message : String(e);
      setError(msg || "Failed to load posts");
    } finally {
      setLoading(false);
    }
  };

  return (
    <section className="grid gap-12 grid-cols-1 mt-12">
      {posts.map((post: Post) => (
        <BlogPostCard key={post._id} post={post} />
      ))}

      <div className="flex justify-center mt-8 mb-8">
        {error && <div className="text-red-400 mr-4">{error}</div>}
        {hasMore ? (
          <button
            onClick={loadMore}
            disabled={loading}
            className="bg-gradient-to-r from-red-700 via-[#D4AF37] to-green-700 text-white px-6 py-3 rounded-full shadow-lg hover:scale-105 transition-transform disabled:opacity-60"
          >
            {loading ? "Loading..." : "Load more"}
          </button>
        ) : (
          <div className="text-white/70">No more posts</div>
        )}
      </div>
    </section>
  );
}
