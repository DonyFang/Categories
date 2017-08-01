//
//  UserInfoManager.m
//  Categorys
//
//  Created by 方冬冬 on 2017/8/1.
//  Copyright © 2017年 方冬冬. All rights reserved.
//

#import "UserInfoManager.h"
#import "NSString+Blank.h"
static id singleton;

@implementation UserInfoManager
 + (instancetype)defaultManager{
    static UserInfoManager *singleton = nil;
    //给单例加了一个线程锁
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        singleton = [[UserInfoManager alloc] init];
    }); 
    return singleton;
 }

+ (instancetype)allocWithZone:(struct _NSZone *)zone
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        singleton = [super allocWithZone:zone];
    });
    return singleton;
}

- (id)copyWithZone:(NSZone *)zone
{
    return singleton;
}

- (id)mutableCopyWithZone:(NSZone *)zone {
    return singleton;
}

/**保存用户的登录状态*/
+ (void)conserveUserLoginStatus:(NSString *)userLoginStatus {
    [[NSUserDefaults standardUserDefaults] setObject:userLoginStatus forKey:@"userLoginStatus"];
    [[NSUserDefaults standardUserDefaults] synchronize];
}
/**获取用户的登录状态*/
+ (NSString *)getUserLoginStatus {
    NSString *userLoginStatus = [[NSUserDefaults standardUserDefaults] objectForKey:@"userLoginStatus"];
    if (userLoginStatus == nil) {
        return @"";
    }
    return userLoginStatus;
}

@end
