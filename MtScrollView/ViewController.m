//
//  ViewController.m
//  MtScrollView
//
//  Created by Chris Dean on 2018-02-26.
//  Copyright © 2018 Chris Dean. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    MyScrollView *scrollView = [[MyScrollView alloc] init];
    scrollView.frame = self.view.frame;
    scrollView.contentSize = CGSizeMake(self.view.frame.size.width, 750);
    
    [self.view addSubview:scrollView];
    
    UIView *redView = [[UIView alloc] initWithFrame:CGRectMake(20, 20, 100, 100)];
    redView.backgroundColor = [UIColor redColor];
    [scrollView addSubview:redView];
    
    UIView *greenView = [[UIView alloc] initWithFrame:CGRectMake(150, 150, 150, 200)];
    greenView.backgroundColor = [UIColor greenColor];
    [scrollView addSubview:greenView];
    
    UIView *blueView = [[UIView alloc] initWithFrame:CGRectMake(40, 400, 200, 150)];
    blueView.backgroundColor = [UIColor blueColor];
    [scrollView addSubview:blueView];
    
    UIView *yellowView = [[UIView alloc] initWithFrame:CGRectMake(100, 600, 180, 150)];
    yellowView.backgroundColor = [UIColor yellowColor];
    [scrollView addSubview:yellowView];
    
    self.view.userInteractionEnabled = YES;
    
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    //[self.view setBounds:CGRectOffset(self.view.bounds, 0, 100)];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
