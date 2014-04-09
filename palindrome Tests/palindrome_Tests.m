//
//  palindrome_Tests.m
//  palindrome Tests
//
//  Created by croath on 4/9/14.
//  Copyright (c) 2014 Croath. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "NSString+Palindrome.h"

@interface palindrome_Tests : XCTestCase

@end

@implementation palindrome_Tests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testNormalStrings
{
    //normal samples
    XCTAssert([@"aa" isPalindrome] == YES);
    XCTAssert([@"aba" isPalindrome] == YES);
    XCTAssert([@"abba" isPalindrome] == YES);
    XCTAssert([@"abcba" isPalindrome] == YES);
    XCTAssert([@"ab c ba" isPalindrome] == YES);
    
    //not a palindrome string
    XCTAssert([@"abc" isPalindrome] == NO);
    XCTAssert([@"0100" isPalindrome] == NO);
    XCTAssert([@"a-" isPalindrome] == NO);
    XCTAssert([@"ab c   ba" isPalindrome] == NO);
}

- (void)testStrangeStrings{
    //one character
    XCTAssert([@"a" isPalindrome] == YES);
    
    //empty string
    XCTAssert([@"" isPalindrome] == YES);
    
    //include non ASCII characters
    XCTAssert([@"はいは" isPalindrome] == YES);
    XCTAssert([@"はいはじゃ" isPalindrome] == NO);
}

@end
