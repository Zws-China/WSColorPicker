//
//  ViewController.m
//  ColorPicker
//
//  Created by iMac on 16/12/12.
//  Copyright © 2016年 zws. All rights reserved.
//

#import "ViewController.h"
#import "WSColorImageView.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(20, 60, self.view.frame.size.width-40, 30)];
    label.textAlignment = NSTextAlignmentCenter;
    label.font = [UIFont systemFontOfSize:20];
    label.text = @"当前文字的颜色";
    [self.view addSubview:label];
    
    UIView *view = [[UIView alloc]initWithFrame:CGRectMake(self.view.frame.size.width/2-75, 100, 150, 150)];
    [self.view addSubview:view];
    
    
    WSColorImageView *ws = [[WSColorImageView alloc]initWithFrame:CGRectMake(self.view.frame.size.width/2-100, 300, 200, 200)];
    [self.view addSubview:ws];
    
    ws.currentColorBlock = ^(UIColor *color){
        
        label.textColor = color;
        view.backgroundColor = color;
        
    };

    
    
}


@end
