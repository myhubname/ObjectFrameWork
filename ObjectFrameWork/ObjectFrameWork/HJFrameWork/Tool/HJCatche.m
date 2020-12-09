//
//  HJCatche.m
//  ObjectFrameWork
//
//  Created by 胡俊杰 on 2020/12/9.
//

#import "HJCatche.h"

@implementation HJCatche

#pragma mark-NSUserDefaults的操作
//存值
void userdefaultSave(id value,NSString *key){
    
    [[NSUserDefaults standardUserDefaults] setObject:value forKey:key];
    
    //同步磁盘的数据
    [[NSUserDefaults standardUserDefaults] synchronize];
}

//取值
id userdefaultGet(NSString *key) {
    return [[NSUserDefaults standardUserDefaults] objectForKey:key];
}

//根据key删除特定值
void userDefaultRemove(NSString *key) {
  
    [[NSUserDefaults standardUserDefaults] removeObjectForKey:key];
    
    //同步磁盘的数据
    [[NSUserDefaults standardUserDefaults] synchronize];
}

//删除所有的缓存
void userDefaultRemoveAll(void) {
    
    NSUserDefaults *userdefaults = [NSUserDefaults standardUserDefaults];
    
    NSDictionary *dictionary = [userdefaults dictionaryRepresentation];
    
    for (NSString *key in [dictionary allKeys]) {
        
        userDefaultRemove(key);
    }
}


@end
