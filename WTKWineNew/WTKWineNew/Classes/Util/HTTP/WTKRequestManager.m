//
//  WTKRequestManager.m
//  WTKWineNew
//
//  Created by 韩小胜 on 17/4/24.
//  Copyright © 2017年 WTK. All rights reserved.
//

#import "WTKRequestManager.h"

@implementation WTKRequestManager

+ (RACSignal *)getWithURL:(NSString *)urlString withParamater:(NSDictionary *)paramter{
    AFHTTPSessionManager  *manager = [AFHTTPSessionManager manager];
    manager.requestSerializer.timeoutInterval = 5.0;
    RACSubject *subject = [RACSubject subject];
    [manager GET:urlString parameters:paramter progress:^(NSProgress * _Nonnull uploadProgress) {
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        [subject sendNext:@{@"code":@100,@"data":responseObject}];
        [subject sendCompleted];
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        [subject sendNext:@{@"code":@-400,@"data":@"请求失败"}];
        [subject sendCompleted];
        
    }];
    return  subject;

}

+ (RACSignal *)postWithURL:(NSString *)urlString withParamater:(NSDictionary *)parameter{
    AFHTTPSessionManager  *manager = [AFHTTPSessionManager manager];
    manager.requestSerializer.timeoutInterval = 5.0;
    RACSubject *subject = [RACSubject subject];
    [manager POST:urlString parameters:parameter progress:^(NSProgress * _Nonnull uploadProgress) {
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        [subject sendNext:responseObject];
        [subject sendCompleted];
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        [subject sendNext:@{@"code":@-400}];
        [subject sendCompleted];
        
    }];
    return  subject;
    
}
@end
