//
//  QPStudent.h
//  QPMJExtensionExample
//
//  Created by ChenQianPing on 17/6/5.
//  Copyright © 2017年 ChenQianPing. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "QPBag.h"

@interface QPStudent : NSObject

@property (copy, nonatomic) NSString *ID;
@property (copy, nonatomic) NSString *desc;
@property (copy, nonatomic) NSString *nowName;
@property (copy, nonatomic) NSString *oldName;
@property (copy, nonatomic) NSString *nameChangedTime;
@property (strong, nonatomic) QPBag *bag;

@end
