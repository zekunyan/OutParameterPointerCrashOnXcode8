//
//  main.m
//  CommonOCTest
//
//  Created by zorro on 16/5/2.
//  Copyright © 2016年 tutuge. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@interface TestClass : NSObject

@end

@implementation TestClass

+ (void)runTest {
    NSMutableArray *array = [NSMutableArray new];
    [TestClass testFunc:&array];
    [TestClass testFunc:&array];
    NSLog(@"array: %@", array);
}

+ (void)testFunc:(NSMutableArray **)array {
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        [TestClass runTest];
    }
    
    return 0;
}


