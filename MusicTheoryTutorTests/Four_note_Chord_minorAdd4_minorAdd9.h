//
//  Four_note_Chord_minorAdd4_minorAdd9.h
//  MusicTheoryTutor
//
//  Created by Chelsea  Brzezinski on 2/28/13.
//  Copyright (c) 2013 Steven Lester. All rights reserved.
//

#import <SenTestingKit/SenTestingKit.h>

@interface Four_note_Chord_minorAdd4_minorAdd9 : SenTestCase

//Minor add4: madd4
-(void)test_4note_mAdd4Chords;         //test all 4-note Minor add 4
-(void)test_4noteFlat_mAdd4Chords;     //test all 4-note Minor add 4 with flattened root note
-(void)test_4noteSharp_mAdd4Chords;    //test all 4-note Minor add 4 with sharpened root note

//Minor add9: madd9
-(void)test_4note_mAdd9Chords;         //test all 4-note Minor add 9
-(void)test_4noteFlat_mAdd9Chords;     //test all 4-note Minor add 9 with flattened root note
-(void)test_4noteSharp_mAdd9Chords;    //test all 4-note Minor add 9 with sharpened root note

@end
