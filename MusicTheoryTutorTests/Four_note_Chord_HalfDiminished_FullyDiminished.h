//
//  Four_note_Chord_HalfDiminished_FullyDiminished.h
//  MusicTheoryTutor
//
//  Created by Chelsea  Brzezinski on 2/17/13.
//  Copyright (c) 2013 Steven Lester. All rights reserved.
//

#import <SenTestingKit/SenTestingKit.h>

@interface Four_note_Chord_HalfDiminished_FullyDiminished : SenTestCase

//Half Diminished 7th: m7♭5
-(void)test_4note_HalfDiminished7Chords;         //test all 4-note Half Diminished chords
-(void)test_4noteFlat_HalfDiminished7Chords;     //test all 4-note Half Diminished chords with flattened root note
-(void)test_4noteSharp_HalfDiminished7Chords;    //test all 4-note Half Diminished chords with sharpened root note

//Fully-diminished 7th: dim7
-(void)test_4note_FullyDiminished7Chords;         //test all 4-note FullyDiminished chords
-(void)test_4noteFlat_FullyDiminished7Chords;     //test all 4-note FullyDiminished chords with flattened root note
-(void)test_4noteSharp_FullyDiminished7Chords;    //test all 4-note FullyDiminished chords with sharpened root note


@end
