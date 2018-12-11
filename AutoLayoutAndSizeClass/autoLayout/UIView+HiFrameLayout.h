//
//  UIView+HiFrameLayout.h
//  frameLayoutAndSizeClass
//
//  Created by four on 2018/12/7.
//  Copyright © 2018 four. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HiLayoutFrameItem.h"

NS_ASSUME_NONNULL_BEGIN

@interface UIView (HiFrameLayout)

@property (nonatomic,readonly) HiLayoutFrameItem *hi_frame_width;
@property (nonatomic,readonly) HiLayoutFrameItem *hi_frame_height;
@property (nonatomic,readonly) HiLayoutFrameItem *hi_frame_top;
@property (nonatomic,readonly) HiLayoutFrameItem *hi_frame_bottom;
@property (nonatomic,readonly) HiLayoutFrameItem *hi_frame_leading;
@property (nonatomic,readonly) HiLayoutFrameItem *hi_frame_trailing;
@property (nonatomic,readonly) HiLayoutFrameItem *hi_frame_centerX;
@property (nonatomic,readonly) HiLayoutFrameItem *hi_frame_centerY;

@end

NS_ASSUME_NONNULL_END
