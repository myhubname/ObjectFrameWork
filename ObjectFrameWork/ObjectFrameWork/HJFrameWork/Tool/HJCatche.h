//
//  HJCatche.h
//  ObjectFrameWork
//
//  Created by 胡俊杰 on 2020/12/9.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface HJCatche : NSObject

#pragma mark-NSUserDefault使用
/// NSUserDefault
/// @param value 存值
/// @param key 对应的键值
void userdefaultSave(id value,NSString *key);

/// 取值
/// @param key 键值
id userdefaultGet(NSString *key);

/// 根据键值删除
/// @param key 键值
void userDefaultRemove(NSString *key);

//删除所有的缓存值
void userDefaultRemoveAll(void);


@end

NS_ASSUME_NONNULL_END
