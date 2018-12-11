//
//  HiSizeClassPropertyItem.h
//  AutoLayoutAndSizeClass
//
//  Created by four on 2018/12/8.
//  Copyright © 2018 four. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HiSizeClassItem.h"

NS_ASSUME_NONNULL_BEGIN

@interface HiSizeClassPropertyItem : NSObject

@property (nonatomic,strong) HiSizeClassItem *itemWRHR;
@property (nonatomic,strong) HiSizeClassItem *itemWRHC;
@property (nonatomic,strong) HiSizeClassItem *itemWRHA;

@property (nonatomic,strong) HiSizeClassItem *itemWCHR;
@property (nonatomic,strong) HiSizeClassItem *itemWCHC;
@property (nonatomic,strong) HiSizeClassItem *itemWCHA;

@property (nonatomic,strong) HiSizeClassItem *itemWAHR;
@property (nonatomic,strong) HiSizeClassItem *itemWAHC;
@property (nonatomic,strong) HiSizeClassItem *itemWAHA;

- (void)addItem:(HiSizeClassItem *)item sizeClass:(HiSizeClassType)sizeClass;
- (HiSizeClassItem *)itemWithSizeClass:(HiSizeClassType)sizeClass;

@end

NS_ASSUME_NONNULL_END
