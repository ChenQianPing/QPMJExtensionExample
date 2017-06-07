//
//  QPStatus.h
//  QPMJExtensionExample
//
//  Created by ChenQianPing on 17/6/5.
//  Copyright © 2017年 ChenQianPing. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "QPUser.h"


/**
 * Model contains model【模型中嵌套模型】
 */
@interface QPStatus : NSObject

@property (copy, nonatomic) NSString *text;

@property (strong, nonatomic) QPUser *user;
@property (strong, nonatomic) QPStatus *retweetedStatus;

@end
