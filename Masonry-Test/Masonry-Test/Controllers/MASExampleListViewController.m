//
//  MASExampleListViewController.m
//  Masonry-Test
//
//  Created by yuntong on 2017/10/24.
//  Copyright © 2017年 yuntong. All rights reserved.
//

#import "MASExampleListViewController.h"

static NSString *const cellReuseIdentifier = @"cellReuseIdentifier";
@interface MASExampleListViewController ()

@end

@implementation MASExampleListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"举例列表";
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:cellReuseIdentifier];
}


#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellReuseIdentifier forIndexPath:indexPath];
    cell.textLabel.text = @"测试";
    return cell;
}
@end
