//
//  ViewController.m
//  QQ音乐
//
//  Created by cstars on 15/7/22.
//  Copyright © 2015年 cstars. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *bgImgView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //添加背景毛玻璃效果  利用了toolbar 的特性
    UIToolbar *toolBar = [[UIToolbar alloc]init];
    [self.bgImgView addSubview:toolBar];
    toolBar.barStyle = UIBarStyleBlackTranslucent;
//    toolBar.translucent = YES;
    //设置toolbar约束  不直接设置frame是因为要适应横竖屏
    
    //禁止autoresizing
    toolBar.translatesAutoresizingMaskIntoConstraints = NO;
    NSArray *vCons = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-0-[toolBar]-0-|" options:0 metrics:NULL views:@{@"toolBar":toolBar}];
    [self.bgImgView addConstraints:vCons];
    
    //注意VF语言的灵活用法
    NSArray *hCons = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-margin-[toolBar]-margin-|" options:0 metrics:@{@"margin":@0} views:@{@"toolBar":toolBar}];
    
    [self.bgImgView addConstraints:hCons];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
