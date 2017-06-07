//
//  QPDirectors.h
//  QPMJExtensionExample
//
//  Created by ChenQianPing on 17/6/6.
//  Copyright © 2017年 ChenQianPing. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "QPAvatars.h"

/**
 * 导演
 */
@interface QPDirectors : NSObject

@property (nonatomic,copy) NSString *alt;          /** 条目页URL*/
@property (nonatomic,strong) QPAvatars *avatars;   /** 影人头像,分别提供420px x 600px(大),140px x 200px(中) 70px x 100px(小)尺寸*/
@property (nonatomic,copy) NSString *name;   /** 导演名字*/
@property (nonatomic,copy) NSString *id;     /** 条目id*/

@end
