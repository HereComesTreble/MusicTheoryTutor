//
//  Four_note_Chord_6th_MajorFlat6.h
//  MusicTheoryTutor
//
//  Created by Chelsea  Brzezinski on 2/21/13.
//  Copyright (c) 2013 Steven Lester. All rights reserved.
//

#import <SenTestingKit/SenTestingKit.h>

@interface Four_note_Chord_6th_MajorFlat6 : SenTestCase

//6th: 6
-(void)test_4note_6Chords;         //test all 4-note 6th chords
-(void)test_4noteFlat_6Chords;     //test all 4-note 6th chords with flattened root note
-(void)test_4noteSharp_6Chords;    //test all 4-note 6th chords with sharpened root note

//Major Flat 6: ♭6
-(void)test_4note_Major7Flat6Chords;         //test all 4-note Major Flat 6th flattened5 chords
-(void)test_4noteFlat_Major7Flat6Chords;     //test all 4-note Major Flat 6th flattened5 chords with flattened root note
-(void)test_4noteSharp_Major7Flat6Chords;    //test all 4-note Major Flat 6th chords with sharpened root note

@end
