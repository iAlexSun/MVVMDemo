//
//  PersonViewModel.h
//  MVVMDemo
//
//  Created by Sun Wen on 2020/7/17.
//  Copyright © 2020 Sun Wen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@class PersonView;

@interface PersonViewModel : NSObject

- (PersonView *)view;

@property (nonatomic,copy) NSString *title;

@property (nonatomic,strong,readonly) UIColor *backgroundColor;

- (void)changeTitle;

@end

NS_ASSUME_NONNULL_END
