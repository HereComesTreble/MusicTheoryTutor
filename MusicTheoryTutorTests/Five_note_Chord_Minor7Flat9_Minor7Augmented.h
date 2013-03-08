//
//  Five_note_Chord_Minor7Flat9_Minor7Augmented.h
//  MusicTheoryTutor
//
//  Created by Chelsea  Brzezinski on 3/7/13.
//  Copyright (c) 2013 Steven Lester. All rights reserved.
//

#import <SenTestingKit/SenTestingKit.h>

@interface Five_note_Chord_Minor7Flat9_Minor7Augmented : SenTestCase

//Minor 7 Flattened 9th - m7♭9
-(void)test_5note_Minor7Flat9Chords;         //test all 5-note chords
-(void)test_5noteFlat_Minor7Flat9Chords;     //test all 5-note chords with flattened root note
-(void)test_5noteSharp_Minor7Flat9Chords;    //test all 5-note chords with sharpened root note

//Minor 7 Augmented - m7♯9
-(void)test_5note_Minor7AugmentedChords;         //test all 5-note chords
-(void)test_5noteFlat_Minor7AugmentedChords;     //test all 5-note chords with flattened root note
-(void)test_5noteSharp_Minor7AugmentedChords;    //test all 5-note chords with sharpened root note


@end
