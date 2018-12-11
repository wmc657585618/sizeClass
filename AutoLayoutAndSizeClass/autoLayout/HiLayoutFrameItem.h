//
//  HiLayoutFrameItem.h
//  AutoLayoutAndSizeClass
//
//  Created by four on 2018/12/7.
//  Copyright © 2018 four. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class HiLayoutFrameItem;
typedef HiLayoutFrameItem *(^AttributeFrameItem)(CGFloat constant);
typedef HiLayoutFrameItem *(^AttributeFrameRelateItem)(UIView *view);
typedef void (^AttributeFrameVoid)(void);

NS_ASSUME_NONNULL_BEGIN

@interface HiLayoutFrameItem : NSObject

- (instancetype)init NS_UNAVAILABLE;
- (instancetype)initWith:(UIView *)view attribute:(NSLayoutAttribute)attribute;

@property (nonatomic,readonly) AttributeFrameItem hi_width;
@property (nonatomic,readonly) AttributeFrameItem hi_heitht;
@property (nonatomic,readonly) AttributeFrameItem hi_top;
@property (nonatomic,readonly) AttributeFrameItem hi_bottom;
@property (nonatomic,readonly) AttributeFrameItem hi_trialing;
@property (nonatomic,readonly) AttributeFrameItem hi_leading;
@property (nonatomic,readonly) AttributeFrameItem hi_multiplier;
@property (nonatomic,readonly) AttributeFrameItem hi_centerX;
@property (nonatomic,readonly) AttributeFrameItem hi_centerY;
@property (nonatomic,readonly) AttributeFrameItem hi_value;

@property (nonatomic,readonly) AttributeFrameRelateItem equal; 

@property (nonatomic,readonly) AttributeFrameVoid active;

@end

NS_ASSUME_NONNULL_END
