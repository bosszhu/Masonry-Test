//
//  MASExampleListViewController.m
//  Masonry-Test
//
//  Created by yuntong on 2017/10/24.
//  Copyright © 2017年 yuntong. All rights reserved.
//

#import "MASExampleListViewController.h"

@interface MASExampleListViewController ()

@end

@implementation MASExampleListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"举例列表";
    
}


#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
@end
