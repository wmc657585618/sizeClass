//
//  UIViewController+HiSizeClass.h
//  AutoLayoutAndSizeClass
//
//  Created by four on 2018/12/8.
//  Copyright © 2018 four. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIViewController+HiSizeClass_Property.h"

typedef void(^SizeChangeBlock)(CGSize size,id<UIViewControllerTransitionCoordinator> coordinator);

NS_ASSUME_NONNULL_BEGIN

@interface UIViewController (HiSizeClass)<HiSizeClasMethod>

// when viewcontroller view size changed,get a callback;
- (void)registSizeChanged:(SizeChangeBlock)sizeChanged;
@end

NS_ASSUME_NONNULL_END
