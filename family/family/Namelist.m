//
//  Namelist.m
//  family
//
//  Created by Chris Arquelada on 5/27/14.
//  Copyright (c) 2014 Chris Arquelada. All rights reserved.
//

#import "Namelist.h"

@implementation Namelist

+(instancetype)member
{
    static Namelist *member = nil;
    
    //Do I need to create member?
    if (!member){
        member = [[self alloc]initPrivate];
    }
    
    return member;
}

//secret is the real (secret)initializer
-(instancetype)initPrivate
{
    self = [super init];
    return self;
}

-(instancetype)init
{
    @throw [NSException exceptionWithName:@"Singleton"
                                   reason:@"User + [nameList member]" userInfo:nil];
}
@end
