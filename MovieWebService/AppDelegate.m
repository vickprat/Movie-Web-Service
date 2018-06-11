//
//  AppDelegate.m
//  MovieWebService
//
//  Created by Prateek Khandelwal on 6/4/18.
//  Copyright © 2017 Talk.to FZC. All rights reserved.
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
