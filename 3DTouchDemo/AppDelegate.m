//
//  AppDelegate.m
//  3DTouchDemo
//
//  Created by 吴斌清 on 16/5/11.
//  Copyright © 2016年 winphonesoftware. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    //3D Touch按压程序图标的快捷项
    //快捷菜单的图标
    UIApplicationShortcutIcon *icon1=[UIApplicationShortcutIcon iconWithType:UIApplicationShortcutIconTypeCaptureVideo];
    UIApplicationShortcutIcon *icon2=[UIApplicationShortcutIcon iconWithType:UIApplicationShortcutIconTypeAdd];
    UIApplicationShortcutIcon *icon3=[UIApplicationShortcutIcon iconWithTemplateImageName:@"search"];
    //快捷菜单
    UIApplicationShortcutItem *item1=[[UIApplicationShortcutItem alloc]initWithType:@"1" localizedTitle:@"嘿嘿" localizedSubtitle:nil icon:icon1 userInfo:nil];
    
    UIApplicationShortcutItem *item2=[[UIApplicationShortcutItem alloc]initWithType:@"1" localizedTitle:@"呵呵" localizedSubtitle:@"干嘛去洗澡"icon:icon2 userInfo:nil];
    
    UIApplicationShortcutItem *item3=[[UIApplicationShortcutItem alloc]initWithType:@"1" localizedTitle:@"搜索" localizedSubtitle:nil icon:icon3 userInfo:nil];
    //设置app的快捷菜单
    [[UIApplication sharedApplication] setShortcutItems:@[item1,item2,item3]];
    
    //导航
    self.window.rootViewController=[[UINavigationController alloc]initWithRootViewController:[ViewController new]];
    return YES;
}

#pragma mark -- 3D Touch按压程序图标的快捷项时触发的方法
//3D Touch按压程序图标的快捷项时触发的方法
-(void)application:(UIApplication *)application performActionForShortcutItem:(UIApplicationShortcutItem *)shortcutItem completionHandler:(void (^)(BOOL))completionHandler
{
    NSString *title;
    if([shortcutItem.localizedTitle isEqualToString:@"嘿嘿"])
    {
        title=@"嘿嘿";
    }
    else if([shortcutItem.localizedTitle isEqualToString:@"呵呵"])
    {
        title=@"呵呵";
    }
    else if([shortcutItem.localizedTitle isEqualToString:@"搜索"])
    {
        title=@"搜索";
    }
    UIAlertController *alertController=[UIAlertController alertControllerWithTitle:@"提示" message:[NSString stringWithFormat:@"你点击了“%@”",title] preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *action=[UIAlertAction actionWithTitle:@"知道了" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action) {
            [alertController dismissViewControllerAnimated:YES completion:nil];
        }];
    [alertController addAction:action];
    [self.window.rootViewController presentViewController:alertController animated:YES completion:nil];
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
