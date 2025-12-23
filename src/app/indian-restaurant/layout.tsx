import { generateMetadata } from "@/utils/seo";
import { Metadata } from "next";
import React from "react";
// import dynamic from "next/dynamic";
import Navigation from "@/components/home/Navigation";
import Footer from "@/components/home/Footer";

export const metadata: Metadata = generateMetadata({
  title: "Akasa - Fine Dining Indian Restaurant Singapore | Reservations",
  description:
    "Akasa is a fine dining Indian restaurant in Singapore offering North Indian specialties, vegetarian fine dining options and Saturday brunch. Book a table online or contact us.",
  url: "landing-restaurant",
  keywords:
    "fine dining indian restaurant Singapore, north indian restaurant Singapore, best north indian restaurant sg, indian restaurant near me, indian fine dining Singapore, vegetarian fine dining Singapore, restaurant robinson road, saturday brunch Singapore",
});

// Client-only reservation widget
// const ReservationForm = dynamic(() => import("@/components/reservations/ReservationForm"), { ssr: false });

export default function Layout({ children }: Readonly<{ children: React.ReactNode }>) {
  return (
    <>
      <Navigation />

      {/* Floating reservation on desktop, inline on mobile above content */}
      <div className="relative">

        <main>{children}</main>
      </div>

      <Footer />
    </>
  );
}
