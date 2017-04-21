//
//  WTKBasedViewController.h
//  WTKWineNew
//
//  Created by 韩小胜 on 17/4/21.
//  Copyright © 2017年 WTK. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WTKCommon.h"
#import "WTKBasedViewModel.h"
@interface WTKBasedViewController : UIViewController
@property(nonatomic,strong,readonly)WTKBasedViewModel *viewModel;

@property(nonatomic,strong,readonly)UIPercentDrivenInteractiveTransition *interactivePopTransition;
- (instancetype)initWithViewModel:(WTKBasedViewModel *)viewModel;

@end
