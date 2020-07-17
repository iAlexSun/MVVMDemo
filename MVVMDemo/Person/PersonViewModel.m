//
//  PersonViewModel.m
//  MVVMDemo
//
//  Created by Sun Wen on 2020/7/17.
//  Copyright © 2020 Sun Wen. All rights reserved.
//

#import "PersonViewModel.h"
#import "PersonView.h"

@interface PersonViewModel()

@property (nonatomic,strong) PersonView *view;

@property (nonatomic,strong,readwrite) UIColor *backgroundColor;

@end

@implementation PersonViewModel

- (instancetype)init {
    if (self = [super init]) {
        
    }
    return self;
}

- (void)changeTitle {
    self.title = @"修改成功";
    self.backgroundColor = [UIColor redColor];
}

- (PersonView *)view {
    if (_view == nil) {
        _view = [[PersonView alloc] initWithViewModel:self];
    }
    return _view;
}

@end
