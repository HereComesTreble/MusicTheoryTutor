//
//  Five_note_Chord_DominantFlat5Aug9_DominantFlat 5Flat9.m
//  MusicTheoryTutor
//
//  Created by Chelsea  Brzezinski on 3/7/13.
//  Copyright (c) 2013 Steven Lester. All rights reserved.
//

#import "Five_note_Chord_DominantFlat5Aug9_DominantAddFlat9.h"
#import "ChordDictionary.h"
#import "Chords.h"
#import "MusicTheoryTutorTests.h"

@implementation Five_note_Chord_DominantFlat5Aug9_DominantAddFlat9

-(void)test_5note_DominantFlat5Aug9Chords
{
    //A Dominant Flat 5 Augmented 9: A-C♯-E♭-G-B♯
    ChordDictionary *chordDictionary = [ChordDictionary new];
    NSMutableString * chordRoot = [NSMutableString stringWithString: @"A"];
    NSMutableString * chordType = [NSMutableString stringWithString: @"7♭5♯9"];
    //Dominant Flattened 5th Augmented 9th - 7♭5♯9
    NSArray * attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    
    int index =0;
    bool correctAns=YES;
    NSArray * keyAnswer = [NSArray arrayWithObjects:@"A", @"C♯", @"E♭", @"G",@"B♯", nil];
    
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//correctAnws=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed A Dominant Flat 5 Augmented 9: A-C♯-E♭-G-B♯");
    }
    
    
    //B Dominant Flat 5 Augmented 9: B-D♯-F-A-Cx
    chordRoot=[NSMutableString stringWithString: @"B"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"B", @"D♯", @"F", @"A",@"Cx", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed B Dominant Flat 5 Augmented 9: B-D♯-F-A-Cx");
    }
    
    
    //C Dominant Flat 5 Augmented 9: C-E-G♭-B♭-D♯
    chordRoot=[NSMutableString stringWithString: @"C"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"C", @"E", @"G♭", @"B♭",@"D♯", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed C Dominant Flat 5 Augmented 9: C-E-G♭-B♭-D♯");
    }
    
    
    //D Dominant Flat 5 Augmented 9: D-F♯-A♭-C-E♯
    chordRoot=[NSMutableString stringWithString: @"D"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"D", @"F♯", @"A♭", @"C",@"E♯", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed D Dominant Flat 5 Augmented 9: D-F♯-A♭-C-E♯");
    }
    
    
    //E Dominant Flat 5 Augmented 9: E-G♯-B♭-D-Fx
    chordRoot=[NSMutableString stringWithString: @"E"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"E", @"G♯", @"B♭", @"D",@"Fx", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed E Dominant Flat 5 Augmented 9: E-G♯-B♭-D-Fx");
    }
    
    
    //F Dominant Flat 5 Augmented 9: F-A-C♭-E♭-G♯
    chordRoot=[NSMutableString stringWithString: @"F"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"F", @"A", @"C♭", @"E♭",@"G♯", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed F Dominant Flat 5 Augmented 9: F-A-C♭-E♭-G♯");
    }
    
    
    //G Dominant Flat 5 Augmented 9: G-B-D♭-F-A♯
    chordRoot=[NSMutableString stringWithString: @"G"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"G", @"B", @"D♭", @"F", @"A♯", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed G Dominant Flat 5 Augmented 9: G-B-D♭-E-A♯");
    }
}

-(void)test_5noteFlat_DominantFlat5Aug9Chords
{
    //A♭ Dominant Flat 5 Augmented 9: A♭-C-E♭♭-G♭-B
    ChordDictionary *chordDictionary = [ChordDictionary new];
    NSMutableString * chordRoot = [NSMutableString stringWithString: @"A♭"];
    NSMutableString * chordType = [NSMutableString stringWithString: @"7♭5♯9"];
    //Dominant Flattened 5th Augmented 9th - 7♭5♯9
    NSArray * attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    
    int index =0;
    bool correctAns=YES;
    NSArray * keyAnswer = [NSArray arrayWithObjects:@"A♭", @"C", @"E♭♭", @"G♭", @"B", nil];
    
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//correctAnws=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed A♭ Dominant Flat 5 Augmented 9: A♭-C-E♭♭-G♭-B");
    }
    
    
    //B♭ Dominant Flat 5 Augmented 9: B♭-D-F♭-A♭-C♯
    chordRoot=[NSMutableString stringWithString: @"B♭"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"B♭", @"D", @"F♭", @"A♭", @"C♯", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed B♭ Dominant Flat 5 Augmented 9: B♭-D-F♭-A♭-C♯");
    }
    
    
    //C♭ Dominant Flat 5 Augmented 9: C♭-E♭-G♭♭-B♭♭-D
    chordRoot=[NSMutableString stringWithString: @"C♭"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"C♭", @"E♭", @"G♭♭", @"B♭♭", @"D", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed C♭ Dominant Flat 5 Augmented 9: C♭-E♭-G♭♭-B♭♭-D");
    }
    
    
    //D♭ Dominant Flat 5 Augmented 9: D♭-F-A♭♭-C♭-E
    chordRoot=[NSMutableString stringWithString: @"D♭"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"D♭", @"F", @"A♭♭", @"C♭", @"E", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed D♭ Dominant Flat 5 Augmented 9: D♭-F-A♭♭-C♭-E");
    }
    
    
    //E♭ Dominant Flat 5 Augmented 9: E♭-G-B♭♭-D♭-F♯
    chordRoot=[NSMutableString stringWithString: @"E♭"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"E♭", @"G", @"B♭♭", @"D♭", @"F♯", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed E♭ Dominant Flat 5 Augmented 9: E♭-G-B♭♭-D♭-F♯");
    }
    
    
    //F♭ Dominant Flat 5 Augmented 9: F♭-A♭-C♭♭-E♭♭-G
    chordRoot=[NSMutableString stringWithString: @"F♭"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"F♭", @"A♭", @"C♭♭", @"E♭♭", @"G", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed F♭ Dominant Flat 5 Augmented 9: F♭-A♭-C♭♭-E♭♭-G");
    }
    
    
    //G♭ Dominant Flat 5 Augmented 9: G♭-B♭-D♭♭-F♭-A
    chordRoot=[NSMutableString stringWithString: @"G♭"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"G♭", @"B♭", @"D♭♭", @"F♭", @"A", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed G Dominant Flat 5 Augmented 9: G♭-B♭-D♭♭-E♭-A");
    }
}

-(void)test_5noteSharp_DominantFlat5Aug9Chords
{
    //A♯ Dominant Flat 5 Augmented 9: A♯-Cx-E-G♯-Bx
    ChordDictionary *chordDictionary = [ChordDictionary new];
    NSMutableString * chordRoot = [NSMutableString stringWithString: @"A♯"];
    NSMutableString * chordType = [NSMutableString stringWithString: @"7♭5♯9"];
    //Dominant Flattened 5th Augmented 9th - 7♭5♯9
    NSArray * attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    
    int index =0;
    bool correctAns=YES;
    NSArray * keyAnswer = [NSArray arrayWithObjects:@"A♯", @"Cx", @"E", @"G♯", @"Bx", nil];
    
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//correctAnws=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed A♯ Dominant Flat 5 Augmented 9: A♯-Cx-E-G♯-Bx");
    }
    
    
    //B♯ Dominant Flat 5 Augmented 9: B♯-Dx-F♯-A♯-C♯♯♯
    chordRoot=[NSMutableString stringWithString: @"B♯"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"B♯", @"Dx", @"F♯", @"A♯", @"C♯♯♯♯", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed B♯ Dominant Flat 5 Augmented 9: B♯-Dx-F♯-A♯-C♯♯♯");
    }
    
    
    //C♯ Dominant Flat 5 Augmented 9: C♯-E♯-G-B-Dx
    chordRoot=[NSMutableString stringWithString: @"C♯"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"C♯", @"E♯", @"G", @"B", @"Dx", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed C♯ Dominant Flat 5 Augmented 9: C♯-E♯-G-B-Dx");
    }
    
    
    //D♯ Dominant Flat 5 Augmented 9: D♯-Fx-A-C♯-Ex
    chordRoot=[NSMutableString stringWithString: @"D♯"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"D♯", @"Fx", @"A", @"C♯", @"Ex", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed D♯ Dominant Flat 5 Augmented 9: D♯-Fx-A-C♯-Ex");
    }
    
    
    //E♯ Dominant Flat 5 Augmented 9: E♯-Gx-B-D♯-F♯♯♯
    chordRoot=[NSMutableString stringWithString: @"E♯"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"E♯", @"Gx", @"B", @"D♯", @"F♯♯♯", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed E♯ Dominant Flat 5 Augmented 9: E♯-Gx-B-D♯-F♯♯♯");
    }
    
    
    //F♯ Dominant Flat 5 Augmented 9: F-A-C♭-E♭-G♯
    chordRoot=[NSMutableString stringWithString: @"F♯"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"F♯", @"A♯", @"C", @"E", @"Gx", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed F♯ Dominant Flat 5 Augmented 9: F♯-A♯-C-E-Gx");
    }
    
    
    //G♯ Dominant Flat 5 Augmented 9: G♯-B♯-D-F♯-Ax
    chordRoot=[NSMutableString stringWithString: @"G♯"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"G♯", @"B♯", @"D♯", @"F♯", @"Ax", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed G♯ Dominant Flat 5 Augmented 9: G♯-B♯-D♯-E♯-Ax");
    }
}

-(void)test_5note_DominantFlat9Chords
{
    //A Dominant Flat 9: A-C♯-E-G-B♭
    ChordDictionary *chordDictionary = [ChordDictionary new];
    NSMutableString * chordRoot = [NSMutableString stringWithString: @"A"];
    NSMutableString * chordType = [NSMutableString stringWithString: @"7♯9"];
    //Dominant Add Augmented 9th - 7♯9
    NSArray * attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    
    int index =0;
    bool correctAns=YES;
    NSArray * keyAnswer = [NSArray arrayWithObjects:@"A", @"C♯", @"E", @"G", @"B♭", nil];
    
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//correctAnws=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed A Dominant Flat 9: A-C♯-E-G-B♭");
    }
    
    
    //B Dominant Flat 9: B-D♯-F♯-A-C
    chordRoot=[NSMutableString stringWithString: @"B"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"B", @"D♯", @"F♯", @"A",@"C", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed B Dominant Flat 9: B-D♯-F♯-A-C");
    }
    
    
    //C Dominant Flat 9: C-E-G-B♭-D♭
    chordRoot=[NSMutableString stringWithString: @"C"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"C", @"E", @"G", @"B♭",@"D♭", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed C Flat Augmented 9: C-E-G-B♭-D♭");
    }
    
    
    //D Dominant Flat 9: D-F♯-A-C-E♭
    chordRoot=[NSMutableString stringWithString: @"D"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"D", @"F♯", @"A", @"C", @"E♭", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed D Dominant Flat 9: D-F♯-A-C-E♭");
    }
    
    
    //E Dominant Flat 9: E-G♯-B-D-F
    chordRoot=[NSMutableString stringWithString: @"E"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"E", @"G♯", @"B", @"D", @"F", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed E Dominant Flat 9: E-G♯-B-D-F");
    }
    
    
    //F Dominant Flat 9: F-A-C-E♭-G♭
    chordRoot=[NSMutableString stringWithString: @"F"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"F", @"A", @"C", @"E♭", @"G♭", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed F Dominant Flat 9: F-A-C-E♭-G♭");
    }
    
    
    //G Dominant Flat 9: G-B-D-F-A♭
    chordRoot=[NSMutableString stringWithString: @"G"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"G", @"B", @"D", @"F", @"A♭", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed G Dominant Flat 9: G-B-D-E-A♭");
    }
}

-(void)test_5noteFlat_DominantFlat9Chords
{
    //A♭ Dominant Flat 9: A♭-C-E♭-G♭-B♭♭
    ChordDictionary *chordDictionary = [ChordDictionary new];
    NSMutableString * chordRoot = [NSMutableString stringWithString: @"A♭"];
    NSMutableString * chordType = [NSMutableString stringWithString: @"7♯9"];
    //Dominant Add Augmented 9th - 7♯9
    NSArray * attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    
    int index =0;
    bool correctAns=YES;
    NSArray * keyAnswer = [NSArray arrayWithObjects:@"A♭", @"C", @"E♭", @"G♭", @"B♭♭", nil];
    
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//correctAnws=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed A♭ Dominant Flat 9: A♭-C-E♭-G♭-B♭♭");
    }
    
    
    //B♭ Dominant Flat 9: B♭-D-F-A♭-C♭
    chordRoot=[NSMutableString stringWithString: @"B♭"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"B♭", @"D", @"F", @"A♭", @"C♭", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed B♭ Dominant Flat 9: B♭-D-F-A♭-C♭");
    }
    
    
    //C♭ Dominant Flat 9: C♭-E♭-G♭-B♭♭-D♭♭
    chordRoot=[NSMutableString stringWithString: @"C♭"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"C♭", @"E♭", @"G♭", @"B♭♭", @"D♭♭", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed C♭ Flat Augmented 9: C♭-E♭-G♭-B♭♭-D♭♭");
    }
    
    
    //D♭ Dominant Flat 9: D♭-F-A♭-C♭-E♭♭
    chordRoot=[NSMutableString stringWithString: @"D♭"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"D♭", @"F", @"A♭", @"C♭", @"E♭♭", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed D♭ Dominant Flat 9: D♭-F-A♭-C♭-E♭♭");
    }
    
    
    //E♭ Dominant Flat 9: E♭-G-B♭-D♭-F♭
    chordRoot=[NSMutableString stringWithString: @"E♭"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"E♭", @"G", @"B♭", @"D♭", @"F♭", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed E♭ Dominant Flat 9: E♭-G-B♭-D♭-F♭");
    }
    
    
    //F♭ Dominant Flat 9: F♭-A♭-C♭-E♭♭-G♭♭
    chordRoot=[NSMutableString stringWithString: @"F♭"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"F♭", @"A♭", @"C♭", @"E♭♭", @"G♭♭", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed F♭ Dominant Flat 9: F♭-A♭-C♭-E♭♭-G♭♭");
    }
    
    
    //G♭ Dominant Flat 9: G♭-B♭-D♭-F♭-A♭♭
    chordRoot=[NSMutableString stringWithString: @"G♭"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"G♭", @"B♭", @"D♭", @"F♭", @"A♭♭", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed G♭ Dominant Flat 9: G♭-B♭-D♭-E♭-A♭♭");
    }
}

-(void)test_5noteSharp_DominantFlat9Chords
{
    //A♯ Dominant Flat 9: A♯-Cx-E♯-G♯-B
    ChordDictionary *chordDictionary = [ChordDictionary new];
    NSMutableString * chordRoot = [NSMutableString stringWithString: @"A♯"];
    NSMutableString * chordType = [NSMutableString stringWithString: @"7♯9"];
    //Dominant Add Augmented 9th - 7♯9
    NSArray * attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    
    int index =0;
    bool correctAns=YES;
    NSArray * keyAnswer = [NSArray arrayWithObjects:@"A♯", @"Cx", @"E♯", @"G♯", @"B", nil];
    
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//correctAnws=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed A♯ Dominant Flat 9: A♯-Cx-E♯-G♯-B");
    }
    
    
    //B♯ Dominant Flat 9: B♯-Dx-Fx-A♯-C♯
    chordRoot=[NSMutableString stringWithString: @"B♯"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"B♯", @"Dx", @"Fx", @"A♯", @"C♯", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed B♯ Dominant Flat 9: B♯-Dx-Fx-A♯-C♯");
    }
    
    
    //C♯ Dominant Flat 9: C♯-E♯-G♯-B-D
    chordRoot=[NSMutableString stringWithString: @"C♯"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"C♯", @"E♯", @"G♯", @"B", @"D", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed C♯ Flat Augmented 9: C♯-E♯-G♯-B-D");
    }
    
    
    //D♯ Dominant Flat 9: D♯-Fx-A♯-C♯-E
    chordRoot=[NSMutableString stringWithString: @"D♯"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"D♯", @"Fx", @"A♯", @"C♯", @"E", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed D♯ Dominant Flat 9: D♯-Fx-A♯-C♯-E");
    }
    
    
    //E♯ Dominant Flat 9: E♯-Gx-B♯-D♯-F♯
    chordRoot=[NSMutableString stringWithString: @"E♯"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"E♯", @"Gx", @"B♯", @"D♯", @"F♯", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed E♯ Dominant Flat 9: E♯-Gx-B♯-D♯-F♯");
    }
    
    
    //F♯ Dominant Flat 9: F♯-A♯-C♯-E-G
    chordRoot=[NSMutableString stringWithString: @"F♯"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"F♯", @"A♯", @"C♯", @"E", @"G", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed F♯ Dominant Flat 9: F♯-A♯-C♯-E-G");
    }
    
    
    //G♯ Dominant Flat 9: G♯-B♯-D♯-F♯-A
    chordRoot=[NSMutableString stringWithString: @"G♯"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"G♯", @"B♯", @"D♯", @"F♯", @"A", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed G♯ Dominant Flat 9: G♯-B♯-D♯-E♯-A");
    }
}

@end
