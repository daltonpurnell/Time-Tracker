//
//  TTListViewController.m
//  Time-Tracker
//
//  Created by Dalton on 4/18/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "TTListViewController.h"
#import "TTListTableViewDataSource.h"
#import "ProjectController.h"



@interface TTListViewController () <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) TTListTableViewDataSource *dataSource;

@end

@implementation TTListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
}


@end
