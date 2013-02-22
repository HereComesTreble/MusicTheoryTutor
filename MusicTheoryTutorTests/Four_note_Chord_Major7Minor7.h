//
//  Four_note_Chord_Major7Minor7.h
//  MusicTheoryTutor
//
//  Created by Chelsea  Brzezinski on 2/17/13.
//  Copyright (c) 2013 Steven Lester. All rights reserved.
//

#import <SenTestingKit/SenTestingKit.h>

@interface Four_note_Chord_Major7Minor7 : SenTestCase

//Major 7: M7
-(void)test_4note_Major7Chords;         //test all 4-note Major 7 chords
-(void)test_4noteFlat_Major7Chords;     //test all 4-note Major 7 chords with flattened root note
-(void)test_4noteSharp_Major7Chords;    //test all 4-note Major 7 chords with sharpened root note

//Minor 7: m7 
-(void)test_4note_Minor7Chords;         //test all 4-note Minor 7 chords
-(void)test_4noteFlat_Minor7Chords;     //test all 4-note Minor 7 chords with flattened root note
-(void)test_4noteSharp_Minor7Chords;    //test all 4-note Minor 7 chords with sharpened root note

@end
