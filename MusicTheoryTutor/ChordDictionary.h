//
//  ChordDictionary.h
//  MusicTheoryTutor
//
//  Created by Ryan Sowa on 2/12/13.
//  Copyright (c) 2013 Steven Lester. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Chords.h"

@interface ChordDictionary : NSObject
{
    //three note chords
    
    Chords *Major, *Flattened5th, *Minor, *Diminished,
    *Augmented, *Suspended2nd, *Suspended4th, *PowerChord, *Major7th,
    *Major7thSuspended2nd, *Major7thSuspended4th, *Major7thAugmented5th,
    *Major7thFlattened5th, *Sixth, *MajorFlat6, *MajorAdd4th, *MajorAdd9th,
    *Dominant7th, *Dominant7thSuspended2nd, *Dominant7thSuspended4th,
    *Dominant7thAugmented5th, *Dominant7thFlattened5th, *Minor7th,
    *MinorMajor7th, *MinorAdd4th, *MinorAdd9th, *MinorFlattened6th,
    *Minor6th, *HalfDiminished7th, *FullyDiminished7th, *Major6thAdd9th,
    *Minor6thAdd9th, *DominantAdd9th, *Dominant9thFlattened5th,
    *Dominant9thAugmented5th, *Minor9th, *Minor9thFlattened5th, *Major9th,
    *Major9thSuspended4th, *Major7thAddFlattened9th, *DominantAdd6th,
    *MinorMajor9th, *MinorMajorFlattened9th, *DominantAddAugmented9th,
    *DominantFlattened5thAddAugmented9th, *DominantAddFlattened9th,
    *Minor7thFlattened9th, *Minor7thAugmented9th;
    
    NSArray *scalesDictionary;
    
    //TODO must initialized these in the init
    
    NSMutableArray *dict;
    
}

-(id)init;
-(NSMutableString *)getName: (NSMutableString *)chord;
-(NSMutableString *)getAbbrName: (NSMutableString *)chord;
-(NSArray *)getNotes: (NSMutableString *)chordRoot chordType: (NSMutableString*)chordType;
-(Chords *)findChord: (NSMutableString *)chordType;
-(NSInteger)getNum:(NSMutableString*)chordType;
-(NSMutableString *)getIntervalTwoStr: (NSMutableString *)chord;
-(NSMutableString *)getIntervalThreeStr: (NSMutableString *)chord;
-(NSMutableString *)getIntervalFourStr: (NSMutableString *)chord;
-(NSMutableString *)getIntervalFiveStr: (NSMutableString *)chord;
-(int)getIntervalTwoInt: (NSMutableString *)chord;
-(int)getIntervalThreeInt: (NSMutableString *)chord;
-(int)getIntervalFourInt: (NSMutableString *)chord;
-(int)getIntervalFiveInt: (NSMutableString *)chord;






@end
