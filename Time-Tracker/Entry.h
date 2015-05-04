//
//  Entry.h
//  Time-Tracker
//
//  Created by Dalton on 4/18/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Entry : NSObject

@property (nonatomic, strong) NSDate *startTime;
@property (nonatomic, strong) NSDate *endTime;


-(NSDictionary *)entryDictionary;

-(id)initWithDictionary:(NSDictionary *)dictionary;

@end
