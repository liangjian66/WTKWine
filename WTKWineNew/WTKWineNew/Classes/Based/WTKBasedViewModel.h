//
//  WTKBasedViewModel.h
//  WTKWineNew
//
//  Created by 韩小胜 on 17/4/21.
//  Copyright © 2017年 WTK. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WTKViewModelServices.h"

@interface WTKBasedViewModel : NSObject
@property(nonatomic,copy)NSString *title;
@property(nonatomic,strong,readonly)id<WTKViewModelServices> services;

@end
