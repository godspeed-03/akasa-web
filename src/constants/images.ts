/**
 * Images Constants
 * 
 * This file contains image-related constants used throughout the application.
 */

/**
 * Image quality and sizes
 */
export const IMAGES = {
  /**
   * Default quality for images (balanced for performance and quality)
   */
  DEFAULT_QUALITY: 70,
  
  /**
   * High quality for important images
   */
  HIGH_QUALITY: 70,
  
  /**
   * Low quality for background images
   */
  LOW_QUALITY: 70,
  
  /**
   * Quality for AVIF format
   */
  AVIF_QUALITY: 70,
  
  /**
   * Quality for WebP format
   */
  WEBP_QUALITY: 70,
  
  /**
   * Quality for JPEG format
   */
  JPEG_QUALITY: 70,
  
  /**
   * Standard image sizes
   */
  SIZES: {
    SMALL: 16,
    MEDIUM: 32,
    LARGE: 64,
    XLARGE: 128,
  },
  
  /**
   * Image formats
   */
  FORMATS: {
    AVIF: 'image/avif',
    WEBP: 'image/webp',
    JPEG: 'image/jpeg',
    PNG: 'image/png',
  },
};

/**
 * Logo dimensions
 */
export const LOGO = {
  SIZES: {
    SMALL: { width: 250, height: 100 },
    MEDIUM: { width: 350, height: 140 },
    LARGE: { width: 450, height: 180 },
    DESKTOP: { width: 500, height: 200 },
    MOBILE: { width: 300, height: 120 },
  },
};
