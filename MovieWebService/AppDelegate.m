//
//  AppDelegate.m
//  MovieWebService
//
//  Created by testDev on 4/11/17.
//  Copyright © 2017 TestCompany. All rights reserved.
//

#import "AppDelegate.h"
#import "RootRouter.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    RootRouter *rootRouter = [RootRouter new];
    self.window.rootViewController = [rootRouter rootViewController];
    [self.window makeKeyAndVisible];
    return YES;
}

@end
