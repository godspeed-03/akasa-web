import dynamic from "next/dynamic";
import Link from "next/link";
import BrandPhilosophy from "@/components/home/BrandPhilosophy";
import TestimonialsSection from "@/components/home/TestimonialsSection";
import LocationSection from "@/components/home/LocationSection";

// dynamic imports for client-only pieces
const MenusSection = dynamic(() => import("@/components/menu/MenusSection"), {
  loading: () => <div className="h-[50vh] bg-black"></div>,
});
const FlavorExperienceSection = dynamic(() => import("@/components/menu/FlavorExperienceSection"), {
  loading: () => <div className="h-[50vh] bg-black"></div>,
});


export default function LandingRestaurantPage() {
  return (
    <main className="min-h-screen bg-black text-white">
      {/* Hero / Reservation top */}
      <section className="relative pt-20 pb-12">
        <div className="absolute inset-0 opacity-10 bg-[radial-gradient(ellipse_at_top_right,_var(--tw-gradient-stops))] from-[#E6C78B] to-transparent" />

        <div className="container mx-auto px-4 md:px-8 relative z-10">
          <div className="grid grid-cols-1 lg:grid-cols-2 gap-12 items-start">
            <div className="pt-6">
              <h1 className="text-4xl md:text-5xl lg:text-6xl font-playfair text-white mb-4">
                Fine dining Indian restaurant Singapore
              </h1>

              <p className="text-lg text-white/80 font-montserrat mb-6 max-w-2xl">
                Discover Akasa — a refined Indian fine dining Singapore destination on Robinson Road. Enjoy signature
                North Indian flavors, vegetarian fine dining options, and weekend Saturday brunch experiences. Looking
                for "Indian restaurant near me" or the "best north indian restaurant sg"? You found us.
              </p>

              <div className="flex flex-wrap gap-3 mt-6">
                <span className="text-sm bg-[#1A2430] px-4 py-2 rounded-full">Indian fine dining Singapore</span>
                <span className="text-sm bg-[#1A2430] px-4 py-2 rounded-full">vegetarian restaurant Singapore</span>
                <span className="text-sm bg-[#1A2430] px-4 py-2 rounded-full">Saturday brunch Singapore</span>
              </div>
            </div>

            {/* Reservation slot moved to layout - page shows content only */}
            <iframe
              src="https://widget.quandoo.sg/widget/reservation/merchant/HUsUS?aid=2&countryId=SGP"
              width="100%"
              height="550px"
              frameBorder="0"
              title="Quandoo Reservations"
              style={{ marginBottom: "2rem" }}
              sandbox="allow-scripts allow-same-origin allow-forms allow-popups allow-popups-to-escape-sandbox"
              loading="lazy"
            ></iframe>
          </div>
        </div>
      </section>

      {/* Brand philosophy */}
      <section className="py-12">
        <div className="container mx-auto px-4 md:px-8">
          <BrandPhilosophy />
        </div>
      </section>

      {/* Testimonials */}
      <section className="py-12 bg-gradient-to-b from-black/95 to-black/90">
        <div className="container mx-auto px-4 md:px-8">
          <h2 className="text-3xl md:text-4xl font-playfair text-[#E6C78B] mb-6 text-center">What diners say</h2>
          <TestimonialsSection />
        </div>
      </section>

      {/* Menus */}
      <section className="py-12">
        <div className="container mx-auto px-4 md:px-8">
          <h2 className="text-3xl md:text-4xl font-playfair text-[#E6C78B] mb-6 text-center">Our Menus</h2>
          <MenusSection />
        </div>
      </section>

      {/* Flavor Experience */}
      <section className="py-12 bg-black/95">
        <div className="container mx-auto px-4 md:px-8">
          <FlavorExperienceSection />
        </div>
      </section>

      {/* Loyalty & Offers snippet */}
      <section className="py-12">
        <div className="container mx-auto px-4 md:px-8">
          <div className="grid grid-cols-1 md:grid-cols-2 gap-8 items-start">
            <div className="bg-black/80 border border-white/5 rounded-2xl p-6">
              <h3 className="text-2xl font-playfair mb-3">Join our Loyalty Program</h3>
              <p className="text-white/80 mb-4">
                Earn rewards every time you dine. Exclusive benefits for repeat guests.
              </p>
              <Link
                href="/loyalty-program"
                className="inline-block bg-gradient-to-r from-red-700 via-[#E6C78B] to-green-700 px-6 py-3 rounded-full text-white"
              >
                Learn more
              </Link>
            </div>

            <div className="bg-black/80 border border-white/5 rounded-2xl p-6">
              <h3 className="text-2xl font-playfair mb-3">Latest Offers</h3>
              <p className="text-white/80 mb-4">
                Seasonal menus, weekend deals and festive specials — check our offers.
              </p>
              <Link
                href="/offers"
                className="inline-block bg-gradient-to-r from-red-700 via-[#E6C78B] to-green-700 px-6 py-3 rounded-full text-white"
              >
                View offers
              </Link>
            </div>
          </div>
        </div>
      </section>

      {/* Location & Contact */}
      <section className="py-12 bg-gradient-to-b from-black/95 to-black/90">
        <div className="container mx-auto px-4 md:px-8">
          <LocationSection />
        </div>
      </section>
    </main>
  );
}
