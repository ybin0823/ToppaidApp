//
//  MyEntityListManager.m
//  Toppaidapp
//
//  Created by Jang Young bin on 2015. 9. 18..
//  Copyright © 2015년 Jang Young bin. All rights reserved.
//

#import "MyEntityListManager.h"
#import "MyEntity.h"

@implementation MyEntityListManager
{
    NSMutableArray *entities;
}

@synthesize entities = entities;

- (instancetype) init {
    self = [super init];
    
    if (self) {
        NSData *data = [NSData dataWithContentsOfURL:[NSURL URLWithString:                                                                     @"https://itunes.apple.com/kr/rss/toppaidapplications/limit=100/json"]];
        
        id jsonData = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
        
        NSArray *entries = [[jsonData objectForKey:@"feed"] objectForKey:@"entry"];
        
        entities = [[NSMutableArray alloc] init];
        for (id entry in entries) {
            MyEntity *entity = [MyEntity MyEntityWithEntry:entry];
            [entities addObject:entity];
        }

    }
    
    return self;
}
- (void) dealloc {
    [entities release];
    
    [super dealloc];
}

- (NSInteger) count {
    return [entities count];
}

@end
