//
//  HiSIzeClassItem.h
//  AutoLayoutAndSizeClass
//
//  Created by four on 2018/12/7.
//  Copyright © 2018 four. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol HiSizeClassProperty;
/**
 
 - HiSizeClassTypeWRHR: w : Regular, H : Regular
 - HiSizeClassTypeWRHC: w : Regular, H : Compact
 - HiSizeClassTypeWRHA: w : Regular, H : Any
 
 - HiSizeClassTypeWCHR: w : Compact, H : Regular
 - HiSizeClassTypeWCHC: w : Compact, H : Compact
 - HiSizeClassTypeWCHA: w : Compact, H : Any
 
 - HiSizeClassTypeWAHR: w : Any,     H : Regular
 - HiSizeClassTypeWAHC: w : Any,     H : Compact
 - HiSizeClassTypeWAHA: w : Any,     H : Any
 */
typedef NS_ENUM(NSInteger,HiSizeClassType) {
    
    HiSizeClassTypeWRHR,
    HiSizeClassTypeWRHC,
    HiSizeClassTypeWRHA,
    HiSizeClassTypeWCHR,
    HiSizeClassTypeWCHC,
    HiSizeClassTypeWCHA,
    HiSizeClassTypeWAHR,
    HiSizeClassTypeWAHC,
    HiSizeClassTypeWAHA,
};

typedef void(^HiAction)(UITraitCollection *traitCollection);
NS_ASSUME_NONNULL_BEGIN

@interface HiSizeClassItem : NSObject

- (instancetype)init NS_UNAVAILABLE;
- (instancetype)initWithAction:(HiAction)action;

- (void) excute:(UITraitCollection *)traintCollection;

+ (HiSizeClassType)sizeClassWithItem:(id<HiSizeClassProperty>)item;
@end

NS_ASSUME_NONNULL_END
