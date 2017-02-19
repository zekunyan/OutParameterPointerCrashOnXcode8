## Example code for out parameter pointer EXC_BAD_ACCESS crash on Xcode 8

Code: 

```
// main.m
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
```

Build on Release configuration.

On Xcode 8, it will crash.

On Xcode 7, it works normal.

Use Hopper disassembler to check:

![img](https://github.com/zekunyan/OutParameterPointerCrashOnXcode8/blob/master/Resource/hopper_disassembler.jpg)
