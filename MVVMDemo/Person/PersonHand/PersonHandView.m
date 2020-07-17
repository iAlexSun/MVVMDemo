//
//  PersonHandView.m
//  MVVMDemo
//
//  Created by Sun Wen on 2020/7/17.
//  Copyright © 2020 Sun Wen. All rights reserved.
//

#import "PersonHandView.h"
#import "PersonHandViewModel.h"

@interface PersonHandView()

@property (nonatomic,weak) PersonHandViewModel *viewModel;

@end

@implementation PersonHandView

- (instancetype)initWithViewModel:(PersonHandViewModel *)viewModel {
    if (self = [super init]) {
        _viewModel = viewModel;
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 200, 30)];
        label.text = @"PersonHandView";
        label.textColor = [UIColor blackColor];
        [self addSubview:label];
        self.backgroundColor = [UIColor grayColor];
    }
    return self;
}

@end
