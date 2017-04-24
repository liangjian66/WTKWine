//
//  AppDelegate.m
//  WTKWineNew
//
//  Created by 韩小胜 on 17/4/19.
//  Copyright © 2017年 WTK. All rights reserved.
//

#import "AppDelegate.h"
#import "WTKCommon.h"
#import "WTKTabBarController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [UIApplication sharedApplication].statusBarStyle = UIStatusBarStyleLightContent;
    //    设置键盘
    IQKeyboardManager *manager          = [IQKeyboardManager sharedManager];
    manager.enable                      = YES;
    manager.shouldResignOnTouchOutside  = YES;
    manager.enableAutoToolbar           = NO;
    
    [SVProgressHUD setDefaultStyle:SVProgressHUDStyleDark];
    [self changeRootViewController];
    return YES;
}


- (void)changeRootViewController
{
//    UIWindow *window                    = [[UIApplication sharedApplication].delegate window];
    WTKTabBarController *tabbarC        = [[WTKTabBarController alloc]init];

    tabbarC.tabBar.tintColor            = THEME_COLOR;
//    self.window.rootViewController           = tabbarC;
    [self.window makeKeyAndVisible];
    [self.window setRootViewController:tabbarC];
    
    
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    ///asdflkjaslkdfaskjdfaslkdfhaskjdfhkljas
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    NSLog(@"fasfdsdadf");
    NSLog(@"fasfdsdadf");
    NSLog(@"fasfdsdadf");
    NSLog(@"fasfdsdadf");NSLog(@"fasfdsdadf");
    NSLog(@"fasfdsdadf");
    NSLog(@"fasfdsdadf");
    NSLog(@"fasfdsdadf");
    
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
