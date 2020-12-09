//
//  AppDelegate.m
//  ObjectFrameWork
//
//  Created by 胡俊杰 on 2020/12/1.
//

#import "AppDelegate.h"
#import "HJIndexPageViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


-(BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    HJIndexPageViewController *indexPageVc = [[HJIndexPageViewController alloc] init];
    
    self.window.rootViewController = indexPageVc;
    
    [self.window makeKeyAndVisible];
    
    return YES;
}



@end
