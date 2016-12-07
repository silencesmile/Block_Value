//
//  SecondViewController.m
//  521Travel_block_Value
//
//  Created by youngstar on 16/12/7.
//  Copyright © 2016年 521Travel.com. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()
@property(nonatomic, strong) UITextField *text;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor lightGrayColor];
    self.title = @"Second";
    
    self.text = [[UITextField alloc]initWithFrame:(CGRectMake(100, 200, 150, 30))];
    _text.backgroundColor = [UIColor whiteColor];
    _text.placeholder = @"在这里输入";
    [self.view addSubview:_text];
    
    [self leftBack];
}

- (void)leftBack
{
    UIBarButtonItem *item = [[UIBarButtonItem alloc]initWithTitle:@"Back" style:(UIBarButtonItemStylePlain) target:self action:@selector(back:)];
    
    self.navigationItem.leftBarButtonItem = item;
}

- (void)back:(UIButton *)button
{
    [self.navigationController dismissViewControllerAnimated:YES completion:nil];
}


- (void)returnText:(ReturnTextBlock)block
{
    self.returnTextBlock = block;
}


- (void)viewWillDisappear:(BOOL)animated
{
    if (self.returnTextBlock != nil) {
        self.returnTextBlock(_text.text);
    }
}

@end
