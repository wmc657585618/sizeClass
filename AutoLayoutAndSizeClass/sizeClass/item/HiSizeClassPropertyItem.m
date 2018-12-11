//
//  HiSizeClassPropertyItem.m
//  AutoLayoutAndSizeClass
//
//  Created by four on 2018/12/8.
//  Copyright © 2018 four. All rights reserved.
//

#import "HiSizeClassPropertyItem.h"

@implementation HiSizeClassPropertyItem

- (void)addItem:(HiSizeClassItem *)item sizeClass:(HiSizeClassType)sizeClass {
    
    switch (sizeClass) {
        case HiSizeClassTypeWRHR:
            self.itemWRHR = item;
            break;
            
        case HiSizeClassTypeWRHC:
            self.itemWRHC = item;
            break;
            
        case HiSizeClassTypeWRHA:
            self.itemWRHA = item;
            break;
            
        case HiSizeClassTypeWCHR:
            self.itemWCHR = item;
            break;
            
        case HiSizeClassTypeWCHC:
            self.itemWCHC = item;
            break;
            
        case HiSizeClassTypeWCHA:
            self.itemWCHA = item;
            break;
            
        case HiSizeClassTypeWAHR:
            self.itemWAHR = item;
            break;
            
        case HiSizeClassTypeWAHC:
            self.itemWAHC = item;
            break;
            
        case HiSizeClassTypeWAHA:
            self.itemWAHA = item;
            break;
    }
}

- (HiSizeClassItem *)itemWithSizeClass:(HiSizeClassType)sizeClass {
    
    switch (sizeClass) {
        case HiSizeClassTypeWRHR:
            return self.itemWRHR;
            
        case HiSizeClassTypeWRHC:
            return self.itemWRHC;
            
        case HiSizeClassTypeWRHA:
            return self.itemWRHA;
            
        case HiSizeClassTypeWCHR:
            return self.itemWCHR;
            
        case HiSizeClassTypeWCHC:
            return self.itemWCHC;
            
        case HiSizeClassTypeWCHA:
            return self.itemWCHA;
            
        case HiSizeClassTypeWAHR:
            return self.itemWAHR;
            
        case HiSizeClassTypeWAHC:
            return self.itemWAHC;
            
        case HiSizeClassTypeWAHA:
            return self.itemWAHA;
    }
}

@end
