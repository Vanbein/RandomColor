//
//  ViewController.m
//  RandomColor
//
//  Created by 王斌 on 16/2/23.
//  Copyright © 2016年 Changhong electric Co., Ltd. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)changeColor:(UIButton *)sender {
    
    self.view.backgroundColor = [self randomColor];
    
}

- (UIColor *)randomColor{
    
    static BOOL seeded = NO;
    
    if (!seeded) {
        seeded = YES;
        srand48(time(0));
    }
    
    CGFloat r = (CGFloat)drand48();
    CGFloat g = (CGFloat)drand48();
    CGFloat b = (CGFloat)drand48();

    return [UIColor colorWithRed:r green:g blue:b alpha:1.0];
}
@end
