//
//  WTKBasedViewModel.m
//  WTKWineNew
//
//  Created by 韩小胜 on 17/4/21.
//  Copyright © 2017年 WTK. All rights reserved.
//

#import "WTKBasedViewModel.h"
@interface WTKBasedViewModel ()
@property(nonatomic,strong,readwrite)id<WTKViewModelServices> services;
@property (nonatomic, copy, readwrite) NSDictionary *params;
@end
@implementation WTKBasedViewModel
- (instancetype)initWithService:(id<WTKViewModelServices>)service params:(NSDictionary *)params
{
    self = [super init];
    if (self)
    {
        self.title      = params[@"title"];
        self.params     = params;
        self.services   = service;
    }
    return self;
}
@end
