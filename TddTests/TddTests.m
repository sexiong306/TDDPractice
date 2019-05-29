//
//  TddTests.m
//  TddTests
//
//  Created by pudgeli on 2019/5/28.
//  Copyright © 2019 pudgeli. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "FizzBuzz.h"

@interface TddTests : XCTestCase
@property (nonatomic, strong) FizzBuzz* testFizzBuzz;
@end

@implementation TddTests

- (void)setUp {
    // Put setup code here. This method is called before the invocation of each test method in the class.
    [super setUp];
    self.testFizzBuzz = [[FizzBuzz alloc] initWithFizz:3 buzz:5];
    
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    self.testFizzBuzz = nil;
}


- (void)testReportNumber {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    XCTAssertTrue([@"1" isEqualToString:[self.testFizzBuzz reportNumber: 1]]);
    XCTAssertTrue([@"8" isEqualToString:[self.testFizzBuzz reportNumber: 8]]);
    XCTAssertTrue([@"Fizz" isEqualToString:[self.testFizzBuzz reportNumber: 3]]);
    XCTAssertTrue([@"Fizz" isEqualToString:[self.testFizzBuzz reportNumber: 13]]);
    XCTAssertTrue([@"Buzz" isEqualToString:[self.testFizzBuzz reportNumber: 5]]);
    XCTAssertTrue([@"Buzz" isEqualToString:[self.testFizzBuzz reportNumber: 25]]);
    XCTAssertTrue([@"FizzBuzz" isEqualToString:[self.testFizzBuzz reportNumber: 15]]);
    XCTAssertTrue([@"FizzBuzz" isEqualToString:[self.testFizzBuzz reportNumber: 30]]);
    XCTAssertTrue([@"FizzBuzz" isEqualToString:[self.testFizzBuzz reportNumber: 35]]);
}

- (void)testFizz {
    XCTAssertFalse([self.testFizzBuzz isFizz: 2]);
    XCTAssertTrue([self.testFizzBuzz isFizz: 3]);
    XCTAssertTrue([self.testFizzBuzz isFizz: 13]);
}

- (void)testBuzz {
    XCTAssertFalse([self.testFizzBuzz isBuzz: 4]);
    XCTAssertTrue([self.testFizzBuzz isBuzz: 5]);
    XCTAssertTrue([self.testFizzBuzz isBuzz: 25]);
}

- (void)testFizzBuzzFunc {
    XCTAssertFalse([self.testFizzBuzz isFizzBuzz: 11]);
    XCTAssertTrue([self.testFizzBuzz isFizzBuzz: 35]);
    XCTAssertTrue([self.testFizzBuzz isFizzBuzz: 45]);
}


- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
