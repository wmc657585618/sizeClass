//
//  UIViewController+HiSizeClass.m
//  AutoLayoutAndSizeClass
//
//  Created by four on 2018/12/8.
//  Copyright © 2018 four. All rights reserved.
//

#import "UIViewController+HiSizeClass.h"
#import <objc/runtime.h>

@interface UIViewController ()

@property (nonatomic,copy) SizeChangeBlock sizeChanged;

@end

@implementation UIViewController (HiSizeClass)

- (void)setSizeChanged:(SizeChangeBlock)sizeChanged {
    
    objc_setAssociatedObject(self, @selector(sizeChanged), sizeChanged, OBJC_ASSOCIATION_COPY);
}

- (SizeChangeBlock)sizeChanged {
    return objc_getAssociatedObject(self, @selector(sizeChanged));
}

+ (void)load {
    
    
    Method viewWillTransitionToSize = class_getInstanceMethod(self, @selector(viewWillTransitionToSize:withTransitionCoordinator:));
    
    Method hi_viewWillTransitionToSize = class_getInstanceMethod(self, @selector(hi_viewWillTransitionToSize:withTransitionCoordinator:));
    
    if (viewWillTransitionToSize && hi_viewWillTransitionToSize) {
        method_exchangeImplementations(viewWillTransitionToSize, hi_viewWillTransitionToSize);
    }
    
    Method traitCollectionDidChange = class_getInstanceMethod(self, @selector(traitCollectionDidChange:));
    Method hi_traitCollectionDidChange = class_getInstanceMethod(self, @selector(hi_traitCollectionDidChange:));
    
    if (traitCollectionDidChange && hi_traitCollectionDidChange) {
        method_exchangeImplementations(traitCollectionDidChange, hi_traitCollectionDidChange);
    }
}

- (void) hi_viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id<UIViewControllerTransitionCoordinator>)coordinator {
    
    [self hi_viewWillTransitionToSize:size withTransitionCoordinator:coordinator];
    
    if (self.sizeChanged) {
        self.sizeChanged(size, coordinator);
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

- (void)registSizeChanged:(SizeChangeBlock)sizeChanged {
    
    self.sizeChanged = sizeChanged;
}

@end
