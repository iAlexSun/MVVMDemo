//
//  PersonView.m
//  MVVMDemo
//
//  Created by Sun Wen on 2020/7/17.
//  Copyright © 2020 Sun Wen. All rights reserved.
//

#import "PersonView.h"
#import "PersonViewModel.h"

@interface PersonView()

@property (nonatomic,weak)PersonViewModel *viewModel;

@end

@implementation PersonView

- (instancetype)initWithViewModel:(PersonViewModel *)viewModel {
    if (self = [super init]) {
        _viewModel = viewModel;
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 100, 30)];
        label.text = @"PersonView";
        label.textColor = [UIColor blackColor];
        [self addSubview:label];
        self.backgroundColor = [UIColor whiteColor];
    }
    return self;
}

@end
