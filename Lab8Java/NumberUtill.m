//
//  NumberUtill.m
//  Lab8Java
//
//  Created by Dima  on 11/20/18.
//  Copyright © 2018 Dima . All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSObject+NumberUtill.h"

@implementation NUmberUtill

- (NSUInteger) countNumber:(NSUInteger)naturalValue {
    NSUInteger numberAmount = 0;
    NSString* naturalString = [@(naturalValue) stringValue];
    
    for (NSInteger i = 0; i < [naturalString length]; i++) {
        //NSLog(@"element = %c",[naturalString characterAtIndex:i]);
        numberAmount++;
    }
    
    return numberAmount;
}

- (BOOL) isEven:(NSUInteger)naturalNumber {
    BOOL isEven = false;
    NSString* naturalString = [@(naturalNumber) stringValue];
    NSInteger digitsAmount = [naturalString length];
    NSInteger evenAmount = 0;
    
    for (NSInteger i = 0; i < [naturalString length]; i++) {
        unichar current = [naturalString characterAtIndex:i];
        
        if (current % 2 == 0) {
            evenAmount++;
        }
    }
    if (evenAmount == digitsAmount) {
        isEven = true;
    }
    return isEven;
}

- (SortDirection) isAsc:(NSUInteger)naturalNumber {
    NSString* currentString = [@(naturalNumber) stringValue];
    NSInteger backIndex = [currentString length] - 1;
    SortDirection result = Unsorted;
    
    while (backIndex > 0) {
        if ([currentString characterAtIndex:backIndex] > [currentString characterAtIndex:backIndex - 1]) {
            backIndex--;
            result = Asc;
        } else {
            result = Unsorted;
            break;
        }
    }
    return result;
}


- (SortDirection) isDesc:(NSUInteger)naturalNumber {
    NSString* currentString = [@(naturalNumber) stringValue];
    NSInteger backIndex = [currentString length] - 1;
    SortDirection result = Unsorted;
    
    while (backIndex > 0) {
        unichar last = [currentString characterAtIndex:backIndex];
        unichar prev = [currentString characterAtIndex:backIndex - 1];
        if ( last < prev) {
            backIndex--;
            result = Desk;
        } else {
            result = Unsorted;
            break;
        }
    }
    return result;
}

- (NSUInteger) uniqeDigitsAmount:(NSUInteger)naturalNumber {
   
    NSMutableSet* uniqDigits = [[NSMutableSet alloc] init];
    NSString* naturalString = [@(naturalNumber) stringValue];
    for (NSInteger i = 0; i < [naturalString length]; i++) {
        NSNumber* charCode = [NSNumber numberWithUnsignedChar:[naturalString characterAtIndex:i]];
        [uniqDigits addObject:charCode];
    }
    
    NSUInteger digigtsCount = [uniqDigits count];
    
    return digigtsCount;
}

- (BOOL) isPowerOfTwo:(NSUInteger)number {
    double value = fmod(log2(number), 1);

    return (value == 0) ? true : false;
}


@end
