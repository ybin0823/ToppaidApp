//
//  AppDelegate.m
//  Toppaidapp
//
//  Created by Jang Young bin on 2015. 9. 18..
//  Copyright © 2015년 Jang Young bin. All rights reserved.
//

#import "AppDelegate.h"
#import "MyTableViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOption {
    UIWindow *window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen]
                                                         bounds]] autorelease];
    [window makeKeyAndVisible];
    [self setWindow:window];
    
    MyTableViewController *viewController = [[[MyTableViewController alloc] initWithNibName:nil bundle:nil] autorelease];
    [[self window] setRootViewController:viewController];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {

}

- (void)applicationDidEnterBackground:(UIApplication *)application {

}

- (void)applicationWillEnterForeground:(UIApplication *)application {

}

- (void)applicationDidBecomeActive:(UIApplication *)application {

}

- (void)applicationWillTerminate:(UIApplication *)application {

}

@end
