//
//  Name.h
//  Nicol
//
//  Created by Chris Arquelada on 5/26/14.
//  Copyright (c) 2014 Chris Arquelada. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Name : NSObject

@property (nonatomic,copy) NSString *name;
@property (nonatomic,copy) NSString *breed;
@property (nonatomic) int age;
@property (nonatomic,strong) NSDate *birthdate;
@property (nonatomic,readonly,strong)NSDate *dateAdded;

+(instancetype)randomName;
-(instancetype)initWithItemName:(NSString *)name
                          breed:(NSString *)xbreed;


@end
