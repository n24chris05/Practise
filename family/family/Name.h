//
//  Name.h
//  family
//
//  Created by Chris Arquelada on 5/27/14.
//  Copyright (c) 2014 Chris Arquelada. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Name : NSObject

@property (nonatomic,copy)NSString *name;
@property (nonatomic,copy)NSString *breed;
@property (nonatomic)int age;
@property (nonatomic,strong)NSDate *birthdate;

+(instancetype)randomName;
-(instancetype)initWithName:(NSString *)namevalue breed:(NSString *)breed;



@end
