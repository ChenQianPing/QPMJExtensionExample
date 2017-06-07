//
//  QPTop250Model.h
//  QPMyKit
//
//  Created by ChenQianPing on 17/6/4.
//  Copyright © 2017年 ChenQianPing. All rights reserved.
//

#import <Foundation/Foundation.h>


/**
 * Top250
 */
@interface QPTop250Model : NSObject

@property (nonatomic,copy) NSString *count;
@property (nonatomic,copy) NSString *start;
@property (nonatomic,copy) NSString *total;             /** 总数*/
@property (nonatomic,strong) NSMutableArray *subjects;  /** 条目列表*/
@property (nonatomic,copy) NSString *title;             /** 排行榜名称*/

@end






/**
 * https://developers.douban.com/wiki/?title=movie_v2#top250
 * https://api.douban.com/v2/movie/top250?start=0&count=1
 
 * {
     "count":1,
     "start":0,
     "total":250,
     "subjects":[
         {
         "rating":{
             "max":10,
             "average":9.6,
             "stars":"50",
             "min":0
         },
         "genres":[
             "犯罪",
             "剧情"
         ],
         "title":"肖申克的救赎",
         "casts":[
             {
                 "alt":"https://movie.douban.com/celebrity/1054521/",
                 "avatars":{
                     "small":"https://img3.doubanio.com/img/celebrity/small/17525.jpg",
                     "large":"https://img3.doubanio.com/img/celebrity/large/17525.jpg",
                     "medium":"https://img3.doubanio.com/img/celebrity/medium/17525.jpg"
                 },
                 "name":"蒂姆·罗宾斯",
                 "id":"1054521"
             },
             {
             "alt":"https://movie.douban.com/celebrity/1054534/",
             "avatars":{
                 "small":"https://img3.doubanio.com/img/celebrity/small/34642.jpg",
                 "large":"https://img3.doubanio.com/img/celebrity/large/34642.jpg",
                 "medium":"https://img3.doubanio.com/img/celebrity/medium/34642.jpg"
                 },
             "name":"摩根·弗里曼",
             "id":"1054534"
             },
             {
             "alt":"https://movie.douban.com/celebrity/1041179/",
             "avatars":{
                 "small":"https://img1.doubanio.com/img/celebrity/small/5837.jpg",
                 "large":"https://img1.doubanio.com/img/celebrity/large/5837.jpg",
                 "medium":"https://img1.doubanio.com/img/celebrity/medium/5837.jpg"
                 },
             "name":"鲍勃·冈顿",
             "id":"1041179"
             }
         ],
         "collect_count":1069247,
         "original_title":"The Shawshank Redemption",
         "subtype":"movie",
         "directors":[
             {
                 "alt":"https://movie.douban.com/celebrity/1047973/",
                 "avatars":{
                     "small":"https://img3.doubanio.com/img/celebrity/small/230.jpg",
                     "large":"https://img3.doubanio.com/img/celebrity/large/230.jpg",
                     "medium":"https://img3.doubanio.com/img/celebrity/medium/230.jpg"
                 },
                 "name":"弗兰克·德拉邦特",
                 "id":"1047973"
             }
         ],
         "year":"1994",
         "images":{
             "small":"https://img3.doubanio.com/view/movie_poster_cover/ipst/public/p480747492.webp",
             "large":"https://img3.doubanio.com/view/movie_poster_cover/lpst/public/p480747492.webp",
             "medium":"https://img3.doubanio.com/view/movie_poster_cover/spst/public/p480747492.webp"
         },
         "alt":"https://movie.douban.com/subject/1292052/",
         "id":"1292052"
         }
         ],
         "title":"豆瓣电影Top250"
 }
 */
