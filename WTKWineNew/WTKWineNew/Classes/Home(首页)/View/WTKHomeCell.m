//
//  WTKHomeCell.m
//  WTKWineNew
//
//  Created by 韩小胜 on 17/5/4.
//  Copyright © 2017年 WTK. All rights reserved.
//

#import "WTKHomeCell.h"
#import "WTKCommon.h"
@interface WTKHomeCell ()
///商品
@property(nonatomic,strong)UIImageView  *wtkImageView;

///标题
@property(nonatomic,strong)UILabel      *wtkTitleLabel;

@property(nonatomic,strong)UILabel      *wtkDescLabel;

@property(nonatomic,strong)UILabel      *wtkPriceLabel;

///无货
@property(nonatomic,strong)UILabel      *wtkStockLabel;

@property(nonatomic,strong)WTKGood      *goods;

///加号减号View
//@property(nonatomic,strong)WTKGoodManagerView *managerView;
@end

@implementation WTKHomeCell

- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        [self configView];
        
        [self bind];
    }
    return self;
}

- (void)configView{
    CGFloat width = self.bounds.size.width;
    WS(weakSelf);
    UIView *bgView                  = [[UIView alloc]init];
    bgView.backgroundColor          = [UIColor whiteColor];
    [self addSubview:bgView];
    [bgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(weakSelf);
        make.size.equalTo(weakSelf);
    }];
    
    self.wtkImageView               = [[UIImageView alloc]init];
    [bgView addSubview:self.wtkImageView];
    [self.wtkImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(bgView);
        make.top.equalTo(bgView);
        make.width.equalTo(bgView);
        make.height.equalTo(bgView.mas_width);
    }];
    
    self.wtkTitleLabel              = [[UILabel alloc]init];
    _wtkTitleLabel.font             = [UIFont wtkNormalFont:15];
    _wtkTitleLabel.textColor        = WTKCOLOR(40, 40, 40, 1);
    [bgView addSubview:self.wtkTitleLabel];
    [_wtkTitleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(bgView).offset(2);
        make.top.equalTo(weakSelf.wtkImageView.mas_bottom).offset(5);
        make.width.mas_equalTo(width - 4);
        make.height.equalTo(@15);
    }];
    
    self.wtkDescLabel               = [[UILabel alloc]init];
    _wtkDescLabel.textAlignment     = NSTextAlignmentCenter;
    _wtkDescLabel.font              = [UIFont wtkNormalFont:10];
    _wtkDescLabel.textColor         = THEME_COLOR;
    _wtkDescLabel.layer.borderColor = THEME_COLOR.CGColor;
    _wtkDescLabel.layer.borderWidth = 0.3;
    _wtkDescLabel.layer.cornerRadius    = 3;
    _wtkDescLabel.layer.masksToBounds   = YES;
    _wtkDescLabel.text = @"精选";
    [bgView addSubview:self.wtkDescLabel];
    
    [_wtkDescLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(bgView).offset(2);
        make.top.equalTo(weakSelf.wtkTitleLabel.mas_bottom).offset(5);
        make.width.mas_equalTo(30 * ZOOM_SCALL);
        make.height.mas_equalTo(15);
    }];
    
    self.wtkPriceLabel              = [[UILabel alloc]init];
    _wtkPriceLabel.font             = [UIFont wtkNormalFont:14];
    _wtkPriceLabel.textColor        = THEME_COLOR;
    _wtkPriceLabel.text             = @"¥135.00";
    [bgView addSubview:_wtkPriceLabel];
    [_wtkPriceLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(bgView).offset(1);
        make.top.equalTo(weakSelf.wtkDescLabel.mas_bottom).offset(5);
        make.width.mas_equalTo(100 * ZOOM_SCALL);
        make.height.equalTo(@15);
    }];
    
    


}

- (void)bind{

}


@end
