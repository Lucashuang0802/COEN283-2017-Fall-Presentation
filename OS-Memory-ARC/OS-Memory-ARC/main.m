//
//  main.m
//  OS-Memory-ARC
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
        NSLog(@"Memory location of object1: %@", object1);
        NSObject *object2 = object1;
        
        NSLog(@"Memory location of object1: %@", object1);
        NSLog(@"Memory location of object2: %@", object2);
        
        object2 = nil;
        object1 = nil;
        NSLog(@"Memory location of object1: %@", object1);
        NSLog(@"Memory location of object2: %@", object2);
    }
    return 0;
}
