//
//  Five_note_Chord_Minor9Flat5_Major9.h
//  MusicTheoryTutor
//
//  Created by Chelsea  Brzezinski on 3/3/13.
//  Copyright (c) 2013 Steven Lester. All rights reserved.
//

#import <SenTestingKit/SenTestingKit.h>

@interface Five_note_Chord_Minor9Flat5_Major9 : SenTestCase

//Minor 9 flattened 5 - m9♭5
-(void)test_5note_Minor9Flat5Chords;         //test all 5-note chords
-(void)test_5noteFlat_Minor9Flat5Chords;     //test all 5-note chords with flattened root note
-(void)test_5noteSharp_Minor9Flat5Chords;    //test all 5-note chords with sharpened root note

//Major 9 - M9
-(void)test_5note_Major9Chords;         //test all 5-note chords
-(void)test_5noteFlat_Major9Chords;     //test all 5-note chords with flattened root note
-(void)test_5noteSharp_Major9Chords;    //test all 5-note chords with sharpened root note


@end
