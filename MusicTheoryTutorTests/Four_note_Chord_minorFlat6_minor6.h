//
//  Four_note_Chord_minorFlat6_minor6.h
//  MusicTheoryTutor
//
//  Created by Chelsea  Brzezinski on 2/28/13.
//  Copyright (c) 2013 Steven Lester. All rights reserved.
//

#import <SenTestingKit/SenTestingKit.h>

@interface Four_note_Chord_minorFlat6_minor6 : SenTestCase

//Minor flattened 6: m♭6
-(void)test_4note_mflat6Chords;         //test all 4-note Minor add flattened 6
-(void)test_4noteFlat_mflat6Chords;     //test all 4-note Minor add flattened 6 with flattened root note
-(void)test_4noteSharp_mflat6Chords;    //test all 4-note Minor add flattened 6 with sharpened root note

//Minor 6: m6
-(void)test_4note_m6Chords;         //test all 4-note Minor 6
-(void)test_4noteFlat_m6Chords;     //test all 4-note Minor 6 with flattened root note
-(void)test_4noteSharp_m6Chords;    //test all 4-note Minor 6 with sharpened root note

@end
