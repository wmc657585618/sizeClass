//
//  HiLayoutAttributeItem.h
//  AutoLayoutAndSizeClass
//
//  Created by four on 2018/12/5.
//  Copyright © 2018 four. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class HiLayoutAttributeItem;

typedef HiLayoutAttributeItem *(^AttributeItem)(CGFloat constant);
typedef HiLayoutAttributeItem *(^AttributeRelateItem)(id item);
typedef NSLayoutConstraint *(^AttributeVoid)(void);

NS_ASSUME_NONNULL_BEGIN

@interface HiLayoutAttributeItem : NSObject

- (instancetype)init NS_UNAVAILABLE;
- (instancetype)initWith:(UIView *)view attribute:(NSLayoutAttribute)attribute;

@property (nonatomic,readonly) AttributeItem hi_width;
@property (nonatomic,readonly) AttributeItem hi_heitht;
@property (nonatomic,readonly) AttributeItem hi_top;
@property (nonatomic,readonly) AttributeItem hi_bottom;
@property (nonatomic,readonly) AttributeItem hi_trialing;
@property (nonatomic,readonly) AttributeItem hi_leading;
@property (nonatomic,readonly) AttributeItem hi_multiplier;
@property (nonatomic,readonly) AttributeItem hi_centerX;
@property (nonatomic,readonly) AttributeItem hi_centerY;
@property (nonatomic,readonly) AttributeItem hi_value;


@property (nonatomic,readonly) AttributeRelateItem less; // <=
@property (nonatomic,readonly) AttributeRelateItem equal; // ==
@property (nonatomic,readonly) AttributeRelateItem greater; // >=

@property (nonatomic,readonly) AttributeVoid active;
@end

NS_ASSUME_NONNULL_END
