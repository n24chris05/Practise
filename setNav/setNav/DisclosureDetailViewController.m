//
//  DisclosureDetailViewController.m
//  setNav
//
//  Created by Chris Arquelada on 5/28/14.
//  Copyright (c) 2014 Chris Arquelada. All rights reserved.
//

#import "DisclosureDetailViewController.h"

@interface DisclosureDetailViewController ()

@end

@implementation DisclosureDetailViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(UILabel *)label;
{
    return (id)self.view;
}
-(void)loadView;
{
    UILabel *label =[[UILabel alloc]init];
    label.numberOfLines = 0;
    label.textAlignment = NSTextAlignmentCenter;
    self.view = label;
    
}
-(void)viewWillAppear:(BOOL)animated;
{
    [super viewWillAppear:YES];
    self.label.text = self.message;
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
