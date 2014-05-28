//
//  DisclosureButtonViewController.h
//  setNav
//
//  Created by Chris Arquelada on 5/28/14.
//  Copyright (c) 2014 Chris Arquelada. All rights reserved.
//

#import "SecondLevelViewController.h"
@class DisclosureDetailViewController;

@interface DisclosureButtonViewController : SecondLevelViewController

@property (copy,nonatomic)NSArray *movies;
@property (strong,nonatomic)DisclosureDetailViewController *detailController;




@end
