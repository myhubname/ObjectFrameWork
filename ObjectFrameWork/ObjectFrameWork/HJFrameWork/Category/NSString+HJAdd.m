//
//  NSString+HJAdd.m
//  ObjectFrameWork
//
//  Created by 胡俊杰 on 2020/12/8.
//

#import "NSString+HJAdd.h"

@implementation NSString (HJAdd)

// *删除头和尾中的空白字符（空格和换行符)
-(NSString *)stringByTrim
{
    NSCharacterSet *set = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    return [self stringByTrimmingCharactersInSet:set];
}

@end
