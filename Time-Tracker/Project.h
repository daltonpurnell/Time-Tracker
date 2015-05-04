//
//  Project.h
//  Time-Tracker
//
//  Created by Dalton on 4/18/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Entry.h"


// Add a static key for entry
static NSString * const keyForEntry = @"entry";

// Add a static key for title
static NSString * const keyForTitle = @"title";

// Add a static key for allEntries
static NSString * const allEntriesKey= @"allEntries";


@interface Project : NSObject

@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *entry;
@property (nonatomic, strong) NSArray *allEntries;


- (NSDictionary *)projectDictionary;
- (id)initWithDictionary:(NSDictionary *)dictionary;

- (void)addEntry:(Entry *)entry;
- (void)removeEntry:(Entry *)entry;

- (void)synchronize;


@end
