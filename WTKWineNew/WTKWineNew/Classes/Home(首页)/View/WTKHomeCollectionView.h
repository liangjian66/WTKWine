//
//  WTKHomeCollectionView.h
//  WTKWineNew
//
//  Created by 韩小胜 on 17/5/4.
//  Copyright © 2017年 WTK. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WTKHomeViewModel.h"

@interface WTKHomeCollectionView : UICollectionView
@property(nonatomic,strong)NSArray          *headArray;

@property(nonatomic,strong)NSMutableArray   *dataArray;

@property(nonatomic,strong)WTKHomeViewModel *viewModel;
@end
