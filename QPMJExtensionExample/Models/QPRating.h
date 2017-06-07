//
//  QPRating.h
//  QPMJExtensionExample
//
//  Created by ChenQianPing on 17/6/6.
//  Copyright © 2017年 ChenQianPing. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 * 评分
 */
@interface QPRating : NSObject

@property (nonatomic,copy) NSString *max;            /** 最高评分*/
@property (nonatomic,copy) NSString *average;        /** 评分*/
@property (nonatomic,copy) NSString *stars;          /** 评星数*/
@property (nonatomic,copy) NSString *min;            /** 最低评分*/

@end
