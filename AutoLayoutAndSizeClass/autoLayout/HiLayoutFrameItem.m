//
//  HiLayoutFrameItem.m
//  AutoLayoutAndSizeClass
//
//  Created by four on 2018/12/7.
//  Copyright © 2018 four. All rights reserved.
//

#import "HiLayoutFrameItem.h"
#import "HiFrameLayoutConstraint.h"

@interface HiLayoutFrameItem ()
@property (nonatomic,assign) NSLayoutRelation relate;

@property (nonatomic,assign) NSLayoutAttribute layoutAttribute;

@property (nonatomic,assign) CGFloat constant;
@property (nonatomic,assign) CGFloat pMultiplier;

@property (nonatomic,readonly) AttributeFrameItem attribute;
@property (nonatomic,readonly) AttributeFrameRelateItem relateAttribute;

@property (nonatomic,assign) NSLayoutAttribute selfAttribute;
@property (nonatomic,strong) UIView *item1;
@property (nonatomic,strong) UIView *item2;
@end

@implementation HiLayoutFrameItem

#pragma mark - ******** private begin ********

- (AttributeFrameItem)hi_multiplier {
    
    __weak typeof(self) weakSelf = self;
    return ^(CGFloat multiplier){
        __strong typeof(weakSelf) strongSelf = weakSelf;
        
        strongSelf.pMultiplier = multiplier;
        return strongSelf;
    };
}

- (AttributeFrameItem) attribute {
    
    __weak typeof(self) weakSelf = self;
    return ^(CGFloat constant){
        __strong typeof(weakSelf) strongSelf = weakSelf;
        
        strongSelf.constant = constant;
        return strongSelf;
    };
}

- (AttributeFrameRelateItem) relateAttribute {
    
    __weak typeof(self) weakSelf = self;
    return ^(UIView *view){
        __strong typeof(weakSelf) strongSelf = weakSelf;
        
        strongSelf.item2 = view;
        return strongSelf;
    };
}

#pragma mark - ******** private ending ********
- (instancetype)initWith:(UIView *)view attribute:(NSLayoutAttribute)attribute
{
    self = [super init];
    if (self) {
        _selfAttribute = attribute;
        _pMultiplier = 1;
        _item1 = view;
    }
    return self;
}

- (AttributeFrameItem)hi_width {
    self.layoutAttribute = NSLayoutAttributeWidth;
    return self.attribute;
}

- (AttributeFrameItem)hi_heitht {
    self.layoutAttribute = NSLayoutAttributeHeight;
    return self.attribute;
}

- (AttributeFrameItem)hi_top {
    self.layoutAttribute = NSLayoutAttributeTop;
    return self.attribute;
}

- (AttributeFrameItem)hi_bottom {
    self.layoutAttribute = NSLayoutAttributeBottom;
    return self.attribute;
}

- (AttributeFrameItem)hi_leading {
    self.layoutAttribute = NSLayoutAttributeLeading;
    return self.attribute;
}

- (AttributeFrameItem)hi_trialing {
    self.layoutAttribute = NSLayoutAttributeTrailing;
    return self.attribute;
}

- (AttributeFrameItem)hi_centerX {
    self.layoutAttribute = NSLayoutAttributeCenterX;
    return self.attribute;
}

- (AttributeFrameItem)hi_centerY {
    self.layoutAttribute = NSLayoutAttributeCenterY;
    return self.attribute;
}

- (AttributeFrameItem)hi_value {
    return self.attribute;
}

- (AttributeFrameRelateItem)equal {
    return self.relateAttribute;
}

- (AttributeFrameVoid)active {
    
    [HiFrameLayoutConstraint constraintWithItem:self.item1 attribute:self.selfAttribute toItem:self.item2 attribute:self.layoutAttribute multiplier:self.pMultiplier constant:self.constant];
    
    return ^(){};
}

@end
