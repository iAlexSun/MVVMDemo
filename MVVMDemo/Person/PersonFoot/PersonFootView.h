//
//  PersonFootView.h
//  MVVMDemo
//
//  Created by Sun Wen on 2020/7/17.
//  Copyright © 2020 Sun Wen. All rights reserved.
//

#import <UIKit/UIKit.h>

@class PersonFootViewModel;

NS_ASSUME_NONNULL_BEGIN

@interface PersonFootView : UIView

- (instancetype)initWithViewModel:(PersonFootViewModel *)viewModel;

@end

NS_ASSUME_NONNULL_END
