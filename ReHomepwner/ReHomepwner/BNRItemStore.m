//
//  BNRItemStore.m
//  ReHomepwner
//
//  Created by Chris Arquelada on 5/29/14.
//  Copyright (c) 2014 Chris Arquelada. All rights reserved.
//

#import "BNRItemStore.h"
#import "BNRItem.h"
@interface BNRItemStore()

@property (nonatomic)NSMutableArray *privateItems;

@end


@implementation BNRItemStore

+(instancetype)sharedStore
{
    static BNRItemStore *sharedStore = nil;
    
    //Do I need to create shared
    if (!sharedStore){
        sharedStore = [[self alloc]initPrivate];
    }
    return sharedStore;
}

-(instancetype)init
{
    @throw [NSException exceptionWithName:@"Singleton" reason:@"Use  +[BNRItemStore sharedStore]" userInfo:nil];
    
    return nil;
}
//Here is the real secret
-(instancetype)initPrivate
{
    self = [super init];
    if (self){
        _privateItems = [[NSMutableArray alloc]init];
    }
    return self;
}

-(instancetype)allItem
{
    return [self.privateItems copy];
}

-(BNRItem *)createItem
{
    BNRItem *item = [BNRItem randomItem];
    [self.privateItems addObject:item];

    return item;
}
@end
