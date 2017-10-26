//
//  ZLCompositeEdges.m
//  Masonry-Test
//
//  Created by yuntong on 2017/10/26.
//  Copyright © 2017年 yuntong. All rights reserved.
//

#import "ZLCompositeEdges.h"

@implementation ZLCompositeEdges

- (instancetype)init
{
    self = [super init];
    if (self) {
        UIView *lastView = self;
        for (int i = 0; i < 10; ++i) {
            UIView *view = [UIView new];
            view.backgroundColor = [self setRandowColor];
            view.layer.borderWidth = 2;
            view.layer.borderColor = [UIColor blackColor].CGColor;
            [self addSubview:view];
            //布局
            [view makeConstraints:^(MASConstraintMaker *make) {
                make.edges.equalTo(lastView).insets(UIEdgeInsetsMake(5, 10, 15, 20));
            }];
            lastView = view;
        }
        
        
        
    }
    return self;
}
- (UIColor *)setRandowColor {
    return [UIColor colorWithRed:((float)arc4random_uniform(256) / 255.0) green:((float)arc4random_uniform(256) / 255.0) blue:((float)arc4random_uniform(256) / 255.0) alpha:1.0];
}
@end
