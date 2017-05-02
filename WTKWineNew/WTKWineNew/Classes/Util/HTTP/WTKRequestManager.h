//
//  WTKRequestManager.h
//  WTKWineNew
//
//  Created by 韩小胜 on 17/4/24.
//  Copyright © 2017年 WTK. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WTKCommon.h"
@interface WTKRequestManager : NSObject
///本地数据（array）
+ (RACSignal *)postArrayDataWithURL:(NSString *)urlString
                       withpramater:(NSDictionary *)paremater;

///本地数据（dic）
+ (RACSignal *)postDicDataWithURL:(NSString *)urlString
                     withpramater:(NSDictionary *)paremater;

+ (RACSignal *)getWithURL:(NSString *)urlString
            withParamater:(NSDictionary *)paramter;

+ (RACSignal *)postWithURL:(NSString *)urlString
             withParamater:(NSDictionary *)parameter;
@end
