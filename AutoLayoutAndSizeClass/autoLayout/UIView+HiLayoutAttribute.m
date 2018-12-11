//
//  UIView+HiLayoutAttribute.m
//  AutoLayoutAndSizeClass
//
//  Created by four on 2018/12/5.
//  Copyright © 2018 four. All rights reserved.
//

#import "UIView+HiLayoutAttribute.h"

@implementation UIView (HiLayoutAttribute)

- (HiLayoutAttributeItem *)hi_width {
    return [[HiLayoutAttributeItem alloc] initWith:self attribute:NSLayoutAttributeWidth];
}

- (HiLayoutAttributeItem *)hi_height {
    return [[HiLayoutAttributeItem alloc] initWith:self attribute:NSLayoutAttributeHeight];
}

- (HiLayoutAttributeItem *)hi_top {
    return [[HiLayoutAttributeItem alloc] initWith:self attribute:NSLayoutAttributeTop];
}

- (HiLayoutAttributeItem *)hi_bottom {
    return [[HiLayoutAttributeItem alloc] initWith:self attribute:NSLayoutAttributeBottom];
}

- (HiLayoutAttributeItem *)hi_leading {
    return [[HiLayoutAttributeItem alloc] initWith:self attribute:NSLayoutAttributeLeading];
}

- (HiLayoutAttributeItem *)hi_trailing {
    return [[HiLayoutAttributeItem alloc] initWith:self attribute:NSLayoutAttributeTrailing];
}

- (HiLayoutAttributeItem *)hi_centerX {
    return [[HiLayoutAttributeItem alloc] initWith:self attribute:NSLayoutAttributeCenterX];
}

- (HiLayoutAttributeItem *)hi_centerY {
    return [[HiLayoutAttributeItem alloc] initWith:self attribute:NSLayoutAttributeCenterY];
}
@end
