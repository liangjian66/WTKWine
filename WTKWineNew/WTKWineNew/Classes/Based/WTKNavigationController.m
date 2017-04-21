//
//  WTKNavigationController.m
//  WTKWineNew
//
//  Created by 韩小胜 on 17/4/20.
//  Copyright © 2017年 WTK. All rights reserved.
//

#import "WTKNavigationController.h"
#import "WTKBasedViewController.h"
#import "WTKBaseAnimation.h"

@interface WTKNavigationController ()<UINavigationControllerDelegate>

@end

@implementation WTKNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self resetNavi];
    self.delegate = self;
    self.navigationBar.titleTextAttributes = @{NSForegroundColorAttributeName:[UIColor whiteColor]};
}
/**
 导航栏
 */
- (void)resetNavi
{
    //
    //
    
}
- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    if (self.viewControllers.count > 0)
    {
        viewController.hidesBottomBarWhenPushed = YES;
    }
    [super pushViewController:viewController animated:animated];
}

- (nullable id <UIViewControllerInteractiveTransitioning>)navigationController:(UINavigationController *)navigationController
                                   interactionControllerForAnimationController:(WTKBaseAnimation*) animationControlle
{
    return animationControlle.interactivePopTransition;
}

- (nullable id <UIViewControllerAnimatedTransitioning>)navigationController:(UINavigationController *)navigationController
                                            animationControllerForOperation:(UINavigationControllerOperation)operation
                                                         fromViewController:(WTKBasedViewController *)fromVC
                                                           toViewController:(UIViewController *)toVC
{
    //    WTKBaseAnimation *animation = [[WTKBaseAnimation alloc]init];
    if (fromVC.interactivePopTransition)
    {
        WTKBaseAnimation *animation = [[WTKBaseAnimation alloc]initWithType:operation Duration:0.6 animateType:WTKAnimateTypeRound];
        animation.interactivePopTransition = fromVC.interactivePopTransition;
        return animation; //手势
    }
    else
    {
        WTKBaseAnimation *animation = [[WTKBaseAnimation alloc]initWithType:operation Duration:0.6 animateType:WTKAnimateTypeRound];
        return animation;//非手势
    }
    
    
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}   





@end
