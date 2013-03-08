//
//  Five_note_Chord_MinorMajorFlat9_DominantAddAug9.h
//  MusicTheoryTutor
//
//  Created by Chelsea  Brzezinski on 3/7/13.
//  Copyright (c) 2013 Steven Lester. All rights reserved.
//

#import <SenTestingKit/SenTestingKit.h>

@interface Five_note_Chord_MinorMajorFlat9_DominantAddAug9 : SenTestCase

//Minor Major Flattened 9th - m/M♭9
-(void)test_5note_MinorMajorFlat9Chords;         //test all 5-note chords
-(void)test_5noteFlat_MinorMajorFlat9Chords;     //test all 5-note chords with flattened root note
-(void)test_5noteSharp_MinorMajorFlat9Chords;    //test all 5-note chords with sharpened root note

//Dominant Add Augmented 9th - 7♯9
-(void)test_5note_DominantAddAug9Chords;         //test all 5-note chords
-(void)test_5noteFlat_DominantAddAug9Chords;     //test all 5-note chords with flattened root note
-(void)test_5noteSharp_DominantAddAug9Chords;    //test all 5-note chords with sharpened root note

@end
