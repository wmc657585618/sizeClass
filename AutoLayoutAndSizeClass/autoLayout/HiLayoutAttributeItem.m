//
//  HiLayoutAttributeItem.m
//  AutoLayoutAndSizeClass
//
//  Created by four on 2018/12/5.
//  Copyright © 2018 four. All rights reserved.
//

#import "HiLayoutAttributeItem.h"

@interface HiLayoutAttributeItem ()
@property (nonatomic,assign) NSLayoutRelation relate;

@property (nonatomic,assign) NSLayoutAttribute layoutAttribute;

@property (nonatomic,assign) CGFloat constant;
@property (nonatomic,assign) CGFloat pMultiplier;

@property (nonatomic,readonly) AttributeItem attribute;
@property (nonatomic,readonly) AttributeRelateItem relateAttribute;

@property (nonatomic,assign) NSLayoutAttribute selfAttribute;
@property (nonatomic,strong) UIView *item1;
@property (nonatomic,strong) UIView *item2;
@end

@implementation HiLayoutAttributeItem

#pragma mark - ******** private begin ********

- (AttributeItem)hi_multiplier {
    
    __weak typeof(self) weakSelf = self;
    return ^(CGFloat multiplier){
        __strong typeof(weakSelf) strongSelf = weakSelf;
        
        strongSelf.pMultiplier = multiplier;
        return strongSelf;
    };
}

- (AttributeItem) attribute {
    
    __weak typeof(self) weakSelf = self;
    return ^(CGFloat constant){
        __strong typeof(weakSelf) strongSelf = weakSelf;
        
        strongSelf.constant = constant;
        return strongSelf;
    };
}

- (AttributeRelateItem) relateAttribute {
    
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
        view.translatesAutoresizingMaskIntoConstraints = NO;
    }
    return self;
}

- (AttributeItem)hi_width {
    self.layoutAttribute = NSLayoutAttributeWidth;
    return self.attribute;
}

- (AttributeItem)hi_heitht {
    self.layoutAttribute = NSLayoutAttributeHeight;
    return self.attribute;
}

- (AttributeItem)hi_top {
    self.layoutAttribute = NSLayoutAttributeTop;
    return self.attribute;
}

- (AttributeItem)hi_bottom {
    self.layoutAttribute = NSLayoutAttributeBottom;
    return self.attribute;
}

- (AttributeItem)hi_leading {
    self.layoutAttribute = NSLayoutAttributeLeading;
    return self.attribute;
}

- (AttributeItem)hi_trialing {
    self.layoutAttribute = NSLayoutAttributeTrailing;
    return self.attribute;
}

- (AttributeItem)hi_centerX {
    self.layoutAttribute = NSLayoutAttributeCenterX;
    return self.attribute;
}

- (AttributeItem)hi_centerY {
    self.layoutAttribute = NSLayoutAttributeCenterY;
    return self.attribute;
}

- (AttributeItem)hi_value {
    return self.attribute;
}

- (AttributeRelateItem)less {
    self.relate = NSLayoutRelationLessThanOrEqual;
    return self.relateAttribute;
}

- (AttributeRelateItem)equal {
    self.relate = NSLayoutRelationEqual;
    return self.relateAttribute;
}

- (AttributeRelateItem )greater {
    self.relate = NSLayoutRelationGreaterThanOrEqual;
    return self.relateAttribute;
}

- (AttributeVoid)active {
    
    NSLayoutAttribute item2Attribute =  self.item2 == nil ? NSLayoutAttributeNotAnAttribute : self.layoutAttribute;
    
    NSLayoutConstraint *constraint = [NSLayoutConstraint constraintWithItem:self.item1 attribute:self.selfAttribute relatedBy:self.relate toItem:self.item2 attribute:item2Attribute multiplier:self.pMultiplier constant:self.constant];
    constraint.active = YES;

//    __weak typeof(self) weakSelf = self;
    
    return ^(){
//        __strong typeof(weakSelf) strongSelf = weakSelf;
//        NSLayoutAttribute item2Attribute =  strongSelf.item2 == nil ? NSLayoutAttributeNotAnAttribute : strongSelf.layoutAttribute;
//
//        NSLayoutConstraint *constraint = [NSLayoutConstraint constraintWithItem:strongSelf.item1 attribute:strongSelf.selfAttribute relatedBy:strongSelf.relate toItem:strongSelf.item2 attribute:item2Attribute multiplier:strongSelf.pMultiplier constant:strongSelf.constant];
//        constraint.active = YES;
        
        return constraint;
    };
}

@end
