//
//  WTKHomeCollectionView.m
//  WTKWineNew
//
//  Created by 韩小胜 on 17/5/4.
//  Copyright © 2017年 WTK. All rights reserved.
//

#import "WTKHomeCollectionView.h"
#import "WTKCommon.h"
#import "WTKHomeCell.h"
#import "WTKHomeHeadView.h"

@interface WTKHomeCollectionView ()<UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout,UIScrollViewDelegate,DZNEmptyDataSetSource,DZNEmptyDataSetDelegate>

@end

@implementation WTKHomeCollectionView

- (instancetype)initWithFrame:(CGRect)frame collectionViewLayout:(UICollectionViewLayout *)layout{
   self = [super initWithFrame:frame collectionViewLayout:layout];
    if (self) {
        [self configView];
    }
    return self;
}
- (void)configView{
    self.backgroundColor        = WTKCOLOR(240, 240, 240, 1);
    self.delegate               = self;
    self.dataSource             = self;
    [self registerClass:[WTKHomeCell class] forCellWithReuseIdentifier:@"cell"];
    [self registerClass:[WTKHomeHeadView class] forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"header"];
    self.emptyDataSetSource     = self;
    self.emptyDataSetDelegate   = self;

}
#pragma mark: collection delegate and datasource
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
    
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return self.dataArray.count;
}
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    WTKHomeCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    
    return cell;
}

@end
