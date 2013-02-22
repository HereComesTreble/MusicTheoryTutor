//
//  Four_note_Chord_Major7_augmented5_flattened5.h
//  MusicTheoryTutor
//
//  Created by Chelsea  Brzezinski on 2/21/13.
//  Copyright (c) 2013 Steven Lester. All rights reserved.
//

#import <SenTestingKit/SenTestingKit.h>

@interface Four_note_Chord_Major7_augmented5_flattened5 : SenTestCase

//Major 7th augmented 5th: M7♯5
-(void)test_4note_Major7Augmented5Chords;         //test all 4-note Major 7 augmented5 chords
-(void)test_4noteFlat_Major7Augmented5Chords;     //test all 4-note Major 7 augmented5 chords with flattened root note
-(void)test_4noteSharp_Major7Augmented5Chords;    //test all 4-note Major 7 augmented5 chords with sharpened root note

////Major 7th Flattened 5th: M7♭5
-(void)test_4note_Major7Flattened5Chords;         //test all 4-note Major 7 flattened5 chords
-(void)test_4noteFlat_Major7Flattened5Chords;     //test all 4-note Major 7 flattened5 chords with flattened root note
-(void)test_4noteSharp_Major7Flattened5Chords;    //test all 4-note Major 7 flattened5 chords with sharpened root note

@end
