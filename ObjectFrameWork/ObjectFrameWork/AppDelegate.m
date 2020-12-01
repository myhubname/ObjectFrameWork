//
//  AppDelegate.m
//  ObjectFrameWork
//
//  Created by 胡俊杰 on 2020/12/1.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    UIViewController *vc = [[UIViewController alloc] init];
    
    vc.view.backgroundColor = [UIColor whiteColor];
   
    self.window.rootViewController = vc;
    
    [self.window makeKeyAndVisible];
    
    return YES;
}




@end
