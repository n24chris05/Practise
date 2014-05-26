//
//  Name.m
//  family
//
//  Created by Chris Arquelada on 5/27/14.
//  Copyright (c) 2014 Chris Arquelada. All rights reserved.
//

#import "Name.h"

@implementation Name

+(instancetype)randomName
{
       Name *ranName = [[Name alloc]initWithName:@"baby--" breed:@"--"];
    
    
    return ranName;
    
}
-(instancetype)initWithName:(NSString *)namevalue breed:(NSString *)breedValue
{
    self = [super init];
    
    if (self)
    {
        self.name = namevalue;
        self.breed = breedValue;
        
    }
    
    return self;

}

-(id)init
{
    return [self initWithName:@"baby" breed:@"unknown"];
}

- (NSString *)description
{
    NSString *descriptionString =
    [[NSString alloc] initWithFormat:@"%@ %@)",self.name, self.breed];
     return descriptionString;
}

@end
