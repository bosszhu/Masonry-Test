//
//  ZLUpdateConstraintsView.m
//  Masonry-Test
//
//  Created by yuntong on 2017/10/26.
//  Copyright © 2017年 yuntong. All rights reserved.
//

#import "ZLUpdateConstraintsView.h"

@interface ZLUpdateConstraintsView ()

@property (nonatomic, strong) UIButton *growingButton;
@property (nonatomic, assign) CGSize buttonSize;

@end
@implementation ZLUpdateConstraintsView

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.growingButton = [UIButton buttonWithType:UIButtonTypeSystem];
        [self.growingButton setTitle:@"变大" forState:UIControlStateNormal];
        self.growingButton.layer.borderColor = UIColor.greenColor.CGColor;
        self.growingButton.layer.borderWidth = 3;
        [self.growingButton addTarget:self action:@selector(didTapGrowButton:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:self.growingButton];
        self.buttonSize = CGSizeMake(100, 100);
        
    }
    return self;
}
#pragma mark - 重写+requiresConstraintBasedLayout 返回YES就是明确告诉系统：虽然我之前没有添加约束,但我确实是基于约束的布局！
+ (BOOL)requiresConstraintBasedLayout
{
    return YES;
}
#pragma mark - 重写更新布局的方法
- (void)updateConstraints {
    [self.growingButton updateConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self);
        make.width.equalTo(@(self.buttonSize.width)).priorityLow();
        make.height.equalTo(@(self.buttonSize.height)).priorityLow();
        
        //MARK:小于等于父控件最大
        make.width.lessThanOrEqualTo(self);
        make.height.lessThanOrEqualTo(self);
    }];
    [super updateConstraints];
}
- (void)didTapGrowButton:(UIButton *)button {
    self.buttonSize = CGSizeMake(self.buttonSize.width * 1.3, self.buttonSize.height *1.3);
    [self setNeedsUpdateConstraints];
    [self updateFocusIfNeeded];
    [UIView animateWithDuration:0.4 animations:^{
        [self layoutIfNeeded];//改变布局
    }];
}
@end
