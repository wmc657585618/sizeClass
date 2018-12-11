//
//  HiFrameLayoutConstraint.h
//  AutoLayoutAndSizeClass
//
//  Created by four on 2018/12/7.
//  Copyright © 2018 four. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface HiFrameLayoutConstraint : NSObject

+(void)constraintWithItem:(UIView *)view1 attribute:(NSLayoutAttribute)attr1 toItem:(UIView *)view2 attribute:(NSLayoutAttribute)attr2 multiplier:(CGFloat)multiplier constant:(CGFloat)c ;

@end

NS_ASSUME_NONNULL_END
