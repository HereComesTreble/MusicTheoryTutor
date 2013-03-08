//
//  Five_note_Chord_DominantAdd6_MinorMajor9.h
//  MusicTheoryTutor
//
//  Created by Chelsea  Brzezinski on 3/4/13.
//  Copyright (c) 2013 Steven Lester. All rights reserved.
//

#import <SenTestingKit/SenTestingKit.h>

@interface Five_note_Chord_DominantAdd6_MinorMajor9 : SenTestCase

//Dominant Add 6 - 7add6
-(void)test_5note_DomAdd6Chords;         //test all 5-note chords
-(void)test_5noteFlat_DomAdd6Chords;     //test all 5-note chords with flattened root note
-(void)test_5noteSharp_DomAdd6Chords;    //test all 5-note chords with sharpened root note

//Minor (Major) 9th - m/M9
-(void)test_5note_MinorMajor9Chords;         //test all 5-note chords
-(void)test_5noteFlat_MinorMajor9Chords;     //test all 5-note chords with flattened root note
-(void)test_5noteSharp_MinorMajor9Chords;    //test all 5-note chords with sharpened root note

@end
