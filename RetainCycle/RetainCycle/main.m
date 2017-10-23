//
//  main.m
//  RetainCycle
//
//  Created by Xi Huang on 10/23/17.
//  Copyright © 2017 LucasHuang, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Department;

@interface Person: NSObject
@property (strong,nonatomic) Department * department;
@end

@implementation Person
@end

@interface Department: NSObject
@property (strong,nonatomic)Person * person;
@end

@implementation Department
@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        Person * person = [[Person alloc] init];
        Department * department = [[Department alloc] init];
        person.department = department;
        department.person = person;
    }
    return 0;
}
