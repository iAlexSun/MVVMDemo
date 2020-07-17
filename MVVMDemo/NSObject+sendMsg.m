//
//  NSObject+sendMsg.m
//  MVVMDemo
//
//  Created by Sun Wen on 2020/7/17.
//  Copyright © 2020 Sun Wen. All rights reserved.
//

#import "NSObject+sendMsg.h"
#import "UIView+bindViewModel.h"
#import <objc/runtime.h>
#import "NSMutableArray+QueueAdditions.h"

static const NSString *kSubViewModels = @"subViewModels";

@implementation NSObject (sendMsg)

- (void)sendMsgToSubViewModel:(SEL)selector {
    [self findSubViewModelWithSelector:selector];
}

- (NSArray *)subViewModels {
    return objc_getAssociatedObject(self, &kSubViewModels);
}

- (void)setSubViewModels:(NSArray *)subViewModels {
    objc_setAssociatedObject(self, &kSubViewModels, subViewModels, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (void)_addSubViewModel:(id)subViewModel {
    NSMutableArray *subViewModels = [NSMutableArray arrayWithArray:self.subViewModels];
    [subViewModels addObject:subViewModel];
    self.subViewModels = [subViewModels copy];
}

- (void)bindSubViewModel:(id)subViewModel {
    [self _addSubViewModel:subViewModel];
}

// bfs
- (void)findSubViewModelWithSelector:(SEL)selector {
    NSMutableArray *queue = [NSMutableArray array];
    [queue enqueue:self];
    while (queue.count > 0) {
        id viewModel = [queue dequeue];
        if ([viewModel respondsToSelector:selector]) {
            [viewModel performSelector:selector];
            break;
        }else{
            NSArray *array = [self getSubViewModelsWithViewModel:viewModel];
            [queue addObjectsFromArray:array];
        }
        
    }
}

- (NSArray *)getSubViewModelsWithViewModel:(id)viewModel {
   return objc_getAssociatedObject(viewModel, &kSubViewModels);
}

@end
