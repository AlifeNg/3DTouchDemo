//
//  SecondViewController.h
//  3DTouchDemo
//
//  Created by 吴斌清 on 16/5/11.
//  Copyright © 2016年 winphonesoftware. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController

/**peek时上拉出来的菜单*/
@property(nonatomic,strong)NSArray<id<UIPreviewActionItem>> *actions;

@end
