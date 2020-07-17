//
//  PersonView2.m
//  MVVMDemo
//
//  Created by Sun Wen on 2020/7/17.
//  Copyright © 2020 Sun Wen. All rights reserved.
//

#import "PersonView2.h"
#import "PersonViewModel2.h"

@interface PersonView2()

@property (nonatomic,weak)PersonViewModel2 *viewModel;

@end

@implementation PersonView2

- (instancetype)initWithViewModel:(PersonViewModel2 *)viewModel {
    if (self = [super init]) {
        _viewModel = viewModel;
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 100, 30)];
        label.text = @"PersonView2";
        label.textColor = [UIColor blackColor];
        [self addSubview:label];
        self.backgroundColor = [UIColor whiteColor];
    }
    return self;
}


@end
