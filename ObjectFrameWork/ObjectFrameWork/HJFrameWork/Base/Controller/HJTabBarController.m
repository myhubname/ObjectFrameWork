//
//  HJTabBarController.m
//  ObjectFrameWork
//
//  Created by 胡俊杰 on 2020/12/8.
//

#import "HJTabBarController.h"
#import "HJBaseNavController.h"

@interface HJTabBarController ()<UITabBarControllerDelegate>

@property(nonatomic,copy)NSArray *tabbars;

@end

@implementation HJTabBarController

#pragma mark-初始化配置tabbar
+(void)initialize
{
    NSMutableDictionary *attrd=[NSMutableDictionary dictionary];
    attrd[NSFontAttributeName]=[UIFont systemFontOfSize:12];
    attrd[NSForegroundColorAttributeName]=[UIColor colorWithHexString:@"#444444"];
    
    NSMutableDictionary *selectedattrd=[NSMutableDictionary dictionary];
    selectedattrd[NSFontAttributeName]=attrd[NSFontAttributeName];
    selectedattrd[NSForegroundColorAttributeName]= [UIColor colorWithHexString:@"#0090F0"];
    

    [[UITabBar appearance] setBarTintColor:[UIColor whiteColor]];
    UITabBarItem *itm=[UITabBarItem appearance];
    [itm setTitleTextAttributes:attrd forState:UIControlStateNormal];
    [itm setTitleTextAttributes:selectedattrd forState:UIControlStateSelected];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];

    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"HJAppList" ofType:@"plist"];
    NSDictionary *data = [NSDictionary dictionaryWithContentsOfFile:filePath];
    self.tabbars = data[@"tabbarInfo"];
    
    [self.tabbars enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
       
        [self setupChild:[[NSClassFromString(obj[@"className"]) alloc] init] title:obj[@"name"] image:obj[@"norImage"] selectedImage:obj[@"selImage"]];
    }];
    
}
#pragma mark-初始化控制器
-(void)setupChild:(UIViewController *)vc title:(NSString *)title image:(NSString *)image selectedImage:(NSString *)selectedImage
{
    vc.tabBarItem.title=title;
    vc.tabBarItem.image= [UIImage imageNamed:image];
    vc.tabBarItem.selectedImage=[UIImage imageNamed:selectedImage];
    vc.tabBarItem.selectedImage=[vc.tabBarItem.selectedImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    HJBaseNavController *nav = [[HJBaseNavController alloc] initWithRootViewController:vc];
    [self addChildViewController:nav];
}

#pragma mark-UITabBarControllerDelegate
-(BOOL)tabBarController:(UITabBarController *)tabBarController shouldSelectViewController:(UIViewController *)viewController
{
    HJLog(@"%@",viewController.tabBarItem.title);
    
    return YES;
}


@end
