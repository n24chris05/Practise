//
//  TableViewController.m
//  TableView
//
//  Created by Chris Arquelada on 5/10/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import "TableViewController.h"

@interface TableViewController ()

@property (copy, nonatomic)NSArray *dwarves;
@end

@implementation TableViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
   self.dwarves = @[@"Hello",@"Hi"];
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.dwarves count];
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *SimpleTableIdentifier = @"SimpleTableIdentifier";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:SimpleTableIdentifier];
    
    if (cell == nil){
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:SimpleTableIdentifier];
        
    }
    cell.textLabel.text = self.dwarves[indexPath.row];
    return cell;
    
}
@end