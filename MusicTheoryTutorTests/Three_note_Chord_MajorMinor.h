//
//  Three_note_Chord_MajorMinor.h
//  MusicTheoryTutor
//
//  Created by Chelsea  Brzezinski on 2/15/13.
//  Copyright (c) 2013 Steven Lester. All rights reserved.
//

#import <SenTestingKit/SenTestingKit.h>

@interface Three_note_Chord_MajorMinor : SenTestCase

-(void)testExample;            //This documents the chord test method in detail

-(void)test_3note_MajorChords;  //test all 3-note Major chords
-(void)test_3note_MinorChords;  //test all 3-note Minor chords

-(void)test_3noteFlat_MajorChords;  //test all 3-note Major chords with a flattened rootNote
-(void)test_3noteFlat_MinorChords;  //test all 3-note Minor chords with a flattened rootNote

-(void)test_3noteSharp_MajorChords;  //test all 3-note Major chords with a sharpened rootNote
-(void)test_3noteSharp_MinorChords;  //test all 3-note Minor chords with a sharpened rootNote

@end
