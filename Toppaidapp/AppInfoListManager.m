//
//  AppInfoListManager.m
//  Toppaidapp
//
//  Created by Jang Young bin on 2015. 9. 18..
//  Copyright © 2015년 Jang Young bin. All rights reserved.
//

#import "AppInfoListManager.h"
#import "AppInfo.h"

@implementation AppInfoListManager
{
    NSMutableArray *appInfoList;
}

@synthesize appInfoList = appInfoList;

+ (instancetype) AppInfoListManagerWithURL:(NSURL *)url {
    return [[[self alloc] initWithURL:url] autorelease];
}
- (instancetype) initWithURL:(NSURL *)url {
    self = [super init];
    
    if (self) {
        NSData *data = [NSData dataWithContentsOfURL:url];
        id jsonData = [NSJSONSerialization JSONObjectWithData:data
                                                      options:NSJSONReadingMutableContainers error:nil];
        id feed = [jsonData objectForKey:@"feed"];
        NSArray *entries = [feed objectForKey:@"entry"];
        
        appInfoList = [[NSMutableArray alloc] init];
        
        for (id entry in entries) {
            AppInfo *appInfo = [AppInfo AppInfoWithId:entry];
            [appInfoList addObject:appInfo];
        }
    }
    
    return self;
}
- (void) dealloc {
    [appInfoList release];
    
    [super dealloc];
}

- (NSInteger) count {
    return [appInfoList count];
}
@end
