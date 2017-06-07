//
//  QPStudent.m
//  QPMJExtensionExample
//
//  Created by ChenQianPing on 17/6/5.
//  Copyright © 2017年 ChenQianPing. All rights reserved.
//

#import "QPStudent.h"

@implementation QPStudent

+ (NSDictionary *)mj_replacedKeyFromPropertyName {

    return @{@"ID" : @"id",
             @"desc" : @"desciption",
             @"oldName" : @"name.oldName",
             @"nowName" : @"name.newName",
             @"nameChangedTime" : @"name.info[1].nameChangedTime",
             @"bag" : @"other.bag"
             };
}

@end
