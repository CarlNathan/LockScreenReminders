//
//  CoreDataCrudStack.h
//  LockScreenReminders
//
//  Created by Carl Udren on 6/27/16.
//  Copyright © 2016 Carl Udren. All rights reserved.
//

#import <Foundation/Foundation.h>
@import CoreData;

@interface CoreDataCrudStack : NSObject

+ (instancetype)defaultStack;

@property (readonly, nonatomic, strong) NSManagedObjectContext *managedObjectContext;
@property (readonly, nonatomic, strong) NSManagedObjectModel *managedObjectModel;
@property (readonly, nonatomic, strong) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (void) saveContext;
- (NSURL *)applicationDocumentsDirectory;

@end
