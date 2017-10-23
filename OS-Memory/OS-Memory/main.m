//
//  main.m
//  OS-Memory
//
//  Created by Xi Huang on 10/23/17.
//  Copyright © 2017 LucasHuang, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        NSObject *object1 = [[NSObject alloc] init];
        NSLog(@"Retained count of object1: %ld", object1.retainCount);
        NSObject *object2 = [object1 retain];
//        NSObject *object2 = object1;

        NSLog(@"Retained count of object1: %ld", object1.retainCount);
        NSLog(@"Retained count of object2: %ld", object2.retainCount);
        
        [object1 release];
        NSLog(@"Retained count of object1: %ld", object1.retainCount);
        NSLog(@"Retained count of object2: %ld", object2.retainCount);
        [object2 release];
//        object2 = nil;
        NSLog(@"Retained count of object1: %ld", object1.retainCount);
        NSLog(@"Retained count of object2: %ld", object2.retainCount);
    }
    return 0;
}
