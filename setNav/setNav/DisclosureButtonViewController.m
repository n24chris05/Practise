//
//  DisclosureButtonViewController.m
//  setNav
//
//  Created by Chris Arquelada on 5/28/14.
//  Copyright (c) 2014 Chris Arquelada. All rights reserved.
//

#import "DisclosureButtonViewController.h"
#import "DisclosureDetailViewController.h"

static NSString *CellIdentifier= @"Cell";

@implementation DisclosureButtonViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title = @"Disclosure Button";
        self.rowImage = [UIImage imageNamed:@"disclosureButtonControllerIcon.png"];
        self.movies = @[@"Toy Story", @"A Bug’s Life", @"Toy Story 2",
                        @"Monsters, Inc.", @"Finding Nemo", @"The Incredibles",
                        @"Cars", @"Ratatouille", @"WALL-E", @"Up",
                        @"Toy Story 3", @"Cars 2", @"Brave"];
        self.detailController = [[DisclosureDetailViewController alloc]init];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:CellIdentifier];
}
#pragma mark -Table View Data Source Methods;
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.movies count];
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    cell.accessoryType = UITableViewCellAccessoryDetailDisclosureButton;
    cell.textLabel.text = self.movies[indexPath.row];
    
    return cell;
}
#pragma mark - Table View Delegate Method
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Hey, do you see the disclosure Button?"
                                                   message:@"Touch that to drill down instead"
                                                  delegate:nil
                                         cancelButtonTitle:@"Won't happen again"
                                         otherButtonTitles:nil];
    
    [alert show];
}

-(void)tableView:(UITableView *)tableView accessoryButtonTappedForRowWithIndexPath:(NSIndexPath *)indexPath
{
    self.detailController.title = @"Disclosure Button Pressed";
    NSString *selectedMovie = self.movies[indexPath.row];
    NSString *detailMessage = [[NSString alloc]initWithFormat:@"This is detail for %@",selectedMovie];
    
    self.detailController.message = detailMessage;
    self.detailController.title = selectedMovie;
    [self.navigationController pushViewController:self.detailController animated:YES];
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
