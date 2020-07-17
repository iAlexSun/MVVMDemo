//
//  PersonFootViewModel.m
//  MVVMDemo
//
//  Created by Sun Wen on 2020/7/17.
//  Copyright © 2020 Sun Wen. All rights reserved.
//

#import "PersonFootViewModel.h"
#import "PersonFootView.h"

@interface PersonFootViewModel ()

@property (nonatomic,strong) PersonFootView *view;

@end

@implementation PersonFootViewModel

- (instancetype)init {
    if (self = [super init]) {
        
    }
    return self;
}

- (void)test2 {
    NSLog(@"test2--- %s",__func__);
}

- (PersonFootView *)view {
    if (_view == nil) {
        _view = [[PersonFootView alloc] initWithViewModel:self];
    }
    return _view;
}
@end
