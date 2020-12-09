//
//  HJSVProHud.h
//  ObjectFrameWork
//
//  Created by 胡俊杰 on 2020/12/9.
//

#import <Foundation/Foundation.h>
#import <SVProgressHUD/SVProgressHUD.h>
NS_ASSUME_NONNULL_BEGIN

@interface HJSVProHud : NSObject

@property(nonatomic,copy)void(^handleNotificationNBlock)(NSNotification *notification);

+(instancetype)shareManager;

/// 消除hud
-(void)dismiss;

//展示hud
-(void)show;

/// 展示hud
/// @param status 展示字符串
-(void)showWithStatus:(NSString *)status;

///提示字符串
/// @param info 提示符字符串
-(void)showInfoWithStatus:(NSString *)info;

// 消除一个HUD，根据其实现方法如果前面有执行了好几次show方法，如果给定的progress == 0 或者 pregress < 0那样就会让使一个参数+1，执行这个方法会使那个参数-1，如果参数==0时 执行dismiss方法。
-(void)popActivity;

/// 展示成功的Hud
/// @param sucessStatus 展示成功字符串
-(void)showSuccessWithStatus:(NSString *)sucessStatus;

/// 失败hud
/// @param errorStatus 展示失败字符串
-(void)showErrorWithStatus:(NSString *)errorStatus;

//添加通知
-(void)addNotification;

//移除通知
-(void)removeNotification;


@end

NS_ASSUME_NONNULL_END
