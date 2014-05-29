
//
//  BNRItemViewController.m
//  ReHomepwner
//
//  Created by Chris Arquelada on 5/29/14.
//  Copyright (c) 2014 Chris Arquelada. All rights reserved.
//

#import "BNRItemViewController.h"
#import "BNRItem.h"
#import "BNRItemStore.h"

@implementation BNRItemViewController

-(instancetype)init
{
    //Call the superclass designated initializer
    self = [super initWithStyle:UITableViewStylePlain];
    if (self){
        for (int i =0; i < 5;i++){
            [[BNRItemStore sharedStore]createItem];
        }
    }
    return self;
}
-(instancetype)initWithStyle:(UITableViewStyle)style
{
    return [self init];
}
@end
