//
//  ProjectController.m
//  Time-Tracker
//
//  Created by Dalton on 4/18/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "ProjectController.h"
#import "Project.h"

static NSString * const keyForProjectList = @"projectList";


@interface ProjectController ()

// The ProjectController should hold an array of Project instances
@property (nonatomic, strong) NSArray *projects;


@end

@implementation ProjectController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


// This goes in the implementation file
+ (ProjectController *)sharedInstance {
    
    // create an instance of CurrentUser and set it to nil (only gets created once)
    static ProjectController *sharedInstance = nil;
    
    // Never create that token again
    static dispatch_once_t onceToken;
    
    // create this line of code only once
    dispatch_once(&onceToken, ^{
        sharedInstance = [[ProjectController alloc] init];
        
        
    });
    
    // next time we call this method, this is the only code that will do anything
    return sharedInstance;
}


-(void)addProject:(Project *)project {
    
    
}

-(void)removeProject:(Project *)project {
    
    
}

-(void)loadFromDefaults {
    
    NSArray *projectDictionaries = [[NSUserDefaults standardUserDefaults] objectForKey:keyForProjectList];
    
    NSMutableArray *projects = [NSMutableArray new];
    for (NSDictionary *project in projectDictionaries) {
        
        [projects addObject:[[Project alloc] initWithDictionary:project]];
        
    }
    
    self.projects = projects;
    
}


-(void)synchronize {
    
    NSMutableArray *projectDictionaries = [NSMutableArray new];
    for (Project *project in self.projects) {
        
        [projectDictionaries addObject:[project projectDictionary]];
    }
    
    [[NSUserDefaults standardUserDefaults] setObject:projectDictionaries forKey:keyForProjectList];
    [[NSUserDefaults standardUserDefaults] synchronize];
}


@end
