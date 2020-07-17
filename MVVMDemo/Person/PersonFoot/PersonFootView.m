//
//  PersonFootView.m
//  MVVMDemo
//
//  Created by Sun Wen on 2020/7/17.
//  Copyright © 2020 Sun Wen. All rights reserved.
//

#import "PersonFootView.h"
#import "PersonFootViewModel.h"

@interface PersonFootView()

@property (nonatomic,weak) PersonFootViewModel *viewModel;

@end

@implementation PersonFootView

- (instancetype)initWithViewModel:(PersonFootViewModel *)viewModel {
    if (self = [super init]) {
        _viewModel = viewModel;
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 200, 30)];
        label.text = @"PersonFootView";
        label.textColor = [UIColor whiteColor];
        [self addSubview:label];
        self.backgroundColor = [UIColor grayColor];
    }
    return self;
}

@end
