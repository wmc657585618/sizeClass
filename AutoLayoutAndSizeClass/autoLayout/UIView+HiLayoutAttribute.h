//
//  UIView+HiLayoutAttribute.h
//  AutoLayoutAndSizeClass
//
//  Created by four on 2018/12/5.
//  Copyright © 2018 four. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HiLayoutAttributeItem.h"

NS_ASSUME_NONNULL_BEGIN

@interface UIView (HiLayoutAttribute)

@property (nonatomic,readonly) HiLayoutAttributeItem *hi_width;
@property (nonatomic,readonly) HiLayoutAttributeItem *hi_height;
@property (nonatomic,readonly) HiLayoutAttributeItem *hi_top;
@property (nonatomic,readonly) HiLayoutAttributeItem *hi_bottom;
@property (nonatomic,readonly) HiLayoutAttributeItem *hi_leading;
@property (nonatomic,readonly) HiLayoutAttributeItem *hi_trailing;
@property (nonatomic,readonly) HiLayoutAttributeItem *hi_centerX;
@property (nonatomic,readonly) HiLayoutAttributeItem *hi_centerY;

@end

NS_ASSUME_NONNULL_END
