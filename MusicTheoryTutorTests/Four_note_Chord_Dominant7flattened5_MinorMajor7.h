//
//  Four_note_Chord_Dominant7flattened5_MinorMajor7.h
//  MusicTheoryTutor
//
//  Created by Chelsea  Brzezinski on 2/28/13.
//  Copyright (c) 2013 Steven Lester. All rights reserved.
//

#import <SenTestingKit/SenTestingKit.h>

@interface Four_note_Chord_Dominant7flattened5_MinorMajor7 : SenTestCase

//Dominant 7th flattened 5: 7♭5
-(void)test_4note_7flat5Chords;         //test all 4-note Dominant 7th chords flattened 5
-(void)test_4noteFlat_7flat5Chords;     //test all 4-note Dominant 7th chords flattened 5 with flattened root note
-(void)test_4noteSharp_7flat5Chords;    //test all 4-note Dominant 7th chords flattened 5 with sharpened root note


//Minor Major 7: m/M7
-(void)test_4note_mM7Chords;         //test all 4-note Minor Major 7
-(void)test_4noteFlat_mM7Chords;     //test all 4-note Minor Major 7 with flattened root note
-(void)test_4noteSharp_mM7Chords;    //test all 4-note Minor Major 7 with sharpened root note

@end
