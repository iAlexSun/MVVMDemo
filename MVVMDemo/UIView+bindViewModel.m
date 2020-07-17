//
//  UIView+bindViewModel.m
//  MVVMDemo
//
//  Created by Sun Wen on 2020/7/12.
//  Copyright © 2020 Sun Wen. All rights reserved.
//

#import "UIView+bindViewModel.h"
#import "NSObject+sendMsg.h"
#import <objc/runtime.h>

@implementation UIView (bindViewModel)

+ (void)load {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        Class class = [self class];
        SEL originalSelector = @selector(addSubview:);
        SEL swizzledSelector = @selector(sh_addSubview:);

        Method originalMethod = class_getInstanceMethod(class, originalSelector);
        Method swizzledMethod = class_getInstanceMethod(class, swizzledSelector);

        BOOL didAddMethod = class_addMethod(class,originalSelector,method_getImplementation(swizzledMethod),method_getTypeEncoding(swizzledMethod));
        if (didAddMethod) {
            class_replaceMethod(class,swizzledSelector,method_getImplementation(originalMethod),
                                method_getTypeEncoding(originalMethod));
        } else {
            method_exchangeImplementations(originalMethod, swizzledMethod);
        }
    });
}

- (void)sh_addSubview:(UIView *)view {
    [self sh_addSubview:view];
    id parentViewModel = [self getViewModelWithView:self];

    id childViewModel = [self getViewModelWithView:view];
    
    if (parentViewModel && childViewModel) {
        [parentViewModel bindSubViewModel:childViewModel];
    }
}

- (id)getViewModelWithView:(UIView *)view {
    unsigned int count = 0;
    objc_property_t *properties = class_copyPropertyList([view class], &count);
    for (NSUInteger i = 0; i < count; i++) {
       const char *propertyName = property_getName(properties[i]);
       NSString *name = [NSString stringWithUTF8String:propertyName];
       if ([name containsString:@"viewModel"]) {
           free(properties);
           return [view valueForKey:name];
       }
    }
    free(properties);
    return nil;
}

@end
