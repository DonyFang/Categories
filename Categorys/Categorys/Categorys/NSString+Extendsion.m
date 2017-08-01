//
//  NSString+Extendsion.m
//  UI搭建
//
//  Created by apple on 15/7/1.
//  Copyright (c) 2015年 TY. All rights reserved.
//

#import "NSString+Extendsion.h"

@implementation NSString (Extendsion)

/**
 *  返回字符串所需大小
 */
- (CGSize) sizeWithFont:(UIFont *)font
{
    return [self sizeWithFont:font maxW:MAXFLOAT];
}

/**
 *  返回字符串所需大小 指定宽度,返回高度
 */
- (CGSize) sizeWithFont:(UIFont *)font maxW:(CGFloat)maxW
{
    NSMutableDictionary *attrs = [NSMutableDictionary dictionary];
    attrs[NSFontAttributeName] = font;
    return [self boundingRectWithSize:CGSizeMake(maxW, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin attributes:attrs context:nil].size;
}

/**
 *  返回字符串所需大小 指定高度,返回宽度度
 */
- (CGSize) sizeWithFont:(UIFont *)font maxH:(CGFloat)maxH
{
    NSMutableDictionary *attrs = [NSMutableDictionary dictionary];
    attrs[NSFontAttributeName] = font;
    return [self boundingRectWithSize:CGSizeMake(MAXFLOAT, maxH) options:NSStringDrawingUsesLineFragmentOrigin attributes:attrs context:nil].size;
}

//返回字符串所占用的尺寸
-(CGSize)sizeWithFont:(UIFont *)font maxSize:(CGSize)maxSize
{
    NSDictionary *attrs = @{NSFontAttributeName : font};
    return [self boundingRectWithSize:maxSize options:NSStringDrawingUsesLineFragmentOrigin attributes:attrs context:nil].size;
}

@end
