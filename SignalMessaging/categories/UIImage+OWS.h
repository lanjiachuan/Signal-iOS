//
//  Copyright (c) 2017 Open Whisper Systems. All rights reserved.
//

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (normalizeImage)

- (UIImage *)normalizedImage;
- (UIImage *)resizedWithQuality:(CGInterpolationQuality)quality rate:(CGFloat)rate;

- (UIImage *)resizedImageToSize:(CGSize)dstSize;
- (UIImage *)resizedImageToFillPixelSize:(CGSize)boundingSize;

+ (UIImage *)imageWithColor:(UIColor *)color;
+ (UIImage *)imageWithColor:(UIColor *)color size:(CGSize)size;

@end

NS_ASSUME_NONNULL_END
