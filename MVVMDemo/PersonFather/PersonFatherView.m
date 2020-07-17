//
//  PersonFatherView.m
//  MVVMDemo
//
//  Created by Sun Wen on 2020/7/17.
//  Copyright © 2020 Sun Wen. All rights reserved.
//

#import "PersonFatherView.h"
#import "PersonFatherViewModel.h"

@interface PersonFatherView()

@property (nonatomic,weak) PersonFatherViewModel *viewModel;

@end

@implementation PersonFatherView

- (instancetype)initWithViewModel:(PersonFatherViewModel *)viewModel {
    if (self = [super init]) {
        _viewModel = viewModel;
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 200, 30)];
        label.text = @"PersonFatherView";
        label.textColor = [UIColor whiteColor];
        [self addSubview:label];
        self.backgroundColor = [UIColor blackColor];
    }
    return self;
}

@end
