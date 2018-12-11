//
//  HiSIzeClassProperty.h
//  AutoLayoutAndSizeClass
//
//  Created by four on 2018/12/8.
//  Copyright © 2018 four. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "HiSizeClassPropertyItem.h"

NS_ASSUME_NONNULL_BEGIN

@protocol HiSizeClassProperty <UITraitEnvironment>

@property (nonatomic,strong) HiSizeClassPropertyItem *sizeClassPropertyItem;

@end

@protocol HiSizeClasMethod <NSObject>

// exchanged mothod
- (void)hi_traitCollectionDidChange:(UITraitCollection *)previousTraitCollection;
- (void)sizeClass:(HiSizeClassType)sizeClass doAction:(HiAction)action;

@end

NS_ASSUME_NONNULL_END
