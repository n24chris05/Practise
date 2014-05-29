//
//  BNRItemStore.h
//  ReHomepwner
//
//  Created by Chris Arquelada on 5/29/14.
//  Copyright (c) 2014 Chris Arquelada. All rights reserved.
//

#import <Foundation/Foundation.h>
@class BNRItem;

@interface BNRItemStore : NSObject

@property (nonatomic,readonly)NSArray *allItems;

//Notice that this is a class method
+(instancetype)sharedStore;
-(BNRItem *)createItem;

@end
