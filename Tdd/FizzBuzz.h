//
//  FizzBuzz.h
//  Tdd
//
//  Created by pudgeli on 2019/5/28.
//  Copyright © 2019 pudgeli. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface FizzBuzz : NSObject
@property (nonatomic, assign) int fizz;
@property (nonatomic, assign) int buzz;
- (instancetype)initWithFizz:(int)fizz buzz:(int)buzz;

- (void)countOff;
- (NSString*)reportNumber:(int)num;
- (BOOL)isFizz:(int)num;
- (BOOL)isBuzz:(int)num;
- (BOOL)isFizzBuzz:(int)num;
@end

NS_ASSUME_NONNULL_END
