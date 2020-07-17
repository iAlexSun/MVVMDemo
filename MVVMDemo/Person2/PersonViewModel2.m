//
//  PersonViewModel2.m
//  MVVMDemo
//
//  Created by Sun Wen on 2020/7/17.
//  Copyright © 2020 Sun Wen. All rights reserved.
//

#import "PersonViewModel2.h"
#import "PersonView2.h"

@interface PersonViewModel2()

@property (nonatomic,strong) PersonView2 *view;
@end

@implementation PersonViewModel2

- (void)test {
    NSLog(@"test--- %s",__func__);
}

- (instancetype)init {
    if (self = [super init]) {
        
    }
    return self;
}


- (PersonView2 *)view {
    if (_view == nil) {
        _view = [[PersonView2 alloc] initWithViewModel:self];
    }
    return _view;
}
@end
