//
//  PersonInfoModel.h
//  PersonInfoModelDemo
//
//  Created by 党玉华 on 2018/12/4.
//  Copyright © 2018年 dangyuhua. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PersonInfoModel : NSObject

@property(nonatomic,copy)NSString *name;
@property(nonatomic,copy)NSString *age;
@property(nonatomic,copy)NSString *className;

-(void)setValue:(id)value forUndefinedKey:(NSString *)key;
+(void)setCurrentUser:(NSDictionary *)dict;
+(instancetype)currentUser;
+(void)clearUser;

@end
