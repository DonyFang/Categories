//
//  NSString+MD5.m
//  Categorys
//
//  Created by 方冬冬 on 2017/8/1.
//  Copyright © 2017年 方冬冬. All rights reserved.
//

#import "NSString+MD5.h"
#import<CommonCrypto/CommonDigest.h>

@implementation NSString (MD5)

+ (NSString *)md5StringNB:(NSString *)str

{
    const char *myPasswd = [str UTF8String];
    
    unsigned char mdc[16];
    
    CC_MD5(myPasswd, (CC_LONG)strlen(myPasswd), mdc);
    
    NSMutableString *md5String = [NSMutableString string];
    
    [md5String appendFormat:@"%02x",mdc[0]];
    
    for (int i = 1; i< 16; i++) {
        
        [md5String appendFormat:@"%02x",mdc[i]^mdc[0]];
        
    }
    
    return md5String;
    
}@end
