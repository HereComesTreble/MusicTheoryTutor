//
//  Three_note_Chord_Suspended_2_4.h
//  MusicTheoryTutor
//
//  Created by Chelsea  Brzezinski on 2/16/13.
//  Copyright (c) 2013 Steven Lester. All rights reserved.
//

#import <SenTestingKit/SenTestingKit.h>

@interface Three_note_Chord_Suspended_2_4 : SenTestCase

//sus2 
-(void)test_3note_Sus2Chords;         //test all 3-note Suspended 2 chords
-(void)test_3noteFlat_Sus2Chords;     //test all 3-note Suspended 2 chords with flattened root note
-(void)test_3noteSharp_Sus2Chords;    //test all 3-note Suspended 2 chords with sharpened root note

//sus4
-(void)test_3note_Sus4Chords;         //test all 3-note Suspended 4 chords
-(void)test_3noteFlat_Sus4Chords;     //test all 3-note Suspended 4 chords with flattened root note
-(void)test_3noteSharp_Sus4Chords;    //test all 3-note Suspended 4 chords with sharpened root note

@end
