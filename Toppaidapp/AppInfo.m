//
//  AppInfo.m
//  Toppaidapp
//
//  Created by Jang Young bin on 2015. 9. 18..
//  Copyright © 2015년 Jang Young bin. All rights reserved.
//

#import "AppInfo.h"

@implementation AppInfo
{
    NSString *title;
    NSString *rights;
    NSData *imageUrls;
}

@synthesize title = title;
@synthesize rights = rights;

+ (instancetype) AppInfoWithId:(id)app {
    return [[[self alloc] initWithId:app] autorelease];
}
- (instancetype) initWithId:(id)app {
    self = [super init];
    
    if (self) {
        title = [app valueForKey:@"title"];
        imageUrls = [app valueForKey:@"im:image"];
        rights = [app valueForKey:@"rights"];
    }
    
    return self;
}

- (void) dealloc {
    [title release];
    [rights release];
    [imageUrls release];
    
    [super dealloc];
}

- (UIImage *)image {
    return nil;
}

@end
