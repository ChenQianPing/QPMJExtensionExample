//
//  ViewController.m
//  QPMJExtensionExample
//
//  Created by ChenQianPing on 17/6/5.
//  Copyright © 2017年 ChenQianPing. All rights reserved.
//

#import "ViewController.h"
#import "MJExtension.h"

#import "QPUser.h"
#import "QPStatus.h"
#import "QPAd.h"
#import "QPStatusResult.h"
#import "QPStudent.h"

#import "QPTop250Model.h"
#import "QPSubjects.h"
#import "QPCasts.h"
#import "QPDirectors.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // [self jsonToModel1];
    // [self jsonToModel2];
    // [self jsonToModel3];
    // [self jsonToModel4];
    // [self jsonToModel5];
    // [self jsonToModel6];
    // [self jsonToModel7];
    // [self jsonToModel8];
    [self jsonToMode0];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - jsonToModel

- (void)jsonToMode0 {
    
    // Tell MJExtension what type model will be contained in statuses and ads.
    [QPTop250Model mj_setupObjectClassInArray:^NSDictionary *{
        return @{
                 @"subjects" : @"QPSubjects"
                 // @"subjects" : [Subjects class]
                 };
    }];
    // Equals: StatusResult.m implements +mj_objectClassInArray method.
    
    NSDictionary *dict = @{
                           @"count":@1,
                           @"start":@0,
                           @"total":@250,
                           @"subjects":@[
                                       @{
                                           @"rating":@{
                                               @"max":@10,
                                               @"average":@9.6,
                                               @"stars":@"50",
                                               @"min":@0
                                           },
                                           @"genres":@[
                                                     @"犯罪",
                                                     @"剧情"
                                                     ],
                                           @"title":@"肖申克的救赎",
                                           @"casts":@[
                                                    @{
                                                        @"alt":@"https://movie.douban.com/celebrity/1054521/",
                                                        @"avatars":@{
                                                            @"small":@"https://img3.doubanio.com/img/celebrity/small/17525.jpg",
                                                            @"large":@"https://img3.doubanio.com/img/celebrity/large/17525.jpg",
                                                            @"medium":@"https://img3.doubanio.com/img/celebrity/medium/17525.jpg"
                                                        },
                                                        @"name":@"蒂姆·罗宾斯",
                                                        @"id":@"1054521"
                                                    },
                                                    @{
                                                        @"alt":@"https://movie.douban.com/celebrity/1054534/",
                                                        @"avatars":@{
                                                            @"small":@"https://img3.doubanio.com/img/celebrity/small/34642.jpg",
                                                            @"large":@"https://img3.doubanio.com/img/celebrity/large/34642.jpg",
                                                            @"medium":@"https://img3.doubanio.com/img/celebrity/medium/34642.jpg"
                                                        },
                                                        @"name":@"摩根·弗里曼",
                                                        @"id":@"1054534"
                                                    },
                                                    @{
                                                        @"alt":@"https://movie.douban.com/celebrity/1041179/",
                                                        @"avatars":@{
                                                            @"small":@"https://img1.doubanio.com/img/celebrity/small/5837.jpg",
                                                            @"large":@"https://img1.doubanio.com/img/celebrity/large/5837.jpg",
                                                            @"medium":@"https://img1.doubanio.com/img/celebrity/medium/5837.jpg"
                                                        },
                                                        @"name":@"鲍勃·冈顿",
                                                        @"id":@"1041179"
                                                    }
                                                    ],
                                           @"collect_count":@1069247,
                                           @"original_title":@"The Shawshank Redemption",
                                           @"subtype":@"movie",
                                           @"directors":@[
                                                        @{
                                                            @"alt":@"https://movie.douban.com/celebrity/1047973/",
                                                            @"avatars":@{
                                                                @"small":@"https://img3.doubanio.com/img/celebrity/small/230.jpg",
                                                                @"large":@"https://img3.doubanio.com/img/celebrity/large/230.jpg",
                                                                @"medium":@"https://img3.doubanio.com/img/celebrity/medium/230.jpg"
                                                            },
                                                            @"name":@"弗兰克·德拉邦特",
                                                            @"id":@"1047973"
                                                        }
                                                        ],
                                           @"year":@"1994",
                                           @"images":@{
                                               @"small":@"https://img3.doubanio.com/view/movie_poster_cover/ipst/public/p480747492.webp",
                                               @"large":@"https://img3.doubanio.com/view/movie_poster_cover/lpst/public/p480747492.webp",
                                               @"medium":@"https://img3.doubanio.com/view/movie_poster_cover/spst/public/p480747492.webp"
                                           },
                                           @"alt":@"https://movie.douban.com/subject/1292052/",
                                           @"id":@"1292052"
                                       }
                                       ],
                           @"title":@"豆瓣电影Top250"
                           };
    
    
    
    
    QPTop250Model *top250 = [QPTop250Model mj_objectWithKeyValues:dict];
    
    NSLog(@"count=%@", top250.count);
    NSLog(@"start=%@", top250.start);
    NSLog(@"total=%@", top250.total);
    NSLog(@"title=%@", top250.title);
    NSLog(@"subjects.count=%lu", (unsigned long)top250.subjects.count);
    
    // Printing Subjects
    for (QPSubjects *subject in top250.subjects) {
        
        
        // NSLog(@"subject=%@", subject);
        NSLog(@"subject.title=%@", subject.title);
        NSLog(@"subject.original_title=%@", subject.original_title);
        NSLog(@"subject.genres=%@", subject.genres);
        NSLog(@"subject.collect_count=%@", subject.collect_count);
        NSLog(@"subject.subtype=%@", subject.subtype);
        NSLog(@"subject.year=%@", subject.year);
        
        // NSLog(@"subject.rating=%@", subject.rating);         // 嵌套模型
        NSLog(@"subject.rating.average=%@", subject.rating.average);
        
        // NSLog(@"subject.images=%@", subject.images);         // 嵌套模型
        NSLog(@"subject.images.large=%@", subject.images.large);
        
        // NSLog(@"subject.directors=%@", subject.directors);   // 数组属性
        // NSLog(@"subject.casts=%@", subject.casts);           // 数组属性
        
        for (NSString *genre in subject.genres) {
            
            NSLog(@"genre=%@", genre);
            
        }
        
        for (QPDirectors *directors in subject.directors) {
            
            NSLog(@"directors.name=%@", directors.name);
            NSLog(@"directors.avatars.large=%@", directors.avatars.large);
            
        }
        
        for (QPCasts *casts in subject.casts) {
            
            NSLog(@"casts.name=%@", casts.name);
            NSLog(@"casts.avatars.large=%@", casts.avatars.large);
            
        }
        
        

    }
    
    
}

/**
 * The most simple JSON -> Model【最简单的字典转模型】
 */
- (void)jsonToModel1 {
    
    NSDictionary *dict = @{
                           @"name" : @"Jack",
                           @"icon" : @"lufy.png",
                           @"age" : @20,
                           @"height" : @"1.55",
                           @"money" : @100.9,
                           @"sex" : @(SexFemale),
                           @"gay" : @"true"
                           };
    
    // JSON -> User
    QPUser *user = [QPUser mj_objectWithKeyValues:dict];
    NSLog(@"name=%@, icon=%@, age=%zd, height=%@, money=%@, sex=%d, gay=%d", user.name, user.icon, user.age, user.height, user.money, user.sex, user.gay);
    
    // name=Jack, icon=lufy.png, age=20, height=1.55, money=100.9, sex=1, gay=1
    
}

/**
 * JSONString -> Model【JSON字符串转模型】
 */
- (void)jsonToModel2 {
    
    // 1.Define a JSONString
    NSString *jsonString = @"{\"name\":\"Jack\", \"icon\":\"lufy.png\", \"age\":20}";
    
    // 2.JSONString -> User
    QPUser *user = [QPUser mj_objectWithKeyValues:jsonString];
    
    // 3.Print user's properties
    NSLog(@"name=%@, icon=%@, age=%d", user.name, user.icon, user.age);
    // name=Jack, icon=lufy.png, age=20
    
}

/**
 * Model contains model【模型中嵌套模型】
 */
- (void)jsonToModel3 {
    NSDictionary *dict = @{
                           @"text" : @"Agree!Nice weather!",
                           @"user" : @{
                                   @"name" : @"Jack",
                                   @"icon" : @"lufy.png"
                                   },
                           @"retweetedStatus" : @{
                                   @"text" : @"Nice weather!",
                                   @"user" : @{
                                           @"name" : @"Rose",
                                           @"icon" : @"nami.png"
                                           }
                                   }
                           };
    
    // JSON -> Status
    QPStatus *status = [QPStatus mj_objectWithKeyValues:dict];
    
    NSString *text = status.text;
    NSString *name = status.user.name;
    NSString *icon = status.user.icon;
    NSLog(@"text=%@, name=%@, icon=%@", text, name, icon);
    // text=Agree!Nice weather!, name=Jack, icon=lufy.png
    
    NSString *text2 = status.retweetedStatus.text;
    NSString *name2 = status.retweetedStatus.user.name;
    NSString *icon2 = status.retweetedStatus.user.icon;
    NSLog(@"text2=%@, name2=%@, icon2=%@", text2, name2, icon2);
    // text2=Nice weather!, name2=Rose, icon2=nami.png
}

/**
 * Model contains model-array【模型中有个数组属性,数组里面又要装着其他模型】
 */
- (void)jsonToModel4 {
    
    // Tell MJExtension what type model will be contained in statuses and ads.
    [QPStatusResult mj_setupObjectClassInArray:^NSDictionary *{
        return @{
                 @"statuses" : @"QPStatus",
                 // @"statuses" : [Status class],
                 @"ads" : @"QPAd"
                 // @"ads" : [Ad class]
                 };
    }];
    // Equals: StatusResult.m implements +mj_objectClassInArray method.
    
    NSDictionary *dict = @{
                           @"statuses" : @[
                                   @{
                                       @"text" : @"Nice weather!",
                                       @"user" : @{
                                               @"name" : @"Rose",
                                               @"icon" : @"nami.png"
                                               }
                                       },
                                   @{
                                       @"text" : @"Go camping tomorrow!",
                                       @"user" : @{
                                               @"name" : @"Jack",
                                               @"icon" : @"lufy.png"
                                               }
                                       }
                                   ],
                           @"ads" : @[
                                   @{
                                       @"image" : @"ad01.png",
                                       @"url" : @"http://www.ad01.com"
                                       },
                                   @{
                                       @"image" : @"ad02.png",
                                       @"url" : @"http://www.ad02.com"
                                       }
                                   ],
                           @"totalNumber" : @"2014"
                           };
    
    // JSON -> StatusResult
    QPStatusResult *result = [QPStatusResult mj_objectWithKeyValues:dict];
    
    NSLog(@"totalNumber=%@", result.totalNumber);
    // totalNumber=2014
    
    // Printing
    for (QPStatus *status in result.statuses) {
        NSString *text = status.text;
        NSString *name = status.user.name;
        NSString *icon = status.user.icon;
        NSLog(@"text=%@, name=%@, icon=%@", text, name, icon);
    }
    // text=Nice weather!, name=Rose, icon=nami.png
    // text=Go camping tomorrow!, name=Jack, icon=lufy.png
    
    // Printing
    for (QPAd *ad in result.ads) {
        NSLog(@"image=%@, url=%@", ad.image, ad.url);
    }
    // image=ad01.png, url=http://www.ad01.com
    // image=ad02.png, url=http://www.ad02.com
    
}

/**
 * Model name - JSON key mapping【模型中的属性名和字典中的key不相同(或者需要多级映射)】
 */
- (void)jsonToModel5 {
    
    // How to map
    [QPStudent mj_setupReplacedKeyFromPropertyName:^NSDictionary *{
        return @{
                 @"ID" : @"id",
                 @"desc" : @"desciption",
                 @"oldName" : @"name.oldName",
                 @"nowName" : @"name.newName",
                 @"nameChangedTime" : @"name.info[1].nameChangedTime",
                 @"bag" : @"other.bag"
                 };
    }];
    // Equals: Student.m implements +mj_replacedKeyFromPropertyName method.
    
    NSDictionary *dict = @{
                           @"id" : @"20",
                           @"desciption" : @"kids",
                           @"name" : @{
                                   @"newName" : @"lufy",
                                   @"oldName" : @"kitty",
                                   @"info" : @[
                                           @"test-data",
                                           @{
                                               @"nameChangedTime" : @"2013-08"
                                               }
                                           ]
                                   },
                           @"other" : @{
                                   @"bag" : @{
                                           @"name" : @"a red bag",
                                           @"price" : @100.7
                                           }
                                   }
                           };
    
    // JSON -> Student
    QPStudent *stu = [QPStudent mj_objectWithKeyValues:dict];
    
    // Printing
    NSLog(@"ID=%@, desc=%@, oldName=%@, nowName=%@, nameChangedTime=%@",
          stu.ID, stu.desc, stu.oldName, stu.nowName, stu.nameChangedTime);
    // ID=20, desc=kids, oldName=kitty, nowName=lufy, nameChangedTime=2013-08
    NSLog(@"bagName=%@, bagPrice=%f", stu.bag.name, stu.bag.price);
    // bagName=a red bag, bagPrice=100.700000
    
}

/**
 * JSON array -> model array【将一个字典数组转成模型数组】
 */
- (void)jsonToModel6 {
    
    NSArray *dictArray = @[
                           @{
                               @"name" : @"Jack",
                               @"icon" : @"lufy.png"
                               },
                           @{
                               @"name" : @"Rose",
                               @"icon" : @"nami.png"
                               }
                           ];
    
    // JSON array -> User array
    NSArray *userArray = [QPUser mj_objectArrayWithKeyValuesArray:dictArray];
    
    // Printing
    for (QPUser *user in userArray) {
        NSLog(@"name=%@, icon=%@", user.name, user.icon);
    }
    // name=Jack, icon=lufy.png
    // name=Rose, icon=nami.png
    
}

/**
 * Model -> JSON【将一个模型转成字典】
 */
- (void)jsonToModel7 {
    
    // New model
    QPUser *user = [[QPUser alloc] init];
    user.name = @"Jack";
    user.icon = @"lufy.png";
    
    QPStatus *status = [[QPStatus alloc] init];
    status.user = user;
    status.text = @"Nice mood!";
    
    // Status -> JSON
    NSDictionary *statusDict = status.mj_keyValues;
    NSLog(@"%@", statusDict);
    /*
     {
         text = "Nice mood!";
         user =     {
             icon = "lufy.png";
             name = Jack;
         };
     }
     */
    
    // More complex situation
    QPStudent *stu = [[QPStudent alloc] init];
    stu.ID = @"123";
    stu.oldName = @"rose";
    stu.nowName = @"jack";
    stu.desc = @"handsome";
    stu.nameChangedTime = @"2018-09-08";
    
    QPBag *bag = [[QPBag alloc] init];
    bag.name = @"a red bag";
    bag.price = 205;
    stu.bag = bag;
    
    NSDictionary *stuDict = stu.mj_keyValues;
    NSLog(@"%@", stuDict);
    /*
     {
         ID = 123;
         bag =     {
             name = "\U5c0f\U4e66\U5305";
             price = 205;
         };
         desc = handsome;
         nameChangedTime = "2018-09-08";
         nowName = jack;
         oldName = rose;
     }
     */
}

/**
 * Model array -> JSON array【将一个模型数组转成字典数组】
 */
- (void)jsonToModel8 {
    
    // New model array
    QPUser *user1 = [[QPUser alloc] init];
    user1.name = @"Jack";
    user1.icon = @"lufy.png";
    
    QPUser *user2 = [[QPUser alloc] init];
    user2.name = @"Rose";
    user2.icon = @"nami.png";
    
    NSArray *userArray = @[user1, user2];
    
    // Model array -> JSON array
    NSArray *dictArray = [QPUser mj_keyValuesArrayWithObjectArray:userArray];
    NSLog(@"%@", dictArray);
    /*
     (
         {
             age = 0;
             gay = 0;
             icon = "lufy.png";
             name = Jack;
             sex = 0;
         },
         {
             age = 0;
             gay = 0;
             icon = "nami.png";
             name = Rose;
             sex = 0;
         }
     )
     */
    
}

@end
