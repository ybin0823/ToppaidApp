//
//  AppInfo.h
//  Toppaidapp
//
//  Created by Jang Young bin on 2015. 9. 18..
//  Copyright © 2015년 Jang Young bin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface AppInfo : NSObject

+ (instancetype) AppInfoWithId:(id)app;

@property (nonatomic, readonly) NSString *title;
@property (nonatomic, readonly) NSString *rights;

-(UIImage *)image;

@end
