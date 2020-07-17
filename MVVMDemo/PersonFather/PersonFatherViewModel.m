//
//  PersonFatherViewModel.m
//  MVVMDemo
//
//  Created by Sun Wen on 2020/7/17.
//  Copyright © 2020 Sun Wen. All rights reserved.
//

#import "PersonFatherViewModel.h"
#import "PersonFatherView.h"

@interface PersonFatherViewModel ()

@property (nonatomic,strong) PersonFatherView *view;

@end

@implementation PersonFatherViewModel

- (instancetype)init {
    if (self = [super init]) {
        
    }
    return self;
}

- (PersonFatherView *)view {
    if (_view == nil) {
        _view = [[PersonFatherView alloc] initWithViewModel:self];
    }
    return _view;
}

@end
