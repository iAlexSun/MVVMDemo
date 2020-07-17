//
//  NSMutableArray+QueueAdditions.h
//  MVVMDemo
//
//  Created by Sun Wen on 2020/7/17.
//  Copyright © 2020 Sun Wen. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSMutableArray (QueueAdditions)

- (id)dequeue;

- (void)enqueue:(id)obj;

@end

NS_ASSUME_NONNULL_END
