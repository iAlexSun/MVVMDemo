//
//  NSObject+sendMsg.h
//  MVVMDemo
//
//  Created by Sun Wen on 2020/7/17.
//  Copyright © 2020 Sun Wen. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSObject (sendMsg)

@property (nonatomic, copy) NSArray *subViewModels;

- (void)sendMsgToSubViewModel:(SEL)selector;

- (void)bindSubViewModel:(id)subViewModel;

@end

NS_ASSUME_NONNULL_END
