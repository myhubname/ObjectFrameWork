//
//  HJIndexPageViewController.m
//  ObjectFrameWork
//
//  Created by 胡俊杰 on 2020/12/1.
//

#import "HJIndexPageViewController.h"
#import "HJSVProHud.h"
@interface HJIndexPageViewController ()

@end

@implementation HJIndexPageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [[HJSVProHud shareManager] showSuccessWithStatus:@"加载成功"];
}


@end
