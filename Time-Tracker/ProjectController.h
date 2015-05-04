//
//  ProjectController.h
//  Time-Tracker
//
//  Created by Dalton on 4/18/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Project.h"

@interface ProjectController : UIViewController

// The ProjectController should hold an array of Project instances
@property (nonatomic, strong, readonly) NSArray *projects;

+ (ProjectController *)sharedInstance;

- (void)addProject:(Project *)project;
- (void)removeProject:(Project *)project;

- (void)synchronize;

@end
