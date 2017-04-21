//
//  WTKCommon.h
//  WTKWineNew
//
//  Created by 韩小胜 on 17/4/20.
//  Copyright © 2017年 WTK. All rights reserved.
//

#import <Foundation/Foundation.h>


// 第三方
#import <ReactiveCocoa/ReactiveCocoa.h>
#import <Masonry/Masonry.h>
#import <SVProgressHUD/SVProgressHUD.h>
#import <MJRefresh/MJRefresh.h>
#import "UIImageView+WebCache.h"
#import "IQKeyBoardManager.h"
#import <AFNetworking/AFNetworking.h>
#import "UIScrollView+EmptyDataSet.h"
#import <MJExtension/MJExtension.h>


#import "WTKBasedViewController.h"

///SVP
#define SHOW_SVP(title) \
[SVProgressHUD showWithStatus:title];

#define SHOW_ERROE(title) \
[SVProgressHUD showErrorWithStatus:title];

#define SHOW_SUCCESS(title) \
[SVProgressHUD showSuccessWithStatus:title];

#define DISMISS_SVP(time) \
dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(time * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{ \
[SVProgressHUD dismiss]; \
});
@interface WTKCommon : NSObject

@end
