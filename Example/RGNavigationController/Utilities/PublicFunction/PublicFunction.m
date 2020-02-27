//
//  PublicFunction.m
//  MVCDemo
//
//  Created by 浮生似梦、Dream on 2018/6/25.
//  Copyright © 2018年 浮生似梦、Dream. All rights reserved.
//

#import "PublicFunction.h"


NSString * emptyString(NSString *anMaybeEmptyString) {
    if ([anMaybeEmptyString isKindOfClass:[NSNumber class]]) {
        anMaybeEmptyString = [NSString stringWithFormat:@"%@",anMaybeEmptyString];
    }
    if (!anMaybeEmptyString || [anMaybeEmptyString isKindOfClass:[NSNull class]] || [anMaybeEmptyString length] == 0) return @"";
    else return anMaybeEmptyString;
}
