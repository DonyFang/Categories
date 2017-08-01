//
//  UserInfoManager.h
//  Categorys
//
//  Created by 方冬冬 on 2017/8/1.
//  Copyright © 2017年 方冬冬. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UserInfoManager : NSObject
+ (instancetype)defaultManager;

/**保存用户的登录状态*/
+ (void)conserveUserLoginStatus:(NSString *)userLoginStatus;
/**获取用户的登录状态*/
+ (NSString *)getUserLoginStatus;

@end
