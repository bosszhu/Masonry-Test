//
//  MASExampleListViewController.m
//  Masonry-Test
//
//  Created by yuntong on 2017/10/24.
//  Copyright © 2017年 yuntong. All rights reserved.
//

#import "MASExampleListViewController.h"
#import "ZLExampleViewController.h"
#import "ZLBasicView.h"
#import "ZLUpdateConstraintsView.h"
#import "ZLRemakeConstraints.h"
#import "ZLUsingConstants.h"
#import "ZLCompositeEdges.h"
#import "ZLAspectFit.h"
#import "ZLBasicAnimated.h"
#import "ZLDebuggingHelpers.h"
#import "ZLBaconyLabels.h"
#import "ZLUIScrollView.h"
#import "ZLArray.h"
#import "ZLAttributeChaining.h"
#import "ZLMargins.h"
#import "ZLViewsDistribute.h"


static NSString *const cellReuseIdentifier = @"cellReuseIdentifier";
@interface MASExampleListViewController ()
@property (nonatomic, strong) NSArray *exampleControllers;
@end

@implementation MASExampleListViewController

- (instancetype)init
{
    self = [super init];
    if (!self) return nil;
    
    self.exampleControllers = @[
                                [[ZLExampleViewController alloc]initWithTitle:@"Basic" viewClass:ZLBasicView.class],
                                [[ZLExampleViewController alloc]initWithTitle:@"Update Constraints" viewClass:ZLUpdateConstraintsView.class],
                                [[ZLExampleViewController alloc]initWithTitle:@"Remake Constraints" viewClass:ZLRemakeConstraints.class],
                                [[ZLExampleViewController alloc]initWithTitle:@"Using Constants" viewClass:ZLUsingConstants.class],
                                [[ZLExampleViewController alloc]initWithTitle:@"Composite Edges" viewClass:ZLCompositeEdges.class],
                                [[ZLExampleViewController alloc]initWithTitle:@"Aspect Fit" viewClass:ZLAspectFit.class],
                                [[ZLExampleViewController alloc]initWithTitle:@"Basic Animated" viewClass:ZLBasicAnimated.class],
                                [[ZLExampleViewController alloc]initWithTitle:@"Debugging Helpers" viewClass:ZLDebuggingHelpers.class],
                                [[ZLExampleViewController alloc]initWithTitle:@"Bacony Labels" viewClass:ZLBaconyLabels.class],
                                [[ZLExampleViewController alloc]initWithTitle:@"UIScrollView" viewClass:ZLUIScrollView.class],
                                [[ZLExampleViewController alloc]initWithTitle:@"Array" viewClass:ZLArray.class],
                                [[ZLExampleViewController alloc]initWithTitle:@"Attribute Chaining" viewClass:ZLAttributeChaining.class],
                                [[ZLExampleViewController alloc]initWithTitle:@"Margins" viewClass:ZLMargins.class],
                                [[ZLExampleViewController alloc]initWithTitle:@"Views Distribute" viewClass:ZLViewsDistribute.class]
                                ];
    //作用未知
//    if ([UIViewController instancesRespondToSelector:@selector(topLayoutGuide)])
//    {
//        self.exampleControllers = [self.exampleControllers arrayByAddingObject:[[MASExampleLayoutGuideViewController alloc] init]];
//    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"举例列表";
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:cellReuseIdentifier];
}


#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.exampleControllers.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UIViewController *viewVc = self.exampleControllers[indexPath.row];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellReuseIdentifier forIndexPath:indexPath];  
    //设置标题
    cell.textLabel.text = viewVc.title;
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    UIViewController *viewVc = self.exampleControllers[indexPath.row];
    [self.navigationController pushViewController:viewVc animated:YES];
}
@end
