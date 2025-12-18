import { NextResponse } from "next/server";
import { sanityClient } from "@/utils/sanityClient";

export async function GET(request: Request) {
  try {
    const url = new URL(request.url);
    const offset = parseInt(url.searchParams.get("offset") || "0", 10);
    const limit = parseInt(url.searchParams.get("limit") || "10", 10);

    const start = Math.max(0, offset);
    const end = start + Math.max(1, limit);

    const query = `*[_type == "post"] | order(publishedAt desc)[${start}...${end}]{
      _id,
      title,
      slug,
      publishedAt,
      excerpt,
      mainImage
    }`;

    const posts = await sanityClient.fetch(query);
    return NextResponse.json(posts, { status: 200 });
  } catch (err) {
    console.error("/api/blog error:", err);
    return NextResponse.json({ error: "Failed to fetch posts" }, { status: 500 });
  }
}
