//
//  FizzBuzz.m
//  Tdd
//
//  Created by pudgeli on 2019/5/28.
//  Copyright © 2019 pudgeli. All rights reserved.
//

#import "FizzBuzz.h"

@implementation FizzBuzz

- (instancetype)initWithFizz:(int)fizz buzz:(int)buzz{
    self = [super init];
    if (self) {
        self.fizz = fizz;
        self.buzz = buzz;
    }
    return  self;
}

- (void)countOff{
    for (int i= 1; i <= 100; i++) {
        NSLog(@"%@", [self reportNumber:i]);
    }
}

- (NSString *)reportNumber:(int)num{
    if ([self isFizzBuzz:num]) {
        return @"FizzBuzz";
    }
    if ([self isFizz:num]) {
        return @"Fizz";
    }
    if ([self isBuzz:num]) {
        return @"Buzz";
    }
    return [NSNumber numberWithInt:num].stringValue;
}

- (BOOL)isFizz:(int)num{
    if (num % self.fizz == 0
        || [[NSNumber numberWithInt:num].stringValue containsString: [NSNumber numberWithInt:self.fizz].stringValue]) {
        return YES;
    }
    return NO;
}

- (BOOL)isBuzz:(int)num{
    if (num % self.buzz == 0
        || [[NSNumber numberWithInt:num].stringValue containsString: [NSNumber numberWithInt:self.buzz].stringValue]) {
        return YES;
    }
    return NO;
}

- (BOOL)isFizzBuzz:(int)num{
    if (num % self.buzz == 0
         && ([[NSNumber numberWithInt:num].stringValue containsString: [NSNumber numberWithInt:self.fizz].stringValue]
              || num % self.fizz == 0)) {
        return YES;
    }
    return NO;
}



@end
