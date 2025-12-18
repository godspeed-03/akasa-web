# Define image mappings - source to destination
$imageMappings = @(
    # Brand images
    @{ Source = "public\images\brand\akasa-logo.svg"; Destination = "public\images\brand\logo.svg" },
    
    # Home page images
    @{ Source = "public\images\home\hero.jpg.webp"; Destination = "public\images\home\hero\hero-home.jpg.webp" },
    @{ Source = "public\images\home\philosophy-bg.jpg.webp"; Destination = "public\images\home\philosophy\background.jpg.webp" },
    @{ Source = "public\images\home\drink.jpg.webp"; Destination = "public\images\home\philosophy\drink.jpg.webp" },
    @{ Source = "public\images\home\whats-happening.jpg.webp"; Destination = "public\images\home\whats-happening\main.jpg.webp" },
    @{ Source = "public\images\home\whats-happening-bg.jpg.webp"; Destination = "public\images\home\whats-happening\background.jpg.webp" },
    @{ Source = "public\images\home\testimonial.jpg.webp"; Destination = "public\images\home\testimonials\background.jpg.webp" },
    @{ Source = "public\images\home\awards.jpg.webp"; Destination = "public\images\home\gallery\awards.jpg.webp" },
    @{ Source = "public\images\home\location.jpg.webp"; Destination = "public\images\home\gallery\location.jpg.webp" },
    
    # Menu page images
    @{ Source = "public\images\menu\chef-portrait.jpg.webp"; Destination = "public\images\menu\chef\portrait.jpg.webp" },
    @{ Source = "public\images\menu\chef.jpg.webp"; Destination = "public\images\menu\chef\background.jpg.webp" },
    @{ Source = "public\images\menu\gallery1.jpg.webp"; Destination = "public\images\menu\hero\gallery-1.jpg.webp" },
    @{ Source = "public\images\menu\gallery2.jpg.webp"; Destination = "public\images\menu\hero\gallery-2.jpg.webp" },
    @{ Source = "public\images\menu\gallery3.jpg.webp"; Destination = "public\images\menu\hero\gallery-3.jpg.webp" },
    @{ Source = "public\images\menu\gallery5.jpg.webp"; Destination = "public\images\menu\hero\gallery-5.jpg.webp" },
    @{ Source = "public\images\menu\gallery6.jpg.webp"; Destination = "public\images\menu\hero\gallery-6.jpg.webp" },
    
    # A La Carte menu images
    @{ Source = "public\images\menu\a-la-carte\hero-a-la-carte.jpg.webp"; Destination = "public\images\menu\a-la-carte\hero\hero.jpg.webp" },
    
    # Bar Bites menu images
    @{ Source = "public\images\menu\bar-bites\hero-bar-bites.jpg.webp"; Destination = "public\images\menu\bar-bites\hero\hero.jpg.webp" },
    @{ Source = "public\images\menu\hero-bar-bites.jpg.webp"; Destination = "public\images\menu\bar-bites\hero\hero-alt.jpg.webp" },
    
    # Drinks menu images
    @{ Source = "public\images\menu\drinks\hero-drinks.jpg.webp"; Destination = "public\images\menu\drinks\hero\hero.jpg.webp" },
    
    # Set Lunch menu images
    @{ Source = "public\images\menu\set-lunch\hero-set-lunch.jpg.webp"; Destination = "public\images\menu\set-lunch\hero\hero.jpg.webp" },
    
    # Soul Food Weekends menu images
    @{ Source = "public\images\menu\soul-food-weekends\hero-soul-food-weekends.jpg.webp"; Destination = "public\images\menu\soul-food-weekends\hero\hero.jpg.webp" },
    
    # Featured dishes images
    @{ Source = "public\images\menu\featured-dishes\akasa-e-dum-biryani.jpg.webp"; Destination = "public\images\menu\featured-dishes\akasa-e-dum-biryani.jpg.webp" },
    @{ Source = "public\images\menu\featured-dishes\akasa-e-lobster.jpg.webp"; Destination = "public\images\menu\featured-dishes\akasa-e-lobster.jpg.webp" },
    @{ Source = "public\images\menu\featured-dishes\dal-e-akasa.jpg.webp"; Destination = "public\images\menu\featured-dishes\dal-e-akasa.jpg.webp" },
    @{ Source = "public\images\menu\featured-dishes\paronthia-naan.jpg.webp"; Destination = "public\images\menu\featured-dishes\paronthia-naan.jpg.webp" },
    @{ Source = "public\images\menu\featured-dishes\tandoori-pomfret-kebab.jpg.webp"; Destination = "public\images\menu\featured-dishes\tandoori-pomfret-kebab.jpg.webp" },
    @{ Source = "public\images\menu\featured-dishes\tandoori-prawns.jpg.webp"; Destination = "public\images\menu\featured-dishes\tandoori-prawns.jpg.webp" },
    
    # Events page images
    @{ Source = "public\images\events\event3.jpg.webp"; Destination = "public\images\events\hero\hero.jpg.webp" },
    @{ Source = "public\images\events\gallery4.jpg.webp"; Destination = "public\images\events\listings\event-1.jpg.webp" },
    @{ Source = "public\images\unused\gallery1.jpg.webp"; Destination = "public\images\events\listings\event-2.jpg.webp" },
    @{ Source = "public\images\unused\gallery3.jpg.webp"; Destination = "public\images\events\listings\event-3.jpg.webp" },
    
    # Offers page images
    @{ Source = "public\images\offers\gallery5.jpg.webp"; Destination = "public\images\offers\hero\hero.jpg.webp" },
    @{ Source = "public\images\offers\gallery1.jpg.webp"; Destination = "public\images\offers\promotions\weekday-lunch.jpg.webp" },
    @{ Source = "public\images\unused\gallery2.jpg.webp"; Destination = "public\images\offers\promotions\anniversary.jpg.webp" },
    
    # Reservations page images
    @{ Source = "public\images\reservations\gallery3.jpg.webp"; Destination = "public\images\reservations\hero\hero.jpg.webp" },
    
    # Testimonials images
    @{ Source = "public\images\testimonials\avatar1.jpg.webp"; Destination = "public\images\home\testimonials\avatar-1.jpg.webp" },
    @{ Source = "public\images\testimonials\avatar2.jpg.webp"; Destination = "public\images\home\testimonials\avatar-2.jpg.webp" },
    @{ Source = "public\images\testimonials\avatar3.jpg.webp"; Destination = "public\images\home\testimonials\avatar-3.jpg.webp" },
    @{ Source = "public\images\testimonials\testimonial-bg.jpg.webp"; Destination = "public\images\home\testimonials\background-alt.jpg.webp" },
    
    # Common images
    @{ Source = "public\images\common\footer-bg.jpg.webp"; Destination = "public\images\common\footer-background.jpg.webp" }
)

# Copy images to their new locations
foreach ($mapping in $imageMappings) {
    $source = $mapping.Source
    $destination = $mapping.Destination
    
    if (Test-Path $source) {
        # Create destination directory if it doesn't exist
        $destinationDir = Split-Path -Path $destination -Parent
        if (-not (Test-Path $destinationDir)) {
            New-Item -Path $destinationDir -ItemType Directory -Force | Out-Null
        }
        
        # Copy the file
        Copy-Item -Path $source -Destination $destination -Force
        Write-Host "Copied: $source -> $destination"
    } else {
        Write-Host "Source file not found: $source" -ForegroundColor Yellow
    }
}
