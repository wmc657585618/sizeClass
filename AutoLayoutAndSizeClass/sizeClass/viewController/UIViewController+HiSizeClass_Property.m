//
//  UIViewController+HiSizeClass_Property.m
//  AutoLayoutAndSizeClass
//
//  Created by four on 2018/12/8.
//  Copyright © 2018 four. All rights reserved.
//

#import "UIViewController+HiSizeClass_Property.h"
#import <objc/runtime.h>

@implementation UIViewController (HiSizeClass_Property)

- (void)setSizeClassPropertyItem:(HiSizeClassPropertyItem *)sizeClassPropertyItem {
    objc_setAssociatedObject(self, @selector(sizeClassPropertyItem), sizeClassPropertyItem, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (HiSizeClassPropertyItem *)sizeClassPropertyItem {
    return objc_getAssociatedObject(self, @selector(sizeClassPropertyItem));
}

@end
