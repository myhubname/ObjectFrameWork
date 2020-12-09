//
//  HJSVProHud.m
//  ObjectFrameWork
//
//  Created by 胡俊杰 on 2020/12/9.
//

#import "HJSVProHud.h"

@implementation HJSVProHud

+(instancetype)shareManager
{
    static HJSVProHud *manager = nil;
    
    static dispatch_once_t onceToken;
  
    dispatch_once(&onceToken, ^{
        manager = [[HJSVProHud alloc] init];
        [SVProgressHUD setDefaultStyle:SVProgressHUDStyleDark];
        [SVProgressHUD setDefaultAnimationType:SVProgressHUDAnimationTypeNative];
        [SVProgressHUD setDefaultMaskType:SVProgressHUDMaskTypeBlack];
    });
    return manager;
}

-(void)dismiss {
    
    [SVProgressHUD dismiss];
}

-(void)showWithStatus:(NSString *)status
{
   [SVProgressHUD showWithStatus:status];
}

-(void)show
{
  [self showWithStatus:@"正在加载..."];
}

-(void)showInfoWithStatus:(NSString *)info
{
    [SVProgressHUD showInfoWithStatus:info];
}

-(void)popActivity
{

    [SVProgressHUD popActivity];
}

-(void)showSuccessWithStatus:(NSString *)sucessStatus
{
    [SVProgressHUD showSuccessWithStatus:sucessStatus];
}

-(void)showErrorWithStatus:(NSString *)errorStatus
{
    [SVProgressHUD showErrorWithStatus:errorStatus];
}
//添加通知
-(void)addNotification
{
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(handleNotification:)
                                                 name:SVProgressHUDWillAppearNotification
                                               object:nil];
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(handleNotification:)
                                                 name:SVProgressHUDDidAppearNotification
                                               object:nil];
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(handleNotification:)
                                                 name:SVProgressHUDWillDisappearNotification
                                               object:nil];
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(handleNotification:)
                                                 name:SVProgressHUDDidDisappearNotification
                                               object:nil];
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(handleNotification:)
                                                 name:SVProgressHUDDidReceiveTouchEventNotification
                                               object:nil];
}

#pragma mark - Notification handling

- (void)handleNotification:(NSNotification *)notification {
    
    if (self.handleNotificationNBlock) {
        
        self.handleNotificationNBlock(notification);
    }

}
//移除通知
-(void)removeNotification
{
    [[NSNotificationCenter defaultCenter] removeObserver:self name:SVProgressHUDWillAppearNotification object:nil];

    [[NSNotificationCenter defaultCenter] removeObserver:self name:SVProgressHUDDidAppearNotification object:nil];

    [[NSNotificationCenter defaultCenter] removeObserver:self name:SVProgressHUDWillDisappearNotification object:nil];

    [[NSNotificationCenter defaultCenter] removeObserver:self name:SVProgressHUDDidDisappearNotification object:nil];

    [[NSNotificationCenter defaultCenter] removeObserver:self name:SVProgressHUDDidReceiveTouchEventNotification object:nil];

}

@end
