//
//  BaseView.h
//  MVVMDemo
//
//  Created by Sun Wen on 2020/7/16.
//  Copyright © 2020 Sun Wen. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BaseViewModel;

NS_ASSUME_NONNULL_BEGIN

@interface BaseView : UIView

- (instancetype)initWithViewModel:(id)viewModel;

@end

NS_ASSUME_NONNULL_END
