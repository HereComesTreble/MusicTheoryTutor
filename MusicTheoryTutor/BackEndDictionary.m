//
//  BackEndDictionary.m
//  MusicTheoryTutor
//
//  Created by Steven Lester on 12/7/12.
//  Copyright (c) 2012 Steven Lester. All rights reserved.
//

#import "BackEndDictionary.h"

@implementation BackEndDictionary

-(id)init
{
    if(self =[super init])
    {
        //initializing chords
        Major = [[Chords alloc] init];
        Flattened5th = [[Chords alloc] init];
        Minor = [[Chords alloc] init];
        Diminished = [[Chords alloc] init];
        Augmented = [[Chords alloc] init];
        Suspended2nd = [[Chords alloc] init];
        Suspended4th = [[Chords alloc] init];
        PowerChord = [[Chords alloc] init];
        
    }
    
    return self;
}

@end

