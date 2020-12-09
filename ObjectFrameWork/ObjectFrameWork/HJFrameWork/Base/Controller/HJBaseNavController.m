//
//  HJBaseNavController.m
//  ObjectFrameWork
//
//  Created by 胡俊杰 on 2020/12/8.
//

#import "HJBaseNavController.h"
@interface HJBaseNavController ()<UIGestureRecognizerDelegate,UINavigationControllerDelegate>

@end

@implementation HJBaseNavController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    if ([self respondsToSelector:@selector(interactivePopGestureRecognizer)]) {
        self.interactivePopGestureRecognizer.delegate = self;
    }
    
    self.delegate = self;
}
-(void)navigationController:(UINavigationController *)navigationController didShowViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    if ([self respondsToSelector:@selector(interactivePopGestureRecognizer)]) {
        
        self.interactivePopGestureRecognizer.enabled = YES;
    }
}
#pragma mark-导航栏控制器代理方法
-(void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    if (self.childViewControllers.count > 0) {
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        button.frame = CGRectMake(0, 0, 44, 44);
        //设置button的水平偏移,让按钮内部的所有内容左对齐
        button.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        button.contentEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 0);
        [button setImage:kGetImage(@"") forState:UIControlStateNormal];
        [button addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
        viewController.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:button];
        viewController.hidesBottomBarWhenPushed = YES;
    }
    [super pushViewController:viewController animated:animated];
}
//返回
-(void)back
{
    [self popViewControllerAnimated:YES];
}

-(BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer
{
    if (gestureRecognizer == self.interactivePopGestureRecognizer) {
        
        if (self.viewControllers.count < 2) {
            
            return NO;
        }
    }
    return YES;
}


@end
