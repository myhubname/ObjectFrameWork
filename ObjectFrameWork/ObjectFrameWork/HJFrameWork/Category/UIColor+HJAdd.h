//
//  UIColor+HJAdd.h
//  ObjectFrameWork
//
//  Created by 胡俊杰 on 2020/12/8.
//

#import <UIKit/UIKit.h>
#import "NSString+HJAdd.h"
NS_ASSUME_NONNULL_BEGIN

@interface UIColor (HJAdd)

/**
 从十六进制字符串创建并返回颜色对象。
 @discussion:
 有效格式: #RGB #RGBA #RRGGBB #RRGGBBAA 0xRGB ...
 The `#` or "0x" sign is not required.
 The alpha will be set to 1.0 if there is no alpha component.
 It will return nil when an error occurs in parsing.
 
 Example: @"0xF0F", @"66ccff", @"#66CCFF88"
 
 @param hexStr  The hex string value for the new color.
 
 @return  An UIColor object from string, or nil if an error occurs.
 */
+ (nullable UIColor *)colorWithHexString:(NSString *)hexStr;



@end

NS_ASSUME_NONNULL_END
