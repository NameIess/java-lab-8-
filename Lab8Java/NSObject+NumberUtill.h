//
//  NSObject+NumberUtill.h
//  Lab8Java
//
//  Created by Dima  on 11/20/18.
//  Copyright © 2018 Dima . All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    Desk = 1,
    Asc = 0,
    Unsorted = 3
} SortDirection;

@interface NUmberUtill : NSObject

- (NSUInteger) countNumber:(NSUInteger) naturalValue;
- (BOOL) isEven:(NSUInteger) naturalNumber;
- (SortDirection) isDesc:(NSUInteger) naturalNumber;
- (SortDirection) isAsc:(NSUInteger) naturalNumber;
- (NSUInteger) uniqeDigitsAmount:(NSUInteger) naturalNumber;
- (NSUInteger) maxValue:(NSUInteger) value;
- (BOOL) isPowerOfTwo:(NSUInteger) number;

@end
