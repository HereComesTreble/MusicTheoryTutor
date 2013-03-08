//
//  Five_note_Chord_Major6add9_Minor6add9.h
//  MusicTheoryTutor
//
//  Created by Chelsea  Brzezinski on 3/2/13.
//  Copyright (c) 2013 Steven Lester. All rights reserved.
//

#import <SenTestingKit/SenTestingKit.h>

@interface Five_note_Chord_Major6add9_Minor6add9 : SenTestCase

//Major 6 add 9 - 6add9
-(void)test_5note_Major6add9Chords;         //test all 5-note Major 6 add 9 chords
-(void)test_5noteFlat_Major6add9Chords;     //test all 5-note Major 6 add 9 chords with flattened root note
-(void)test_5noteSharp_Major6add9Chords;    //test all 5-note Major 6 add 9 chords with sharpened root note

//Minor 6 add 9 - m6add9
-(void)test_5note_Minor6add9Chords;         //test all 5-note Minor 6 add 9 chords
-(void)test_5noteFlat_Minor6add9Chords;     //test all 5-note Minor 6 add 9 chords with flattened root note
-(void)test_5noteSharp_Minor6add9Chords;    //test all 5-note Minor 6 add 9 chords with sharpened root note


@end
