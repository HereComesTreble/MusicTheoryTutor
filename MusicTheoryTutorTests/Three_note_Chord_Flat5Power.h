//
//  Three_note_Chord_Flat5Power.h
//  MusicTheoryTutor
//
//  Created by Chelsea  Brzezinski on 2/16/13.
//  Copyright (c) 2013 Steven Lester. All rights reserved.
//

#import <SenTestingKit/SenTestingKit.h>

@interface Three_note_Chord_Flat5Power : SenTestCase

-(void)test_3note_Flat5Chords;  //test all 3-note Flat5 chords
-(void)test_3noteFlat_Flat5Chords;  //test all 3-note Flat5 chords with flattened root note
-(void)test_3noteSharp_Flat5Chords;  //test all 3-note Flat5 chords with sharpened root note

-(void)test_3note_PowerChords;  //test all 3-note Power chords
-(void)test_3noteFlat_PowerChords;  //test all 3-note Power chords with flattened root note
-(void)test_3noteSharp_PowerChords;  //test all 3-note Power chords with sharpened root note


@end
