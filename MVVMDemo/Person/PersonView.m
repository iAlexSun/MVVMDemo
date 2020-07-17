//
//  PersonView.m
//  MVVMDemo
//
//  Created by Sun Wen on 2020/7/17.
//  Copyright © 2020 Sun Wen. All rights reserved.
//

#import "PersonView.h"
#import "PersonViewModel.h"
#import <KVOController/KVOController.h>

@interface PersonView()

@property (nonatomic,weak) PersonViewModel *viewModel;

@property (nonatomic,strong) UILabel *label;

@end

@implementation PersonView

- (instancetype)initWithViewModel:(PersonViewModel *)viewModel {
    if (self = [super init]) {
        _viewModel = viewModel;
        _label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 100, 30)];
        _label.text = @"PersonView";
        _label.textColor = [UIColor blackColor];
        [self addSubview:_label];
        self.backgroundColor = [UIColor whiteColor];
        
        [self addEventHanlder];
        
    }
    return self;
}

- (void)addEventHanlder {
    
    [self.KVOController observe:self.viewModel keyPath:@"title" options:NSKeyValueObservingOptionNew block:^(id  _Nullable observer, id  _Nonnull object, NSDictionary<NSString *,id> * _Nonnull change) {
        NSString *newTitle = change[@"new"];
        self.label.text = newTitle;
    }];
    
    [self.KVOController observe:self.viewModel keyPath:@"backgroundColor" options:NSKeyValueObservingOptionNew block:^(id  _Nullable observer, id  _Nonnull object, NSDictionary<NSString *,id> * _Nonnull change) {
        UIColor *newBackgroundColor = change[@"new"];
        self.backgroundColor = newBackgroundColor;
    }];
}

@end
