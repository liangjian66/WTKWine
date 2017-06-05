//
//  WTKHomeHeadView.h
//  WTKWineNew
//
//  Created by 韩小胜 on 17/5/4.
//  Copyright © 2017年 WTK. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WTKCommon.h"


@interface WTKHomeHeadView : UICollectionReusableView
@property(nonatomic,strong)NSMutableArray   *dataArray;

@property(nonatomic,strong)RACSubject       *bannerSubject;

@property(nonatomic,strong)RACSubject       *btnSubject;
@end
