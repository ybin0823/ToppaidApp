//
//  MyEntity.m
//  Toppaidapp
//
//  Created by Jang Young bin on 2015. 9. 18..
//  Copyright © 2015년 Jang Young bin. All rights reserved.
//

#import "MyEntity.h"

@implementation MyEntity
{
    NSString *title;
    NSString *rights;
    
    //image height : 53, 75, 100
    NSArray *images;
}

@synthesize title = title;
@synthesize rights = rights;

+ (instancetype)MyEntityWithEntry:(NSDictionary *)entry {
    return [[[self alloc] initWithEntry:entry] autorelease];
}
- (instancetype) initWithEntry:(NSDictionary *)entry {
    self = [super init];
    
    if (self) {
        title = [[[entry objectForKey:@"title"] objectForKey:@"label"] retain];
        rights = [[[entry objectForKey:@"rights"] objectForKey:@"label"] retain];
        images = [[entry objectForKey:@"im:image"] retain];
    }
    
    return self;
}
- (void) dealloc {
    [title release];
    [rights release];
    [images release];
    
    [super dealloc];
}

- (UIImage *) image {
    for (id image in images) {
        if([[[image objectForKey:@"attributes"] objectForKey:@"height"] isEqualToString:@"53"]) {
            NSString *imageUrl = [image objectForKey:@"label"];
            NSData *data = [NSData dataWithContentsOfURL:[NSURL URLWithString:imageUrl]];
            return [UIImage imageWithData:data];
        }
    }
    return nil;
}

@end
