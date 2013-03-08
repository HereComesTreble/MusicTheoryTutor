//
//  Five_note_Chord_Dominant9Augmented5_Minor9.h
//  MusicTheoryTutor
//
//  Created by Chelsea  Brzezinski on 3/3/13.
//  Copyright (c) 2013 Steven Lester. All rights reserved.
//

#import <SenTestingKit/SenTestingKit.h>

@interface Five_note_Chord_Dominant9Augmented5_Minor9 : SenTestCase

//Dominant 9 Augmented 5 - 9♯5
-(void)test_5note_Dominant9aug5Chords;         //test all 5-note chords
-(void)test_5noteFlat_Dominant9aug5Chords;     //test all 5-note chords with flattened root note
-(void)test_5noteSharp_Dominant9aug5Chords;    //test all 5-note chords with sharpened root note

//Minor 9 - m9
-(void)test_5note_Minor9Chords;         //test all 5-note chords
-(void)test_5noteFlat_Minor9Chords;     //test all 5-note chords with flattened root note
-(void)test_5noteSharp_Minor9Chords;    //test all 5-note chords with sharpened root note


@end
