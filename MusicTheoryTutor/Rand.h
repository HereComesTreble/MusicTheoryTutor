//
//  Rand.h
//  MusicTheoryTutor
//
//  Created by Ryan Sowa on 1/18/13.
//  Copyright (c) 2013 Steven Lester. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Rand : NSObject

@property (strong, nonatomic) NSArray *notes;
@property (strong, nonatomic) NSArray *abbrNames3;
@property (strong, nonatomic) NSArray *abbrNames4;
@property (strong, nonatomic) NSArray *abbrNames5;

- (NSMutableString *)getRandomNote;
- (NSMutableString *)getRandomChordType:(BOOL)three four:(BOOL)four five:(BOOL)five;

@end
