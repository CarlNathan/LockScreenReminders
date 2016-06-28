//
//  CoreDataStackTests.m
//  LockScreenReminders
//
//  Created by Carl Udren on 6/28/16.
//  Copyright © 2016 Carl Udren. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "CoreDataCrudStack.h"

@interface CoreDataStackTests : XCTestCase
@property(nonatomic, strong) CoreDataCrudStack *stack;
@end

@implementation CoreDataStackTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    self.stack = [CoreDataCrudStack defaultStack];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    self.stack = nil;
    [super tearDown];
}

- (void)testCoreDataStackIsSingleton_ShouldOnlyInitializeOnce {
    CoreDataCrudStack *secondStack = [CoreDataCrudStack defaultStack];
    
    XCTAssert(self.stack == secondStack, "Data stack pointers should be the same");
}

- (void)testHasContext {
    XCTAssert(self.stack.managedObjectContext != nil, "Should have context");
}

- (void)testHasCoordinator {
    XCTAssert(self.stack.persistentStoreCoordinator, "Should Have coordinator");
}

- (void)testHasModel {
    XCTAssert(self.stack.managedObjectModel != nil, "Should Have Model");
}

- (void) has_{
    
}
@end
