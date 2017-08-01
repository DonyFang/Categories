//
//  NSString+Blank.m
//  Categorys
//
//  Created by 方冬冬 on 2017/8/1.
//  Copyright © 2017年 方冬冬. All rights reserved.
//

#import "NSString+Blank.h"

@implementation NSString (Blank)
- (BOOL) isBlankString:(id)string {
    if (!string)
    {
        return YES;
    }
    if ([string isKindOfClass:[NSNull class]])
    {
        return YES;
    }
    if ([string isKindOfClass:[NSString class]] || [string isEqualToString:@"(null)"])
    {
        return YES;
    }
    if ([string isKindOfClass:[NSString class]] || [string isEqualToString:@"<null>"])
    {
        return YES;
    }
    if ([string isKindOfClass:[NSString class]] || [string length]==0)
    {
        return YES;
    }
    if ([string isKindOfClass:[NSString class]] || [[string stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]] length]==0)
    {
        return YES;
    }
    return NO;
}


@end
