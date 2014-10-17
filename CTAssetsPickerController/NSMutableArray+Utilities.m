//
//  NSMutableArray+Utilities.m
//  LittleOnce
//
//  Created by Ken Tran on 17/9/14.
//  Copyright (c) 2014 LittleLives. All rights reserved.
//

#import "NSMutableArray+Utilities.h"

@implementation NSMutableArray (Utilities)

- (void)shuffle
{
    NSUInteger count = [self count];
    for (NSUInteger i = 0; i < count; i++) {
        NSInteger nElements = count - i;
        NSInteger swapIdx = arc4random_uniform((int)nElements) + i;
        [self exchangeObjectAtIndex:i withObjectAtIndex:swapIdx];
    }
}

- (void)reverse
{
    if ([self count] == 0) return;
    NSUInteger i = 0;
    NSUInteger j = [self count] - 1;
    while (i < j) {
        [self exchangeObjectAtIndex:i withObjectAtIndex:j];
        i++;
        j--;
    }
}

@end
