//
//  Namelist.h
//  family
//
//  Created by Chris Arquelada on 5/27/14.
//  Copyright (c) 2014 Chris Arquelada. All rights reserved.
// Namelist is a singleton

#import <Foundation/Foundation.h>

@interface Namelist : NSObject

//Notice that this is a class method and prefixed with a + instead of -
+(instancetype) member;


@end
