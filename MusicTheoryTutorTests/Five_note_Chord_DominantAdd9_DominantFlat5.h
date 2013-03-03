//
//  Five_note_Chord_DominantAdd9_DominantFlat5.h
//  MusicTheoryTutor
//
//  Created by Chelsea  Brzezinski on 3/2/13.
//  Copyright (c) 2013 Steven Lester. All rights reserved.
//

#import <SenTestingKit/SenTestingKit.h>

@interface Five_note_Chord_DominantAdd9_DominantFlat5 : SenTestCase

//Dominant add 9th - 9
-(void)test_5note_Dominantadd9Chords;         //test all 5-note chords
-(void)test_5noteFlat_Dominantadd9Chords;     //test all 5-note chords with flattened root note
-(void)test_5noteSharp_Dominantadd9Chords;    //test all 5-note chords with sharpened root note

//Dominant 9 flattened 5th - 9b5
-(void)test_5note_Dominant9Flat5Chords;         //test all 5-note chords
-(void)test_5noteFlat_Dominant9Flat5Chords;     //test all 5-note chords with flattened root note
-(void)test_5noteSharp_Dominant9Flat5Chords;    //test all 5-note chords with sharpened root note

@end
