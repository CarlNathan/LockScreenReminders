//
//  ViewController.m
//  LockScreenReminders
//
//  Created by Carl Udren on 6/27/16.
//  Copyright © 2016 Carl Udren. All rights reserved.
//

#import "ReminderTableViewController.h"

@interface ReminderTableViewController ()

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSArray *reminders;

@end

@implementation ReminderTableViewController 
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    [self layoutTableView];
}

-(void)layoutTableView {
    self.tableView.frame = CGRectMake(0, self.navigationController.navigationBar.frame.size.height, self.view.bounds.size.width, self.view.bounds.size.height - self.navigationController.navigationBar.frame.size.height);
}

#pragma mark - TableViewDataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.reminders.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    return cell;
}

#pragma mark - TableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    //launch editing screen
}

@end
