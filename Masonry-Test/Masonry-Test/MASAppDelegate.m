//
//  MASAppDelegate.m
//  Masonry-Test
//
//  Created by yuntong on 2017/10/24.
//  Copyright © 2017年 yuntong. All rights reserved.
//

#import "MASAppDelegate.h"
#import "MASExampleListViewController.h"

@implementation MASAppDelegate
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(nullable NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc]initWithFrame:UIScreen.mainScreen.bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    UINavigationController *navigationController = [[UINavigationController alloc]initWithRootViewController:MASExampleListViewController.new];
    self.window.rootViewController = navigationController;
    [self.window makeKeyAndVisible];
    return YES;
}
@end
