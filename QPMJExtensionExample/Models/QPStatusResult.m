//
//  QPStatusResult.m
//  QPMJExtensionExample
//
//  Created by ChenQianPing on 17/6/5.
//  Copyright © 2017年 ChenQianPing. All rights reserved.
//

#import "QPStatusResult.h"

@implementation QPStatusResult

+ (NSDictionary *)mj_objectClassInArray {
    return @{
             @"statuses" : @"QPStatus",
             @"ads" : @"QPAd"
             };
}

@end
