//
//  NSMutableAttributedString+Extention.m
//  Replenishment
//
//  Created by 陈伟斌 on 2016/11/20.
//  Copyright © 2016年 ruwang. All rights reserved.
//

#import "NSMutableAttributedString+Extention.h"

@implementation NSMutableAttributedString (Extention)

+ (NSMutableAttributedString *)rw_attributedStringWithString:(NSString *)text atIndex:(NSInteger)index length:(NSInteger)length fontSize:(NSInteger)fontSize color:(UIColor *)color {
    NSMutableAttributedString *attributedStr = [[NSMutableAttributedString alloc]initWithString:text];
    
    [attributedStr addAttribute:NSFontAttributeName
     
                          value:[UIFont systemFontOfSize:fontSize]
     
                          range:NSMakeRange(index, length)];
    
    [attributedStr addAttribute:NSForegroundColorAttributeName
     
                          value:color
     
                          range:NSMakeRange(index, length)];
    
    
    return attributedStr;
    
}
+ (NSMutableAttributedString *)rw_attributedStringWithString:(NSString *)text frontRange:(NSRange)frontRange frontSize:(NSInteger)frontSize frontColor:(UIColor *)frontColor behindRange:(NSRange)behindRange behindSize:(NSInteger)behindSize behindColor:(UIColor *)behindColor {
    NSMutableAttributedString *attributedStr = [[NSMutableAttributedString alloc]initWithString:text];
    
    [attributedStr addAttribute:NSFontAttributeName
     
                          value:[UIFont systemFontOfSize:frontSize]
     
                          range:frontRange];
    
    [attributedStr addAttribute:NSForegroundColorAttributeName
     
                          value:frontColor
     
                          range:frontRange];
    
    [attributedStr addAttribute:NSFontAttributeName
     
                          value:[UIFont systemFontOfSize:behindSize]
     
                          range:behindRange];
    
    [attributedStr addAttribute:NSForegroundColorAttributeName
     
                          value:behindColor
     
                          range:behindRange];
    
    
    return attributedStr;
    
}

@end
