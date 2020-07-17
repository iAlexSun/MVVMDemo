//
//  PersonFatherView.h
//  MVVMDemo
//
//  Created by Sun Wen on 2020/7/17.
//  Copyright © 2020 Sun Wen. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@class PersonFatherViewModel;

@interface PersonFatherView : UIView

- (instancetype)initWithViewModel:(PersonFatherViewModel *)viewModel;

@end

NS_ASSUME_NONNULL_END
