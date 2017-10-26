//
//  ZLRemakeConstraints.m
//  Masonry-Test
//
//  Created by yuntong on 2017/10/26.
//  Copyright © 2017年 yuntong. All rights reserved.
//

#import "ZLRemakeConstraints.h"

@interface ZLRemakeConstraints ()

@property (nonatomic, strong) UIButton *growingButton;
@property (nonatomic, assign) BOOL isTopLeft;

@end
@implementation ZLRemakeConstraints

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.growingButton = [UIButton buttonWithType:UIButtonTypeSystem];
        self.growingButton.layer.borderColor = UIColor.greenColor.CGColor;
        self.growingButton.layer.borderWidth = 3;
        
        [self.growingButton setTitle:@"Move" forState:UIControlStateNormal];
        [self.growingButton addTarget:self action:@selector(moveBtnAcyion:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:self.growingButton];
        self.isTopLeft = YES;
    }
    return self;
}
+ (BOOL)requiresConstraintBasedLayout {
    return YES;
}
- (void)updateConstraints {
    //MARK:重置布局,每次布局重置调用
    [self.growingButton remakeConstraints:^(MASConstraintMaker *make) {
        make.width.equalTo(100);
        make.height.equalTo(100);
        if (self.isTopLeft == YES) {
            make.right.equalTo(self.right);
            make.bottom.equalTo(self.bottom);
        } else {
            make.left.equalTo(self.left);
            make.top.equalTo(self.top);
        }
    }];
    
    [super updateConstraints];
}
- (void)moveBtnAcyion:(UIButton *)button {
    self.isTopLeft = !self.isTopLeft;
    [self  setNeedsUpdateConstraints];
    [self needsUpdateConstraints];
    [UIView animateWithDuration:0.4 animations:^{
        [self layoutIfNeeded];
    }];
}
@end
