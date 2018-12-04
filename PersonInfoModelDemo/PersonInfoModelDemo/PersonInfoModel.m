//
//  PersonInfoModel.m
//  PersonInfoModelDemo
//
//  Created by 党玉华 on 2018/12/4.
//  Copyright © 2018年 dangyuhua. All rights reserved.
//

#import "PersonInfoModel.h"

@implementation PersonInfoModel

static PersonInfoModel *current_user = nil;

+(void)setCurrentUser:(NSDictionary *)dict{
    current_user = [[PersonInfoModel alloc]init];
    [current_user setValuesForKeysWithDictionary:dict];
}

+(instancetype)currentUser{
    return current_user;
}

+(void)clearUser{
    current_user = nil;
}

-(void)setValue:(id)value forUndefinedKey:(NSString *)key{
    
}

- (void)setValue:(id)value forKey:(NSString *)key{
    
    if([value isKindOfClass:[NSNull class]] || [value isEqual:@""]){
        [super setValue:nil forKey:key];
    }else if([value isKindOfClass:[NSNumber class]]){
        [super setValue:[NSString stringWithFormat:@"%@",value] forKey:key];
    }else{
        [super setValue:value forKey:key];
    }
}

@end
