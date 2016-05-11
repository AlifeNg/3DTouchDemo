//
//  SecondViewController.m
//  3DTouchDemo
//
//  Created by 吴斌清 on 16/5/11.
//  Copyright © 2016年 winphonesoftware. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor=[UIColor whiteColor];
    
    UILabel *label=[[UILabel alloc]initWithFrame:CGRectMake(0, 0, 300, 40)];
    [self.view addSubview:label];
    label.center=self.view.center;
    label.textAlignment=NSTextAlignmentCenter;
    label.text=[NSString stringWithFormat:@"%@是一个iOS🐵",self.title];
}

/**peek时上拉出来的菜单*/
-(NSArray<id<UIPreviewActionItem>> *)previewActionItems
{
    return self.actions;
}
@end
