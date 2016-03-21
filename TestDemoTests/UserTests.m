//
//  UserTests.m
//  TestDemo
//
//  Created by zhangfei on 16/1/10.
//  Copyright © 2016年 zhangfei. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "User.h"

@interface UserTests : XCTestCase{
@private
    User *user;
}

@end

@implementation UserTests

- (void)setUp {
    [super setUp];
    user = [[User alloc] init];
}

- (void)tearDown {
    [super tearDown];
}

- (void)testIsChinese{
    XCTAssertTrue([user isChinese:@"你好"],@"");
    XCTAssertTrue([user isChinese:@"123你好"],@"");
    XCTAssertFalse([user isChinese:@"234"],@"");
    XCTAssertFalse([user isChinese:@"hello"],@"");
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}
@end
