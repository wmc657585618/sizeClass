//
//  UIView+HiFrameLayout.m
//  frameLayoutAndSizeClass
//
//  Created by four on 2018/12/7.
//  Copyright © 2018 four. All rights reserved.
//

#import "UIView+HiFrameLayout.h"

@implementation UIView (HiFrameLayout)

- (HiLayoutFrameItem *)hi_frame_width {
    return [[HiLayoutFrameItem alloc] initWith:self attribute:NSLayoutAttributeWidth];
}

- (HiLayoutFrameItem *)hi_frame_height {
    return [[HiLayoutFrameItem alloc] initWith:self attribute:NSLayoutAttributeHeight];
}

- (HiLayoutFrameItem *)hi_frame_top {
    return [[HiLayoutFrameItem alloc] initWith:self attribute:NSLayoutAttributeTop];
}

- (HiLayoutFrameItem *)hi_frame_bottom {
    return [[HiLayoutFrameItem alloc] initWith:self attribute:NSLayoutAttributeBottom];
}

- (HiLayoutFrameItem *)hi_frame_leading {
    return [[HiLayoutFrameItem alloc] initWith:self attribute:NSLayoutAttributeLeading];
}

- (HiLayoutFrameItem *)hi_frame_trailing {
    return [[HiLayoutFrameItem alloc] initWith:self attribute:NSLayoutAttributeTrailing];
}

- (HiLayoutFrameItem *)hi_frame_centerX {
    return [[HiLayoutFrameItem alloc] initWith:self attribute:NSLayoutAttributeCenterX];
}

- (HiLayoutFrameItem *)hi_frame_centerY {
    return [[HiLayoutFrameItem alloc] initWith:self attribute:NSLayoutAttributeCenterY];
}

@end
