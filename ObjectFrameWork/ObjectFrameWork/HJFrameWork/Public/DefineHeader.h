//
//  DefineHeader.h
//  ObjectFrameWork
//
//  Created by 胡俊杰 on 2020/12/1.
//

#ifndef DefineHeader_h
#define DefineHeader_h

//DEBUG打印
#ifdef DEBUG
#define HJLog(...) NSLog(@"%s 第%d行\n %@\n\n",__func__,__LINE__,[NSString stringWithFormat:__VA_ARGS__])
#else
#define HJLog(...)
#endif

//获取屏幕的Frame
#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
#define SCREENH_HEIGHT [UIScreen mainScreen].bounds.size.height
#define SCREEN_SIZE [UIScreen mainScreen].bounds.size
#define SCREEN [UIScreen mainScreen].bounds

//获取状态栏高度
#define StatusBarHeight [[UIApplication sharedApplication] statusBarFrame].size.height

//导航栏高度
#define NavBarHeight 44.0

//tabbar高度
#define TabbarHeight (StatusBarHeight>20?83:49)

//顶部高度
#define TopHeight (StatusBarHeight + NavBarHeight)

//底部安全高度
#define BottomSafeHeight (StatusBarHeight>20?34:0)

//设置随机颜色,颜色
#define HJRandomColor [UIColor colorWithRed:arc4random_uniform(256)/255.0 green:arc4random_uniform(256)/255.0 blue:arc4random_uniform(256)/255.0 alpha:1.0]

//iOS8以上设置颜色
#define HJRGBANewColor(r, g, b, a) [UIColor colorWithDisplayP3Red:(r)/255.0 green:(g)/255.0 blue:(b)/255.0  alpha:a]

//iOS 设置颜色
#define HJRGBAColor(r,g,b,a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:a]
#define HJRGBColor(r, g, b) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:1.0]

//获取图片
#define kGetImage(imageName) [UIImage imageNamed:[NSString stringWithFormat:@"%@",imageName]]


#endif /* DefineHeader_h */
