//
//  ViewController.m
//  AutoLayoutAndSizeClass
//
//  Created by four on 2018/12/3.
//  Copyright © 2018 four. All rights reserved.
//

#import "ViewController.h"

#import "UIView+HiSizeClass.h"

#import "UIView+HiFrameLayout.h"
#import "UIView+HiAutoLayout.h"
#import "UIViewController+HiSizeClass.h"

@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UITableView *table = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStyleGrouped];
    table.dataSource = self;
    table.delegate = self;
    
    [self.view addSubview:table];
    
    // autolayout
    table.hi_auto_top.equal(self.view.safeAreaLayoutGuide).hi_top(0).active();
    table.hi_auto_bottom.equal(self.view.safeAreaLayoutGuide).hi_bottom(0).active();
    table.hi_auto_leading.equal(self.view.safeAreaLayoutGuide).hi_leading(0).active();
    table.hi_auto_trailing.equal(self.view.safeAreaLayoutGuide).hi_trialing(0).active();

    // frame
//    table.hi_frame_bottom.equal(self.view).hi_bottom(-200).active();
//    table.hi_frame_top.equal(self.view).hi_top(100).active();
//    table.hi_frame_leading.equal(self.view).hi_leading(0).active();
//    table.hi_frame_trailing.equal(self.view).hi_trialing(0).active();

    __weak typeof(self) weakSelf = self;
    
    // 4s/SE/6.../6p.../iPhonex... (portrait)
    [self sizeClass:HiSizeClassTypeWCHR doAction:^(UITraitCollection *traitCollection) {
        __strong typeof(weakSelf) strongSelf = self;
        strongSelf.view.backgroundColor = UIColor.brownColor;
        table.backgroundColor = UIColor.redColor;
    }];
    
    // 6p.../xr/xs/xmax (landscape)
    [self sizeClass:HiSizeClassTypeWRHC doAction:^(UITraitCollection *traitCollection) {
        __strong typeof(weakSelf) strongSelf = self;
        strongSelf.view.backgroundColor = UIColor.yellowColor;
        table.backgroundColor = UIColor.blueColor;

    }];
    
    // ipad (full screen)
    [self sizeClass:HiSizeClassTypeWRHR doAction:^(UITraitCollection *traitCollection) {
        __strong typeof(weakSelf) strongSelf = self;
        strongSelf.view.backgroundColor = UIColor.orangeColor;
        table.backgroundColor = UIColor.cyanColor;
    }];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *cellID = @"UITableViewCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
    }
    
    [cell sizeClass:HiSizeClassTypeWCHR doAction:^(UITraitCollection *traitCollection) {
        
        cell.textLabel.text = @"4s/SE/6.../6p.../iPhonex... (portrait)";
    }];
    
    [cell sizeClass:HiSizeClassTypeWRHC doAction:^(UITraitCollection *traitCollection) {

        cell.textLabel.text = @"6p.../xr/xs/xmax (landscape)";
    }];
    
    [cell sizeClass:HiSizeClassTypeWRHR doAction:^(UITraitCollection *traitCollection) {
        
        cell.textLabel.text = @"ipad (full screen)";
    }];
    
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return 10;
}

@end
