//
//  Three_note_Chord_DiminishedAugmented.h
//  MusicTheoryTutor
//
//  Created by Chelsea  Brzezinski on 2/15/13.
//  Copyright (c) 2013 Steven Lester. All rights reserved.
//

#import <SenTestingKit/SenTestingKit.h>

@interface Three_note_Chord_DiminishedAugmented : SenTestCase

-(void)test_3note_DimChords;  //test all 3-note Diminished chords
-(void)test_3noteFlat_DimChords;  //test all 3-note Diminished chords with flattened root note
-(void)test_3noteSharp_DimChords;  //test all 3-note Diminished chords with sharpened root note

-(void)test_3note_AugChords;  //test all 3-note Augmented chords
-(void)test_3noteFlat_AugChords;  //test all 3-note Augmented chords with flattened root note
-(void)test_3noteSharp_AugChords;  //test all 3-note Augmented chords with sharpened root note


@end
