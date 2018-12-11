//
//  UIView+HiAutoLayout.h
//  AutoLayoutAndSizeClass
//
//  Created by four on 2018/12/7.
//  Copyright © 2018 four. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HiLayoutAttributeItem.h"

NS_ASSUME_NONNULL_BEGIN

@interface UIView (HiAutoLayout)

@property (nonatomic,readonly) HiLayoutAttributeItem *hi_auto_width;
@property (nonatomic,readonly) HiLayoutAttributeItem *hi_auto_height;
@property (nonatomic,readonly) HiLayoutAttributeItem *hi_auto_top;
@property (nonatomic,readonly) HiLayoutAttributeItem *hi_auto_bottom;
@property (nonatomic,readonly) HiLayoutAttributeItem *hi_auto_leading;
@property (nonatomic,readonly) HiLayoutAttributeItem *hi_auto_trailing;
@property (nonatomic,readonly) HiLayoutAttributeItem *hi_auto_centerX;
@property (nonatomic,readonly) HiLayoutAttributeItem *hi_auto_centerY;

@end

NS_ASSUME_NONNULL_END
