//
//  ViewController.m
//  Cells
//
//  Created by Chris Arquelada on 5/8/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import "ViewController.h"
#import "BIDNameAndColorCell.h"

@interface ViewController ()

@end

@implementation ViewController

static NSString *cellTableIdentifier = @"CellTableIdentifier";

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.computers = @[
    @{@"Name" : @"MacBook",@"Color" : @"White"},
    @{@"Name" : @"MacBook Pro", @"Color" : @"Silver"},
    @{@"Name" : @"Oreopogi"};
    
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
