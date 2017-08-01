//
//  NSMutableAttributedString+Extention.h
//  Replenishment
//
//  Created by 陈伟斌 on 2016/11/20.
//  Copyright © 2016年 ruwang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSMutableAttributedString (Extention)

+ (NSMutableAttributedString *)rw_attributedStringWithString:(NSString *)text atIndex:(NSInteger)index length:(NSInteger)length fontSize:(NSInteger)fontSize color:(UIColor *)color;
+ (NSMutableAttributedString *)rw_attributedStringWithString:(NSString *)text frontRange:(NSRange)frontRange frontSize:(NSInteger)frontSize frontColor:(UIColor *)frontColor behindRange:(NSRange)behindRange behindSize:(NSInteger)behindSize behindColor:(UIColor *)behindColor;
@end
