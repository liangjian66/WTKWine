//
//  WTKHomeViewModel.m
//  WTKWineNew
//
//  Created by 韩小胜 on 17/4/24.
//  Copyright © 2017年 WTK. All rights reserved.
//

#import "WTKHomeViewModel.h"
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
- (void)initViewModel
{  //
//    @weakify(self);
//   self.refreshCommand = [[RACCommand alloc]initWithSignalBlock:^RACSignal *(id input) {
//       @strongify(self)
//       SHOW_SVP(@"加载中");
//
//       // 必须返回信号 可以返回空的信号
////       return [RACSignal empty];
//   }];

}
@end
