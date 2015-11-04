//
//  RandomKardashian.m
//  RememberMe?
//
//  Created by Elise Harris on 10/17/15.
//  Copyright © 2015 ech. All rights reserved.
//

#import "RandomKardashian.h"

@implementation RandomKardashian

{
    NSArray *names;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        names= @[@"Damon", @"Kanye", @"Kris", @"Scott", @"Kim",@"Courtney", @"Kendall", @"Khloe", @"Kylie",@"North West",@"Cris",@"Naya"];
    }
    return self;
}

-(NSString *)randomName {
    int random = arc4random_uniform((int)self.names.count);
    
    return [self.names objectAtIndex:random];
}


@end
