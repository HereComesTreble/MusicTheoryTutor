//
//  Four_note_Chord_MajorAdd4_MajorAdd9.h
//  MusicTheoryTutor
//
//  Created by Chelsea  Brzezinski on 2/28/13.
//  Copyright (c) 2013 Steven Lester. All rights reserved.
//

#import <SenTestingKit/SenTestingKit.h>

@interface Four_note_Chord_MajorAdd4_MajorAdd9 : SenTestCase

//Major Add 4th: add4
-(void)test_4note_add4Chords;         //test all 4-note Major Add 4th chords
-(void)test_4noteFlat_add4Chords;     //test all 4-note Major Add 4th chords with flattened root note
-(void)test_4noteSharp_add4Chords;    //test all 4-note Major Add 4th chords with sharpened root note

//Major Add 9th: add9
-(void)test_4note_add9Chords;         //test all 4-note Major Add 9th chords
-(void)test_4noteFlat_add9Chords;     //test all 4-note Major Add 9th chords with flattened root note
-(void)test_4noteSharp_add9Chords;    //test all 4-note Major Add 9th chords with sharpened root note

@end
