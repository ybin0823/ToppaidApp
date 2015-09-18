//
//  AppInfoListManager.h
//  Toppaidapp
//
//  Created by Jang Young bin on 2015. 9. 18..
//  Copyright © 2015년 Jang Young bin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AppInfoListManager : NSObject

@property (nonatomic, readonly) NSMutableArray *appInfoList;

+(instancetype) AppInfoListManagerWithURL:(NSURL *)url;

-(NSInteger) count;
@end
