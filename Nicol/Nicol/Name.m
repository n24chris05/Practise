//
//  Name.m
//  Nicol
//
//  Created by Chris Arquelada on 5/26/14.
//  Copyright (c) 2014 Chris Arquelada. All rights reserved.
//

#import "Name.h"

@implementation Name
+(instancetype)randomName
{
    Name *randomName = [[self alloc]initWithItemName:@"Oreo" breed:@"Unknown"];
    
    return randomName;
}


-(instancetype)initWithItemName:(NSString *)name breed:(NSString *)xbreed
{
    self = [super init];
    
    if (self){
        self.name = name;
        self.breed = xbreed;
        self.birthdate = [[NSDate alloc]init];
    }
    
    return self;
}
-(id)init
{
    return [self initWithItemName:@"baby" breed:@"unknow"];
}

@end
