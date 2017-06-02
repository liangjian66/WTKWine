//
//  WTKHomeCell.h
//  WTKWineNew
//
//  Created by 韩小胜 on 17/5/4.
//  Copyright © 2017年 WTK. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WTKGood.h"
@interface WTKHomeCell : UICollectionViewCell
///是否为搜索界面的cell(标志是否做动画)
@property(nonatomic,assign)BOOL isSearch;

- (void)updateGood:(WTKGood *)goods;

@end
