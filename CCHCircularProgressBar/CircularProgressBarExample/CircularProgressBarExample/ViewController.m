//
//  ViewController.m
//  CircularProgressBarExample
//
//  Created by cchhjj on 16/6/8.
//  Copyright © 2016年 cchhjj. All rights reserved.
//

#import "ViewController.h"

#import "CircularProgressBar.h"

@interface ViewController () {
    CircularProgressBar *bar;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    CGSize size = self.view.frame.size;
    bar = [[CircularProgressBar alloc]initWithFrame:CGRectMake(0, 100, size.width, size.width)];
    [bar strokeChart];
    [self.view addSubview:bar];
    
    
    UISlider *sw = [[UISlider alloc]initWithFrame:CGRectMake(size.width/2 - 100, size.height - 60, 200, 50)];
    [self.view addSubview:sw];
    [sw addTarget:self action:@selector(changeValue:) forControlEvents:UIControlEventValueChanged];
    
}

- (void)changeValue:(UISlider *)slider {
    bar.progress = slider.value;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
