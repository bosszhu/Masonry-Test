//
//  ZLExampleViewController.m
//  Masonry-Test
//
//  Created by yuntong on 2017/10/26.
//  Copyright © 2017年 yuntong. All rights reserved.
//

#import "ZLExampleViewController.h"

@interface ZLExampleViewController ()
@property (nonatomic, strong) Class viewClass;
@end

@implementation ZLExampleViewController

- (id)initWithTitle:(NSString *)title viewClass:(Class)viewClass {
    self = [super init];
    if (!self) return nil;
    self.title = title;
    self.viewClass = viewClass;
    
    return self;
}

- (void)loadView {
    self.view = self.viewClass.new;//这里需要的是一个ViewClass不是控制器
    self.view.backgroundColor = [UIColor whiteColor];
}

#ifdef __IPHONE_7_0
- (UIRectEdge)edgesForExtendedLayout {
    return UIRectEdgeNone;
}
#endif
@end
