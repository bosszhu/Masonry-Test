//
//  ZLUsingConstants.m
//  Masonry-Test
//
//  Created by yuntong on 2017/10/26.
//  Copyright © 2017年 yuntong. All rights reserved.
//

#import "ZLUsingConstants.h"

@implementation ZLUsingConstants
- (instancetype)init
{
    self = [super init];
    if (self) {
        UIView *redView = [UIView new];
        redView.backgroundColor = [UIColor redColor];
        redView.layer.borderColor = [UIColor blackColor].CGColor;
        redView.layer.borderWidth = 2;
        [self addSubview:redView];
        
        UIView *blueView = [UIView new];
        blueView.backgroundColor = [UIColor blueColor];
        blueView.layer.borderColor = [UIColor blackColor].CGColor;
        blueView.layer.borderWidth = 2;
        [self addSubview:blueView];
        
        //布局
        [redView makeConstraints:^(MASConstraintMaker *make) {
            make.top.left.equalTo(20);
            make.right.bottom.equalTo(-20);
        }];
        
        [blueView makeConstraints:^(MASConstraintMaker *make) {
            //中心点往下偏移50
            make.center.equalTo(CGPointMake(0, 50));
            make.size.equalTo(CGSizeMake(100, 100));
        }];
    }
    return self;
}
@end
