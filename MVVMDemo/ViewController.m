//
//  ViewController.m
//  MVVMDemo
//
//  Created by Sun Wen on 2020/7/12.
//  Copyright © 2020 Sun Wen. All rights reserved.
//

#import "ViewController.h"

#import "PersonFatherViewModel.h"
#import "PersonFatherView.h"

#import "PersonViewModel2.h"
#import "PersonView2.h"

#import "PersonViewModel.h"
#import "PersonView.h"

#import "PersonFootViewModel.h"
#import "PersonFootView.h"

#import "PersonHandViewModel.h"
#import "PersonHandView.h"

#import "UIView+bindViewModel.h"
#import "NSObject+sendMsg.h"

@interface ViewController ()

@property (nonatomic,strong) PersonFatherViewModel *fatherViewModel;

@property (nonatomic,strong) PersonViewModel2 *personViewModel2 ;

@property (nonatomic,strong) PersonViewModel *personViewModel;

@property (nonatomic,strong) PersonFootViewModel *footViewModel;

@property (nonatomic,strong) PersonHandViewModel *handViewModel;

@property (nonatomic,strong) PersonHandViewModel *handViewModel2;

@property (nonatomic,strong) PersonFootViewModel *footViewModel2;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _fatherViewModel = [[PersonFatherViewModel alloc] init];
    [self.view addSubview:_fatherViewModel.view];
    
     _personViewModel2 = [[PersonViewModel2 alloc] init];
    [_fatherViewModel.view addSubview:_personViewModel2.view];
    
    _handViewModel2 = [[PersonHandViewModel alloc] init];
    [_personViewModel2.view addSubview:_handViewModel2.view];
    
    _footViewModel2 = [[PersonFootViewModel alloc] init];
    [_personViewModel2.view addSubview:_footViewModel2.view];
    
    //person1
    _personViewModel = [[PersonViewModel alloc] init];
    [_fatherViewModel.view addSubview:_personViewModel.view];
    
    _footViewModel = [[PersonFootViewModel alloc] init];
    [_personViewModel.view addSubview:_footViewModel.view];
    
    _handViewModel = [[PersonHandViewModel alloc] init];
    [_personViewModel.view addSubview:_handViewModel.view];
    
    
    _fatherViewModel.view.frame   = CGRectMake(16, 100, self.view.frame.size.width - 32, self.view.frame.size.height-200);
    _personViewModel2.view.frame = CGRectMake(16, 100, 300, 200);
    _footViewModel2.view.frame    = CGRectMake(0, 30, 200, 40);
    _handViewModel2.view.frame    = CGRectMake(0, 80, 200, 40);
    _personViewModel.view.frame  = CGRectMake(16, 350, 300, 200);
    _footViewModel.view.frame    = CGRectMake(0, 30, 200, 40);
    _handViewModel.view.frame    = CGRectMake(0, 80, 200, 40);
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"fatherViewModel %@" , self.fatherViewModel.subViewModels);
    NSLog(@"personViewModel2 %@" , self.personViewModel2.subViewModels);
    NSLog(@"personViewModel %@" , self.personViewModel.subViewModels);
    NSLog(@"footViewModel %@" , self.footViewModel.subViewModels);
    NSLog(@"handViewModel %@" , self.handViewModel.subViewModels);
        
    [self.fatherViewModel sendMsgToSubViewModel:@selector(test)];
    [self.fatherViewModel sendMsgToSubViewModel:@selector(test2)];
    [self.fatherViewModel sendMsgToSubViewModel:@selector(changeTitle)];
}

@end
