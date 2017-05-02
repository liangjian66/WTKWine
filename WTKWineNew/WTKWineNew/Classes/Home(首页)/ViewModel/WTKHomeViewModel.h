//
//  WTKHomeViewModel.h
//  WTKWineNew
//
//  Created by 韩小胜 on 17/4/24.
//  Copyright © 2017年 WTK. All rights reserved.
//

#import "WTKBasedViewModel.h"
#import "WTKCommon.h"

@interface WTKHomeViewModel : WTKBasedViewModel
/**刷新数据*/
@property(nonatomic,strong)RACCommand   *refreshCommand;

@property(nonatomic,strong)NSArray      *headData;

@property(nonatomic,strong)NSArray      *dataArray;

///头视图
@property(nonatomic,strong)RACCommand   *headCommand;

///中间按钮点击
@property(nonatomic,strong)RACCommand   *btnCommand;

///good
@property(nonatomic,strong)RACCommand   *goodCommand;

///导航栏
@property(nonatomic,strong)RACCommand   *naviCommand;

@property(nonatomic,strong)RACSubject   *searchSubject;
@end
