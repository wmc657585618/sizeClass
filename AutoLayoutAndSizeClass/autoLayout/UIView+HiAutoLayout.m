//
//  UIView+HiAutoLayout.m
//  AutoLayoutAndSizeClass
//
//  Created by four on 2018/12/7.
//  Copyright © 2018 four. All rights reserved.
//

#import "UIView+HiAutoLayout.h"

@implementation UIView (HiAutoLayout)

- (HiLayoutAttributeItem *)hi_auto_width {
    return [[HiLayoutAttributeItem alloc] initWith:self attribute:NSLayoutAttributeWidth];
}

- (HiLayoutAttributeItem *)hi_auto_height {
    return [[HiLayoutAttributeItem alloc] initWith:self attribute:NSLayoutAttributeHeight];
}

- (HiLayoutAttributeItem *)hi_auto_top {
    return [[HiLayoutAttributeItem alloc] initWith:self attribute:NSLayoutAttributeTop];
}

- (HiLayoutAttributeItem *)hi_auto_bottom {
    return [[HiLayoutAttributeItem alloc] initWith:self attribute:NSLayoutAttributeBottom];
}

- (HiLayoutAttributeItem *)hi_auto_leading {
    return [[HiLayoutAttributeItem alloc] initWith:self attribute:NSLayoutAttributeLeading];
}

- (HiLayoutAttributeItem *)hi_auto_trailing {
    return [[HiLayoutAttributeItem alloc] initWith:self attribute:NSLayoutAttributeTrailing];
}

- (HiLayoutAttributeItem *)hi_auto_centerX {
    return [[HiLayoutAttributeItem alloc] initWith:self attribute:NSLayoutAttributeCenterX];
}

- (HiLayoutAttributeItem *)hi_auto_centerY {
    return [[HiLayoutAttributeItem alloc] initWith:self attribute:NSLayoutAttributeCenterY];
}

@end
