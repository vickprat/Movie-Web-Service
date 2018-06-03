//
//  AppDelegate.m
//  MovieWebService
//
//  Created by testDev on 4/11/17.
//  Copyright © 2017 TestCompany. All rights reserved.
//

#import "AppDelegate.h"
#import "MoviesListBuilder.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    MoviesListBuilder *moviesListBuilder = [MoviesListBuilder new];
    self.window.rootViewController = [moviesListBuilder build];
    [self.window makeKeyAndVisible];
    return YES;
}

@end
