//
//  WTKViewModelNavigationImpl.h
//  WTKWineNew
//
//  Created by 韩小胜 on 17/4/21.
//  Copyright © 2017年 WTK. All rights reserved.
//

#import <Foundation/Foundation.h>
//@class WTKViewModelServices;
#import "WTKViewModelServices.h"
#import <UIKit/UIKit.h>
@interface WTKViewModelNavigationImpl : NSObject<WTKViewModelServices>
@property(nonatomic,copy)NSString *className;
///设置当前rootVC
@property(nonatomic,assign)NSInteger selectedIndex;
- (instancetype)initWithNavigationController:(UINavigationController *)navi;
@end
