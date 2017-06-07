//
//  QPSubjects.h
//  QPMJExtensionExample
//
//  Created by ChenQianPing on 17/6/6.
//  Copyright © 2017年 ChenQianPing. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "QPRating.h"
#import "QPImages.h"


/**
 * 条目列表
 */

@interface QPSubjects : NSObject

@property (strong,nonatomic) QPRating *rating;                /** 评分*/
@property (nonatomic,strong) NSMutableArray  *genres;         /** 影片类型,最多提供3个*/
@property (nonatomic,copy) NSString *title;                   /** 中文名*/
@property (nonatomic,strong) NSMutableArray *casts;           /** 主演,最多可获得4个m数据结构为影人的简化描述*/
@property (nonatomic,copy) NSString *collect_count;  /** 看过人数*/
@property (nonatomic,copy) NSString *original_title; /** 原名*/
@property (nonatomic,copy) NSString *subtype;        /** 条目分类, movie或者tv*/
@property (nonatomic,strong) NSMutableArray *directors;          /** 导演,数据结构为影人的简化描述*/
@property (nonatomic,copy) NSString *year;          /** 年代*/
@property (strong,nonatomic) QPImages *images;        /** 电影海报图*/
@property (nonatomic,copy) NSString *alt;           /** 条目页URL*/
@property (nonatomic,copy) NSString *id;            /** 条目id*/

@end
