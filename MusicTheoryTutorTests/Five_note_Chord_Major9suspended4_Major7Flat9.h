//
//  Five_note_Chord_Major9suspended4_Major7Flat9.h
//  MusicTheoryTutor
//
//  Created by Chelsea  Brzezinski on 3/3/13.
//  Copyright (c) 2013 Steven Lester. All rights reserved.
//

#import <SenTestingKit/SenTestingKit.h>

@interface Five_note_Chord_Major9suspended4_Major7Flat9 : SenTestCase

//Major 9 suspended 4 - M9sus4
-(void)test_5note_Major9sus4Chords;         //test all 5-note chords
-(void)test_5noteFlat_Major9sus4Chords;     //test all 5-note chords with flattened root note
-(void)test_5noteSharp_Major9sus4Chords;    //test all 5-note chords with sharpened root note

//Major 7 flattened 9th - M7♭9
-(void)test_5note_Major7Flat9Chords;         //test all 5-note chords
-(void)test_5noteFlat_Major7Flat9Chords;     //test all 5-note chords with flattened root note
-(void)test_5noteSharp_Major7Flat9Chords;    //test all 5-note chords with sharpened root note


@end
