//
//  main.m
//  family
//
//  Created by Chris Arquelada on 5/27/14.
//  Copyright (c) 2014 Chris Arquelada. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Name.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        NSLog(@"Hello, World!");
        Name *chris = [[Name alloc]initWithName:@"Oreo" breed:@"shihtzu"] ;
        Name *oreo = [Name randomName];
        NSLog(@"%@", chris);
        NSLog (@"%@",oreo);
    }
    return 0;
}

