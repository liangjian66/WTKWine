//
//  WTKTabBarController.m
//  WTKWineNew
//
//  Created by 韩小胜 on 17/4/20.
//  Copyright © 2017年 WTK. All rights reserved.
//

#import "WTKTabBarController.h"
#import "WTKNavigationController.h"
#import "WTKHomeVC.h"
#import "WTKCategoryVC.h"
#import "WTKFoundVC.h"
#import "WTKShoppingCarVC.h"
#import "WTKMeVC.h"
#import "WTKCommon.h"
@interface WTKTabBarController ()

@end

@implementation WTKTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self addChileVC];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
- (void)addChileVC
{
    
    WTKHomeVC *homeVC           = [[WTKHomeVC alloc]initWithViewModel:[[WTKBasedViewModel alloc]initWithService:nil params:@{@"title":@"首页"}]];
    WTKNavigationController *nav1 = [self setChildVC:homeVC title:@"首页" imageName:@"homeNormal" withSelectedName:@"homeHight"];
    
    WTKCategoryVC *cateVC       = [[WTKCategoryVC alloc]initWithViewModel:[[WTKBasedViewModel alloc]initWithService:nil params:@{@"title":@"分类"}]];
    
    WTKNavigationController *nav2 =  [self setChildVC:cateVC title:@"分类" imageName:@"categoryNormal" withSelectedName:@"categoryHight"];
    
    WTKFoundVC *foundVC         = [[WTKFoundVC alloc]initWithViewModel:[[WTKBasedViewModel alloc]initWithService:nil params:@{@"title":@"发现"}]];
    WTKNavigationController *nav3 =   [self setChildVC:foundVC title:@"发现" imageName:@"foundNormal" withSelectedName:@"foundHight"];
    
    WTKShoppingCarVC *shopVC    = [[WTKShoppingCarVC alloc]initWithViewModel:[[WTKBasedViewModel alloc]initWithService:nil params:@{@"title":@"购物车"}]];
    WTKNavigationController *nav4 =  [self setChildVC:shopVC title:@"购物车" imageName:@"carNormal" withSelectedName:@"carHight"];
    
    WTKMeVC *meVC               = [[WTKMeVC alloc]initWithViewModel:[[WTKBasedViewModel alloc]initWithService:nil params:@{@"title":@"我的"}]];
    WTKNavigationController *nav5 =  [self setChildVC:meVC title:@"我的" imageName:@"meNoraml" withSelectedName:@"meHight"];
    
    self.viewControllers = @[nav1,nav2,nav3,nav4,nav5];
}

- (WTKNavigationController *)setChildVC:(UIViewController *)vc title:(NSString *)title imageName:(NSString *)imgName withSelectedName:(NSString *)selectedName
{
    vc.title                = title;
    vc.tabBarItem.image     = [UIImage imageNamed:imgName];
    vc.tabBarItem.selectedImage = [UIImage imageNamed:selectedName];
    
    vc.tabBarController.tabBar.tintColor   = THEME_COLOR;
    
    NSDictionary *dic       = @{NSForegroundColorAttributeName:BLACK_COLOR,NSFontAttributeName:[UIFont systemFontOfSize:12]};
    [vc.tabBarItem setTitleTextAttributes:dic forState:UIControlStateNormal];
    
    NSDictionary *selectDic = @{NSForegroundColorAttributeName:THEME_COLOR,NSFontAttributeName:[UIFont systemFontOfSize:12]};
    [vc.tabBarItem setTitleTextAttributes:selectDic forState:UIControlStateSelected];
    
    WTKNavigationController *nav = [[WTKNavigationController alloc]initWithRootViewController:vc];
    
    return nav;  //
}

@end
