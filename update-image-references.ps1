# Define path mappings - old path to new path
$pathMappings = @(
    # Brand images
    @{ OldPath = "/images/brand/akasa-logo.svg"; NewPath = "/images/brand/logo.svg" },
    
    # Home page images
    @{ OldPath = "/images/home/hero.jpg.webp"; NewPath = "/images/home/hero/hero-home.jpg.webp" },
    @{ OldPath = "/images/home/philosophy-bg.jpg.webp"; NewPath = "/images/home/philosophy/background.jpg.webp" },
    @{ OldPath = "/images/home/drink.jpg.webp"; NewPath = "/images/home/philosophy/drink.jpg.webp" },
    @{ OldPath = "/images/home/whats-happening.jpg.webp"; NewPath = "/images/home/whats-happening/main.jpg.webp" },
    @{ OldPath = "/images/home/whats-happening-bg.jpg.webp"; NewPath = "/images/home/whats-happening/background.jpg.webp" },
    @{ OldPath = "/images/home/testimonial.jpg.webp"; NewPath = "/images/home/testimonials/background.jpg.webp" },
    @{ OldPath = "/images/home/awards.jpg.webp"; NewPath = "/images/home/gallery/awards.jpg.webp" },
    @{ OldPath = "/images/home/location.jpg.webp"; NewPath = "/images/home/gallery/location.jpg.webp" },
    
    # Menu page images
    @{ OldPath = "/images/menu/chef-portrait.jpg.webp"; NewPath = "/images/menu/chef/portrait.jpg.webp" },
    @{ OldPath = "/images/menu/chef.jpg.webp"; NewPath = "/images/menu/chef/background.jpg.webp" },
    @{ OldPath = "/images/menu/gallery1.jpg.webp"; NewPath = "/images/menu/hero/gallery-1.jpg.webp" },
    @{ OldPath = "/images/menu/gallery2.jpg.webp"; NewPath = "/images/menu/hero/gallery-2.jpg.webp" },
    @{ OldPath = "/images/menu/gallery3.jpg.webp"; NewPath = "/images/menu/hero/gallery-3.jpg.webp" },
    @{ OldPath = "/images/menu/gallery5.jpg.webp"; NewPath = "/images/menu/hero/gallery-5.jpg.webp" },
    @{ OldPath = "/images/menu/gallery6.jpg.webp"; NewPath = "/images/menu/hero/gallery-6.jpg.webp" },
    
    # A La Carte menu images
    @{ OldPath = "/images/menu/a-la-carte/hero-a-la-carte.jpg.webp"; NewPath = "/images/menu/a-la-carte/hero/hero.jpg.webp" },
    
    # Bar Bites menu images
    @{ OldPath = "/images/menu/bar-bites/hero-bar-bites.jpg.webp"; NewPath = "/images/menu/bar-bites/hero/hero.jpg.webp" },
    @{ OldPath = "/images/menu/hero-bar-bites.jpg.webp"; NewPath = "/images/menu/bar-bites/hero/hero-alt.jpg.webp" },
    
    # Drinks menu images
    @{ OldPath = "/images/menu/drinks/hero-drinks.jpg.webp"; NewPath = "/images/menu/drinks/hero/hero.jpg.webp" },
    
    # Set Lunch menu images
    @{ OldPath = "/images/menu/set-lunch/hero-set-lunch.jpg.webp"; NewPath = "/images/menu/set-lunch/hero/hero.jpg.webp" },
    
    # Soul Food Weekends menu images
    @{ OldPath = "/images/menu/soul-food-weekends/hero-soul-food-weekends.jpg.webp"; NewPath = "/images/menu/soul-food-weekends/hero/hero.jpg.webp" },
    
    # Events page images
    @{ OldPath = "/images/events/event3.jpg.webp"; NewPath = "/images/events/hero/hero.jpg.webp" },
    @{ OldPath = "/images/events/gallery4.jpg.webp"; NewPath = "/images/events/listings/event-1.jpg.webp" },
    @{ OldPath = "/images/unused/gallery1.jpg.webp"; NewPath = "/images/events/listings/event-2.jpg.webp" },
    @{ OldPath = "/images/unused/gallery3.jpg.webp"; NewPath = "/images/events/listings/event-3.jpg.webp" },
    
    # Offers page images
    @{ OldPath = "/images/offers/gallery5.jpg.webp"; NewPath = "/images/offers/hero/hero.jpg.webp" },
    @{ OldPath = "/images/offers/gallery1.jpg.webp"; NewPath = "/images/offers/promotions/weekday-lunch.jpg.webp" },
    @{ OldPath = "/images/menu/gallery2.jpg.webp"; NewPath = "/images/offers/promotions/anniversary.jpg.webp" },
    
    # Reservations page images
    @{ OldPath = "/images/reservations/gallery3.jpg.webp"; NewPath = "/images/reservations/hero/hero.jpg.webp" },
    
    # Testimonials images
    @{ OldPath = "/images/testimonials/avatar1.jpg.webp"; NewPath = "/images/home/testimonials/avatar-1.jpg.webp" },
    @{ OldPath = "/images/testimonials/avatar2.jpg.webp"; NewPath = "/images/home/testimonials/avatar-2.jpg.webp" },
    @{ OldPath = "/images/testimonials/avatar3.jpg.webp"; NewPath = "/images/home/testimonials/avatar-3.jpg.webp" },
    @{ OldPath = "/images/testimonials/testimonial-bg.jpg.webp"; NewPath = "/images/home/testimonials/background-alt.jpg.webp" },
    
    # Common images
    @{ OldPath = "/images/common/footer-bg.jpg.webp"; NewPath = "/images/common/footer-background.jpg.webp" }
)

# Get all TypeScript and CSS files
$files = Get-ChildItem -Path "src" -Recurse -Include "*.tsx", "*.ts", "*.css", "*.scss" | Where-Object { -not $_.PSIsContainer }

# Process each file
foreach ($file in $files) {
    $content = Get-Content -Path $file.FullName -Raw
    $originalContent = $content
    $modified = $false
    
    # Apply each path mapping
    foreach ($mapping in $pathMappings) {
        $oldPath = $mapping.OldPath
        $newPath = $mapping.NewPath
        
        if ($content -match [regex]::Escape($oldPath)) {
            $content = $content -replace [regex]::Escape($oldPath), $newPath
            $modified = $true
        }
    }
    
    # Save the file if it was modified
    if ($modified) {
        Set-Content -Path $file.FullName -Value $content
        Write-Host "Updated: $($file.FullName)"
    }
}

# Also update CSS background-image URLs
$cssFiles = Get-ChildItem -Path "src", "public" -Recurse -Include "*.css", "*.scss" | Where-Object { -not $_.PSIsContainer }

foreach ($file in $cssFiles) {
    $content = Get-Content -Path $file.FullName -Raw
    $originalContent = $content
    $modified = $false
    
    # Apply each path mapping for background-image URLs
    foreach ($mapping in $pathMappings) {
        $oldPath = $mapping.OldPath
        $newPath = $mapping.NewPath
        
        # Match background-image: url('/images/...')
        $pattern = "background-image:\s*url\(['""]" + [regex]::Escape($oldPath) + "['""]"
        $replacement = "background-image: url('$newPath'"
        
        if ($content -match $pattern) {
            $content = $content -replace $pattern, $replacement
            $modified = $true
        }
        
        # Match background: url('/images/...')
        $pattern = "background:\s*url\(['""]" + [regex]::Escape($oldPath) + "['""]"
        $replacement = "background: url('$newPath'"
        
        if ($content -match $pattern) {
            $content = $content -replace $pattern, $replacement
            $modified = $true
        }
        
        # Match background-[url('/images/...')]
        $pattern = "background-\[url\(['""]" + [regex]::Escape($oldPath) + "['""]"
        $replacement = "background-[url('$newPath'"
        
        if ($content -match $pattern) {
            $content = $content -replace $pattern, $replacement
            $modified = $true
        }
    }
    
    # Save the file if it was modified
    if ($modified) {
        Set-Content -Path $file.FullName -Value $content
        Write-Host "Updated CSS: $($file.FullName)"
    }
}
