//
//  NSString+Palindrome.m
//  palindrome
//
//  Created by croath on 4/9/14.
//  Copyright (c) 2014 Croath. All rights reserved.
//

#import "NSString+Palindrome.h"

@implementation NSString (Palindrome)

- (BOOL)isPalindrome{
    if (self == nil) {
        return NO;
    }
    
    for (int i = 0; i < [self length]; i ++) {
        if (2 * i > [self length]) {
            break;
        }
        NSString *first = [self substringWithRange:NSMakeRange(i, 1)];
        NSString *last = [self substringWithRange:NSMakeRange([self length] - 1 - i, 1)];
        if (![first isEqualToString:last]) {
            return NO;
        }
    }
    return YES;
}

@end
