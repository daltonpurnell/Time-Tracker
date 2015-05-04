//
//  TTDetailViewController.m
//  Time-Tracker
//
//  Created by Dalton on 4/21/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "TTDetailViewController.h"
#import "ProjectController.h"


@interface TTDetailViewController () <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *titleTextField;

@property (weak, nonatomic) IBOutlet UILabel *timeLabel;

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation TTDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)addTapped:(id)sender {
}
- (IBAction)checkInTapped:(id)sender {
}
- (IBAction)checkOutTapped:(id)sender {
}
- (IBAction)reportTapped:(id)sender {
}

-(void)add {
    
}

-(void)clockIn {
    
}

-(void)clockOut {
    
}

-(void)report {
    
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    
    [textField resignFirstResponder];
    return YES;
    
}

-(BOOL)textFieldShouldEndEditing:(UITextField *)textField {
    
    return YES;
}


@end
