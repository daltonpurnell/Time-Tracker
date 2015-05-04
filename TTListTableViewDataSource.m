//
//  TTListTableViewDataSource.m
//  Time-Tracker
//
//  Created by Dalton on 4/18/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "TTListTableViewDataSource.h"
#import "ProjectController.h"

@implementation TTListTableViewDataSource


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
// use the ProjectController for the row count and row value for the tableView
    return [[ProjectController sharedInstance].projects count];
    
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"Cell"];
    }
    
    Project *project = [ProjectController sharedInstance].projects[indexPath.row];
    
    cell.textLabel.text = project.title;
    cell.detailTextLabel.text = project.projectTime;
    
    
    return cell;
}



@end
