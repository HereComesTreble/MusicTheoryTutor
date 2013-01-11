//
//  BackEndDictionary.h
//  MusicTheoryTutor
//
//  Created by Steven Lester on 12/7/12.
//  Copyright (c) 2012 Steven Lester. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Chords.h"

@interface BackEndDictionary : NSObject

@end

//three note chords






//TODO must initialized these in the init
Chords * Major;
Chords * Flattened5th;
Chords *Minor;
Chords *Diminished;
Chords *Augmented;
Chords *Suspended2nd;
Chords *Suspended4th;
Chords *PowerChord;

Chords * dict[8];



