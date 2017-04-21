//
//  WTKBasedViewController.m
//  WTKWineNew
//
//  Created by 韩小胜 on 17/4/21.
//  Copyright © 2017年 WTK. All rights reserved.
//

#import "WTKBasedViewController.h"

@interface WTKBasedViewController ()
@property(nonatomic,strong,readwrite)WTKBasedViewModel *viewModel;

@end

@implementation WTKBasedViewController
- (instancetype)initWithViewModel:(WTKBasedViewModel *)viewModel
{
    if (self == [super init])
    {
        self.viewModel = viewModel;
    }
    return self;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
