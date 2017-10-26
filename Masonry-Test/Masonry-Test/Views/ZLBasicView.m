//
//  ZLBasicView.m
//  Masonry-Test
//
//  Created by yuntong on 2017/10/26.
//  Copyright © 2017年 yuntong. All rights reserved.
//

#import "ZLBasicView.h"

@implementation ZLBasicView

- (instancetype)init
{
    self = [super init];
    if (self) {
        //基本打三色布局三等高两等宽
        UIView *greenView = [UIView new];
        greenView.backgroundColor = [UIColor greenColor];
        greenView.layer.borderColor = [UIColor blackColor].CGColor;
        greenView.layer.borderWidth = 2;
        
        
//        UIView *redView
//        UIView *blueView
    }
    return self;
}

@end
