//
//  Four_note_Chord_Dominant7sus4_Dominant7aug5.h
//  MusicTheoryTutor
//
//  Created by Chelsea  Brzezinski on 2/28/13.
//  Copyright (c) 2013 Steven Lester. All rights reserved.
//

#import <SenTestingKit/SenTestingKit.h>

@interface Four_note_Chord_Dominant7sus4_Dominant7aug5 : SenTestCase

//Dominant 7th Suspended 4th: 7sus4
-(void)test_4note_7sus2Chords;         //test all 4-note Dominant 7th Suspended 4th chords
-(void)test_4noteFlat_7sus4Chords;     //test all 4-note Dominant 7th Suspended 4th chords with flattened root note
-(void)test_4noteSharp_7sus4Chords;    //test all 4-note Dominant 7th Suspended 4th chords with sharpened root note

//Dominant 7th augmented 5th: 7♯5
-(void)test_4note_7aug5Chords;         //test all 4-note Dominant 7th augmented 5th chords
-(void)test_4noteFlat_7aug5Chords;     //test all 4-note Dominant 7th augmented 5th chords with flattened root note
-(void)test_4noteSharp_7aug5Chords;    //test all 4-note Dominant 7th augmented 5th chords with sharpened root note

@end
