//
//  QPAvatars.h
//  QPMJExtensionExample
//
//  Created by ChenQianPing on 17/6/6.
//  Copyright © 2017年 ChenQianPing. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 * 影人头像
 */
@interface QPAvatars : NSObject

@property (nonatomic,copy) NSString *small;   /** 70px x 100px(小)尺寸 */
@property (nonatomic,copy) NSString *large;   /** 420px x 600px(大)*/
@property (nonatomic,copy) NSString *medium;  /** 140px x 200px(中)*/

@end
