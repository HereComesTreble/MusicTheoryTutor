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

- (NSString *)getRandomNote;

@end
