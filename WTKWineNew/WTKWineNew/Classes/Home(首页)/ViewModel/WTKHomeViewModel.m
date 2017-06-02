//
//  WTKHomeViewModel.m
//  WTKWineNew
//
//  Created by 韩小胜 on 17/4/24.
//  Copyright © 2017年 WTK. All rights reserved.
//

#import "WTKHomeViewModel.h"
#import "WTKRequestManager.h"
#import "WTKCommon.h"
#import "WTKGood.h"

@implementation WTKHomeViewModel
- (instancetype)initWithService:(id<WTKViewModelServices>)service params:(NSDictionary *)params
{
    self = [super initWithService:service params:params];
    if (self)
    {
        [self initViewModel];
    }
    return self;
}
#pragma mark: 绑定  viewModel
- (void)initViewModel
{
    @weakify(self);
   self.refreshCommand = [[RACCommand alloc]initWithSignalBlock:^RACSignal *(id input) {
       @strongify(self)
       SHOW_SVP(@"加载中");

       // 必须返回信号 可以返回空
//       return [RACSignal empty];
       NSMutableDictionary *param = [NSMutableDictionary new];
       param[@"id"]  = @"56c45924c2fb4e2050000022";
       RACSignal *signal1 = [WTKRequestManager getWithURL:@"http://www.jiuyunda.net:90/api/v1/product/slideshow" withParamater:param];

       [signal1 subscribeNext:^(id x) {
           NSLog(@"%@",x);
       }];  

       RACSignal *signal2 = [WTKRequestManager postArrayDataWithURL:Home_Data withpramater:nil];
    RACSignal *signal3 = [self rac_liftSelector:@selector(updateData:headDic:) withSignalsFromArray:@[signal1,signal2]];
       [signal3 subscribeNext:^(id x) {
           [SVProgressHUD dismiss];
           UICollectionView *collectionView = input;
           if (collectionView.mj_header.isRefreshing)
           {
               [collectionView reloadData];
               [collectionView.mj_header endRefreshing];
           }
           
       }];
       
       return  signal3;
   }];
    self.headCommand = [[RACCommand alloc]initWithSignalBlock:^RACSignal *(id input) {
        NSLog(@"%@",input);
        return [RACSignal empty];
        
    }];
    self.btnCommand = [[RACCommand alloc]initWithSignalBlock:^RACSignal *(id input) {
        NSLog(@"%@",input);
        NSInteger tag = [input integerValue];
        switch (tag) {
            case 100:
                
                break;
            case 101:
                
                break;
            case 102:
                
                break;
            case 103:
                
                break;
                
            default:
                break;
        }
        
        return [RACSignal empty];
        
    }];
    // RAC 的项目架构
    self.goodCommand = [[RACCommand alloc]initWithSignalBlock:^RACSignal *(id input) {
        
        return [RACSignal empty];
    }];
    self.naviCommand = [[RACCommand alloc]initWithSignalBlock:^RACSignal *(id input) {
        NSLog(@"%@",input);
        return [RACSignal empty];
    }];
    
    self.searchSubject = [RACSubject subject];
    [self.searchSubject subscribeNext:^(id x) {  // 订阅信号 如果要出发 发送信号就可以了
        
    }];
    

}

- (void)updateData:(id)headArray headDic:(NSArray *)dataArray
{
#warning 以后修改  
    //    return;
    if ([headArray[@"code"] integerValue] == 100)
    {
        self.headData = headArray[@"data"];
        NSMutableArray *array = [NSMutableArray array];
        for (NSDictionary *dic in dataArray)
        {
            WTKGood *good = [WTKGood mj_objectWithKeyValues:dic];
            [array addObject:good];
            
        } //
        self.dataArray = [NSArray arrayWithArray:array];
    }
    else
    {
        self.headData = [NSArray array];
        self.dataArray = [NSArray array];
    }
    
}
@end
