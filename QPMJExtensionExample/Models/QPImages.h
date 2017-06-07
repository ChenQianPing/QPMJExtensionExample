//
//  QPImages.h
//  QPMJExtensionExample
//
//  Created by ChenQianPing on 17/6/6.
//  Copyright © 2017年 ChenQianPing. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 * 电影海报图
 */
@interface QPImages : NSObject

@property (nonatomic,copy) NSString *small;   /** 64px x 103px(小)尺寸 */
@property (nonatomic,copy) NSString *large;   /** 288px x 465px(大)*/
@property (nonatomic,copy) NSString *medium;  /** 288px x 465px(大)*/

@end
