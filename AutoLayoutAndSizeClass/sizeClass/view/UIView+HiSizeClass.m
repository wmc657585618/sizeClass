//
//  UIView+HiSizeClass.m
//  AutoLayoutAndSizeClass
//
//  Created by four on 2018/12/7.
//  Copyright © 2018 four. All rights reserved.
//

#import "UIView+HiSizeClass.h"
#import "HiSizeClassItem.h"
#import <objc/runtime.h>

@implementation UIView (HiSizeClass)

+ (void)load {
    
    Method traitCollectionDidChange = class_getInstanceMethod(self, @selector(traitCollectionDidChange:));
    Method hi_traitCollectionDidChange = class_getInstanceMethod(self, @selector(hi_traitCollectionDidChange:));
    
    if (traitCollectionDidChange && hi_traitCollectionDidChange) {
        method_exchangeImplementations(traitCollectionDidChange, hi_traitCollectionDidChange);
    }
}

- (void)hi_traitCollectionDidChange:(UITraitCollection *)previousTraitCollection {
    
    [self hi_traitCollectionDidChange:previousTraitCollection];
    
    if (self.sizeClassPropertyItem) {
        
        HiSizeClassType sizeClassType = [HiSizeClassItem sizeClassWithItem:self];
        HiSizeClassItem *item = [self.sizeClassPropertyItem itemWithSizeClass:sizeClassType];
        [item excute:previousTraitCollection];
    }
}

- (void)sizeClass:(HiSizeClassType)sizeClass doAction:(HiAction)action {
    
    if (!self.sizeClassPropertyItem) {
        self.sizeClassPropertyItem = [[HiSizeClassPropertyItem alloc] init];
    }
    
    HiSizeClassItem *item = [[HiSizeClassItem alloc] initWithAction:action];
    [self.sizeClassPropertyItem addItem:item sizeClass:sizeClass];
}

@end
