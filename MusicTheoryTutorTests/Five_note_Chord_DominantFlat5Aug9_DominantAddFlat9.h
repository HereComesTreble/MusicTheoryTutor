//
//  Five_note_Chord_DominantFlat5Aug9_DominantAddFlat9.h
//  MusicTheoryTutor
//
//  Created by Chelsea  Brzezinski on 3/7/13.
//  Copyright (c) 2013 Steven Lester. All rights reserved.
//

#import <SenTestingKit/SenTestingKit.h>

@interface Five_note_Chord_DominantFlat5Aug9_DominantAddFlat9 : SenTestCase

//Dominant Flattened 5th Augmented 9th - 7♭5♯9
-(void)test_5note_DominantFlat5Aug9Chords;         //test all 5-note chords
-(void)test_5noteFlat_DominantFlat5Aug9Chords;     //test all 5-note chords with flattened root note
-(void)test_5noteSharp_DominantFlat5Aug9Chords;    //test all 5-note chords with sharpened root note

//Dominant Add Flattened 9th - 7♭9
-(void)test_5note_DominantFlat9Chords;         //test all 5-note chords
-(void)test_5noteFlat_DominantFlat9Chords;     //test all 5-note chords with flattened root note
-(void)test_5noteSharp_DominantFlat9Chords;    //test all 5-note chords with sharpened root note

@end
