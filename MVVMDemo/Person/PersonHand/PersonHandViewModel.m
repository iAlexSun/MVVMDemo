//
//  PersonHandViewModel.m
//  MVVMDemo
//
//  Created by Sun Wen on 2020/7/17.
//  Copyright © 2020 Sun Wen. All rights reserved.
//

#import "PersonHandViewModel.h"
#import "PersonHandView.h"

@interface PersonHandViewModel()

@property (nonatomic,strong) PersonHandView *view;

@end

@implementation PersonHandViewModel

- (instancetype)init {
    if (self = [super init]) {
        
    }
    return self;
}

//- (void)test2 {
//    NSLog(@"test2--- %s",__func__);
//}

- (PersonHandView *)view {
    if (_view == nil) {
        _view = [[PersonHandView alloc] initWithViewModel:self];
    }
    return _view;
}
@end
