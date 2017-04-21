//
//  WTKViewModelServices.h
//  WTKWineNew
//
//  Created by 韩小胜 on 17/4/21.
//  Copyright © 2017年 WTK. All rights reserved.
//

#import <Foundation/Foundation.h>
@class WTKBasedViewModel;
@class  UIViewController;
@protocol WTKViewModelServices <NSObject>

- (void)pushViewModel:(WTKBasedViewModel *)viewModel animated:(BOOL)animated;

- (void)popViewControllerWithAnimation:(BOOL)animated;

- (void)popToRootViewModelWithAnimation:(BOOL)animated;

- (void)presentViewModel:(WTKBasedViewModel *)viewModel animated:(BOOL)animated complete:(void(^)())complete;

///模态弹出vc，用于alert
- (void)presentViewController:(UIViewController *)viewController animated:(BOOL)animated complete:(void(^)())complete;

@end
@interface WTKViewModelServices : NSObject

@end
