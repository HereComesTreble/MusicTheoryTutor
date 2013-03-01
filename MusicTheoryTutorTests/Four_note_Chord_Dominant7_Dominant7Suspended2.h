//
//  Four_note_Chord_Dominant7_Dominant7Suspended2.h
//  MusicTheoryTutor
//
//  Created by Chelsea  Brzezinski on 2/28/13.
//  Copyright (c) 2013 Steven Lester. All rights reserved.
//

#import <SenTestingKit/SenTestingKit.h>

@interface Four_note_Chord_Dominant7_Dominant7Suspended2 : SenTestCase

//Dominant 7th: 7
-(void)test_4note_7Chords;         //test all 4-note Dominant 7th chords
-(void)test_4noteFlat_7Chords;     //test all 4-note Dominant 7th chords with flattened root note
-(void)test_4noteSharp_7Chords;    //test all 4-note Dominant 7th chords with sharpened root note

//Dominant 7th Suspended 2nd: 7sus2
-(void)test_4note_7sus2Chords;         //test all 4-note Dominant 7th Suspended 2nd chords
-(void)test_4noteFlat_7sus2Chords;     //test all 4-note Dominant 7th Suspended 2nd chords with flattened root note
-(void)test_4noteSharp_7sus2Chords;    //test all 4-note Dominant 7th Suspended 2nd chords with sharpened root note


@end
