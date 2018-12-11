//
//  HiFrameLayoutConstraint.m
//  AutoLayoutAndSizeClass
//
//  Created by four on 2018/12/7.
//  Copyright © 2018 four. All rights reserved.
//

#import "HiFrameLayoutConstraint.h"
#import <objc/runtime.h>

@interface UIView (HiFrameLayoutConstraint)

@property (nonatomic,assign) BOOL hi_bottom; // has setted bottom
@property (nonatomic,assign) BOOL hi_trailing; // has setted trailing

@end

@implementation UIView (HiFrameLayoutConstraint)

- (void)setHi_bottom:(BOOL)hi_bottom {
    objc_setAssociatedObject(self, @selector(hi_bottom), @(hi_bottom), OBJC_ASSOCIATION_ASSIGN);
}

- (BOOL)hi_bottom {
    
    NSNumber *bottom = objc_getAssociatedObject(self, @selector(hi_bottom));
    return bottom.boolValue;
}

- (void)setHi_trailing:(BOOL)hi_trailing{
    objc_setAssociatedObject(self, @selector(hi_trailing), @(hi_trailing), OBJC_ASSOCIATION_ASSIGN);
}

- (BOOL)hi_trailing {
    
    NSNumber *trailing = objc_getAssociatedObject(self, @selector(hi_trailing));
    return trailing.boolValue;
}

@end

@implementation HiFrameLayoutConstraint

+(void)constraintWithItem:(UIView *)view1 attribute:(NSLayoutAttribute)attr1 toItem:(UIView *)view2 attribute:(NSLayoutAttribute)attr2 multiplier:(CGFloat)multiplier constant:(CGFloat)c {
    
    CGRect frame = view1.frame;
    
    if (attr1 == NSLayoutAttributeTop) {
        frame.origin.y = [self attribute:attr2 view:view2 multiplier:multiplier constant:c];
        if (view1.hi_bottom) {
            frame.size.height -= frame.origin.y;
        }
    }
    
    if (attr1 == NSLayoutAttributeBottom) {
        frame.size.height = [self attribute:attr2 view:view2 multiplier:multiplier constant:c] - frame.origin.y;
        view1.hi_bottom = YES;
    }
    
    if (attr1 == NSLayoutAttributeLeading) {
        frame.origin.x = [self attribute:attr2 view:view2 multiplier:multiplier constant:c];
        if (view1.hi_trailing) {
            frame.size.width -= frame.origin.x;
        }
    }
    
    if (attr1 == NSLayoutAttributeTrailing) {
        frame.size.width = [self attribute:attr2 view:view2 multiplier:multiplier constant:c] - frame.origin.x;
        view1.hi_trailing = YES;
    }
    
    if (attr1 == NSLayoutAttributeWidth) {
        frame.size.width = [self attribute:attr2 view:view2 multiplier:multiplier constant:c];
    }
    
    if (attr1 == NSLayoutAttributeHeight) {
        frame.size.height = [self attribute:attr2 view:view2 multiplier:multiplier constant:c];
    }
    
    if (attr1 == NSLayoutAttributeCenterX) {
        
        CGPoint center = view1.center;
        if ([view1.superview isEqual:view2]) {
            center.x = view2.frame.size.width * 0.5;
        }else {
            center.x = [self attribute:attr2 view:view2 multiplier:multiplier constant:c];
        }
        view1.center = center;;
        return;
    }
    
    if (attr1 == NSLayoutAttributeCenterY) {
        
        CGPoint center = view1.center;

        if ([view1.superview isEqual:view2]) {
            center.y = view2.frame.size.height * 0.5;
        }else {
            center.y = [self attribute:attr2 view:view2 multiplier:multiplier constant:c];
        }
        view1.center = center;
        return;
    }
    
    view1.frame = frame;
}

+ (CGFloat)attribute:(NSLayoutAttribute)attr1 view:(UIView *)view multiplier:(CGFloat)multiplier constant:(CGFloat)c{
    
    if (!view) {
        return c;
    }
    
    CGFloat constant = 0;
    if (attr1 == NSLayoutAttributeTop) {
        constant = view.frame.origin.y;
    }
    
    if (attr1 == NSLayoutAttributeBottom) {
        constant = CGRectGetMaxY(view.frame);
    }
    
    if (attr1 == NSLayoutAttributeLeading) {
        constant = view.frame.origin.x;
    }
    
    if (attr1 == NSLayoutAttributeTrailing) {
        constant = CGRectGetMaxX(view.frame);
    }
    
    if (attr1 == NSLayoutAttributeWidth) {
        constant = view.frame.size.width;
    }
    
    if (attr1 == NSLayoutAttributeHeight) {
        constant = view.frame.size.height;
    }
    
    if (attr1 == NSLayoutAttributeCenterX) {
        
        constant = view.center.x;
    }
    
    if (attr1 == NSLayoutAttributeCenterY) {
        constant = view.center.y;
    }
    
    return constant * multiplier + c;
}

@end
