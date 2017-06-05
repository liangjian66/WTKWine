//
//  WTKHomeBannerCollectionViewCell.m
//  WTKWineNew
//
//  Created by 韩小胜 on 17/6/5.
//  Copyright © 2017年 WTK. All rights reserved.
//

#import "WTKHomeBannerCollectionViewCell.h"

@implementation WTKHomeBannerCollectionViewCell
- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        [self setupMainUI];
    }
    return self;
}

- (void)setupMainUI{
    self.imageView = [UIImageView new];
    [self.contentView addSubview:self.imageView];
    [self.imageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.equalTo(self.contentView.mas_width);
        make.height.equalTo(self.contentView.mas_height);
        make.top.equalTo(self.contentView.mas_top);
        make.left.equalTo(self.contentView.mas_left);
        
    }];

}
@end
