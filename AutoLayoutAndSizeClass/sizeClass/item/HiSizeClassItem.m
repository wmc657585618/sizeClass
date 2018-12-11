//
//  HiSIzeClassItem.m
//  AutoLayoutAndSizeClass
//
//  Created by four on 2018/12/7.
//  Copyright © 2018 four. All rights reserved.
//

#import "HiSizeClassItem.h"
#import "HiSizeClassProtocol.h"

@interface HiSizeClassItem ()

@property (nonatomic,copy) HiAction action;

@end

@implementation HiSizeClassItem

- (instancetype)initWithAction:(HiAction)action
{
    self = [super init];
    if (self) {
        _action = action;
    }
    return self;
}

- (void) excute:(UITraitCollection *)traintCollection {
    
    if (self.action) {
        self.action(traintCollection);
    }
}

+ (HiSizeClassType)sizeClassWithItem:(id<HiSizeClassProperty>)item {
    
    // if horizontalSizeClass is compact or regular
    // verticalSizeClass has three cases: compact,regular,any
    // anthor case is don't care about horizontalSizeClass
    // verticalSizeClass has three cases: compact,regular,any
    
    if (item.traitCollection.horizontalSizeClass == UIUserInterfaceSizeClassCompact) {
        
        if ( item.traitCollection.verticalSizeClass == UIUserInterfaceSizeClassRegular && item.sizeClassPropertyItem.itemWCHR) { // wc hr
            return HiSizeClassTypeWCHR;
        }
        
        if (item.traitCollection.verticalSizeClass == UIUserInterfaceSizeClassCompact && item.sizeClassPropertyItem.itemWCHC) { // wc hc
            return HiSizeClassTypeWCHC;
        }
        
        if (item.sizeClassPropertyItem.itemWCHA) {
            return HiSizeClassTypeWCHA;
        }
    }
    
    if (item.traitCollection.horizontalSizeClass == UIUserInterfaceSizeClassRegular) {
        
        if ( item.traitCollection.verticalSizeClass == UIUserInterfaceSizeClassRegular && item.sizeClassPropertyItem.itemWRHR) { // wr hr
            return HiSizeClassTypeWRHR;
        }
        
        if (item.traitCollection.verticalSizeClass == UIUserInterfaceSizeClassCompact && item.sizeClassPropertyItem.itemWRHC) { // wr hc
            return HiSizeClassTypeWRHC;
        }
        
        if (item.sizeClassPropertyItem.itemWRHA) {
            return HiSizeClassTypeWRHA;
        }
    }
    
    if (item.traitCollection.horizontalSizeClass == UIUserInterfaceSizeClassRegular && item.sizeClassPropertyItem.itemWAHR) {
        return HiSizeClassTypeWAHR;
    }
    
    if (item.traitCollection.horizontalSizeClass == UIUserInterfaceSizeClassCompact && item.sizeClassPropertyItem.itemWAHC) {
        return HiSizeClassTypeWAHC;
    }
    return HiSizeClassTypeWAHA;
}

@end
