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
        [self addSubview:greenView];
        
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
        
        UIView *superView = self;
        int padding = 10;
        
        //MARK:布局子控件
        [greenView makeConstraints:^(MASConstraintMaker *make) {
            make.top.greaterThanOrEqualTo(superView.top).offset(padding);
            make.left.equalTo(superView.left).offset(padding);
            make.right.equalTo(redView.left).offset(-padding);
            make.bottom.equalTo(blueView.top).offset(-padding);
            
            make.width.equalTo(redView.width);
            make.height.equalTo(redView.height);
            make.height.equalTo(blueView.height);
        }];
        
        [redView makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(superView.mas_top).with.offset(padding);
            make.left.equalTo(greenView.mas_right).offset(padding);
            make.right.equalTo(superView.mas_right).offset(-padding);
            make.bottom.equalTo(blueView.mas_top).offset(-padding);
            
            make.width.equalTo(greenView.width);
            make.height.equalTo(@[greenView.height,blueView.height]);
        }];
        
        [blueView makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(greenView.mas_bottom).offset(padding);
            make.left.equalTo(superView.mas_left).offset(padding);
            make.right.equalTo(superView.mas_right).offset(-padding);
            make.bottom.equalTo(superView.mas_bottom).offset(-padding);
            
            make.height.equalTo(@[greenView.height,redView.height]);
        }];
    }
    return self;
}

@end
