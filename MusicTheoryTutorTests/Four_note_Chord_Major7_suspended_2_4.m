//
//  Four_note_Chord_Major7_suspended_2_4.m
//  MusicTheoryTutor
//
//  Created by Chelsea  Brzezinski on 2/21/13.
//  Copyright (c) 2013 Steven Lester. All rights reserved.
//

#import "Four_note_Chord_Major7_suspended_2_4.h"
#import "ChordDictionary.h"
#import "Chords.h"
#import "MusicTheoryTutorTests.h"

@implementation Four_note_Chord_Major7_suspended_2_4

-(void)test_4note_Major7Suspended2Chords
{
    //A Major 7 suspended 4: A-B-E-G♯
    ChordDictionary *chordDictionary = [ChordDictionary new];
    NSMutableString * chordRoot = [NSMutableString stringWithString: @"A"];
    NSMutableString * chordType = [NSMutableString stringWithString: @"M7sus2"];
    //Major 7 suspended 2: M7sus2
    NSArray * attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    
    int index =0;
    bool correctAns=YES;
    NSArray * keyAnswer = [NSArray arrayWithObjects:@"A", @"B", @"E", @"G♯", nil];
    
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//correctAnws=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed A Major 7 suspended 2: A-B-E-G♯");
    }
    
    
    //B Major 7 suspended 2: B-C♯-F♯-A♯
    chordRoot=[NSMutableString stringWithString: @"B"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"B", @"C♯", @"F♯", @"A♯", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed B Major 7 suspended 2: B-C♯-F♯-A♯");
    }
    
    
    //C Major 7 suspended 2: C-D-G-B
    chordRoot=[NSMutableString stringWithString: @"C"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"C", @"D", @"G", @"B", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed C Major 7 suspended 2: C-D-G-B");
    }
    
    
    //D Major 7 suspended 2: D-E-A-C♯
    chordRoot=[NSMutableString stringWithString: @"D"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"D", @"E", @"A", @"C♯", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed D Major 7 suspended 2: D-E-A-C♯");
    }
    
    
    //E Major 7 suspended 2: E-F♯-B-D♯
    chordRoot=[NSMutableString stringWithString: @"E"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"E", @"F♯", @"B", @"D♯", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed E Major 7 suspended 2: E-F♯-B-D♯");
    }
    
    
    //F Major 7 suspended 2: F-G-C-E
    chordRoot=[NSMutableString stringWithString: @"F"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"F", @"G", @"C", @"E", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed F Major 7 suspended 2: F-G-C-E");
    }
    
    
    //G Major 7 suspended 2: G-A-D-F♯
    chordRoot=[NSMutableString stringWithString: @"G"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"G", @"A", @"D", @"F♯", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed G Major 7 suspended 2: G-A-D-F♯");
    }
}

-(void)test_4noteFlat_Major7Suspended2Chords
{
    //A♭ Major 7 suspended 4: A♭-B♭-E♭-G
    ChordDictionary *chordDictionary = [ChordDictionary new];
    NSMutableString * chordRoot = [NSMutableString stringWithString: @"A♭"];
    NSMutableString * chordType = [NSMutableString stringWithString: @"M7sus2"];
    //Major 7 suspended 2: M7sus2
    NSArray * attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    
    int index =0;
    bool correctAns=YES;
    NSArray * keyAnswer = [NSArray arrayWithObjects:@"A♭", @"B♭", @"E♭", @"G", nil];
    
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//correctAnws=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed A♭ Major 7 suspended 2: A♭-B♭-E♭-G");
    }
    
    
    //B♭ Major 7 suspended 2: B♭-C-F-A
    chordRoot=[NSMutableString stringWithString: @"B♭"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"B♭", @"C", @"F", @"A", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed B♭ Major 7 suspended 2: B♭-C-F-A");
    }
    
    
    //C♭ Major 7 suspended 2: C♭-D♭-G♭-B♭
    chordRoot=[NSMutableString stringWithString: @"C♭"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"C♭", @"D♭", @"G♭", @"B♭", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed C♭ Major 7 suspended 2: C♭-D♭-G♭-B♭");
    }
    
    
    //D♭ Major 7 suspended 2: D♭-E♭-A♭-C
    chordRoot=[NSMutableString stringWithString: @"D♭"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"D♭", @"E♭", @"A♭", @"C", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed D♭ Major 7 suspended 2: D♭-E♭-A♭-C");
    }
    
    
    //E♭ Major 7 suspended 2: E♭-F-B♭-D
    chordRoot=[NSMutableString stringWithString: @"E♭"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"E♭", @"F", @"B♭", @"D", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed E♭ Major 7 suspended 2: E♭-F-B♭-D");
    }
    
    
    //F♭ Major 7 suspended 2: F♭-G♭-C♭-E♭
    chordRoot=[NSMutableString stringWithString: @"F♭"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"F♭", @"G♭", @"C♭", @"E♭", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed F♭ Major 7 suspended 2: F♭-G♭-C♭-E♭");
    }
    
    
    //G♭ Major 7 suspended 2: G♭-A♭-D♭-F
    chordRoot=[NSMutableString stringWithString: @"G♭"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"G♭", @"A♭", @"D♭", @"F", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed G♭ Major 7 suspended 2: G♭-A♭-D♭-F");
    }
}

-(void)test_4noteSharp_Major7Suspended2Chords
{
    //A♯ Major 7 suspended 4: A♯-B♯-E♯-Gx
    ChordDictionary *chordDictionary = [ChordDictionary new];
    NSMutableString * chordRoot = [NSMutableString stringWithString: @"A♯"];
    NSMutableString * chordType = [NSMutableString stringWithString: @"M7sus2"];
    //Major 7 suspended 2: M7sus2
    NSArray * attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    
    int index =0;
    bool correctAns=YES;
    NSArray * keyAnswer = [NSArray arrayWithObjects:@"A♯", @"B♯", @"E♯", @"Gx", nil];
    
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//correctAnws=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed A♯ Major 7 suspended 2: A♯-B♯-E♯-Gx");
    }
    
    
    //B♯ Major 7 suspended 2: B♯-Cx-Fx-Ax
    chordRoot=[NSMutableString stringWithString: @"B♯"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"B♯", @"Cx", @"Fx", @"Ax", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed B♯ Major 7 suspended 2: B♯-Cx-Fx-Ax");
    }
    
    
    //C♯ Major 7 suspended 2: C♯-D♯-G♯-B♯
    chordRoot=[NSMutableString stringWithString: @"C♯"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"C♯", @"D♯", @"G♯", @"B♯", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed C♯ Major 7 suspended 2: C♯-D♯-G♯-B♯");
    }
    
    
    //D♯ Major 7 suspended 2: D♯-E♯-A♯-Cx
    chordRoot=[NSMutableString stringWithString: @"D♯"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"D♯", @"E♯", @"A♯", @"Cx", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed D♯ Major 7 suspended 2: D♯-E♯-A♯-Cx");
    }
    
    
    //E♯ Major 7 suspended 2: E♯-Fx-B♯-Dx
    chordRoot=[NSMutableString stringWithString: @"E♯"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"E♯", @"Fx", @"B♯", @"Dx", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed E♯ Major 7 suspended 2: E♯-Fx-B♯-Dx");
    }
    
    
    //F♯ Major 7 suspended 2: F♯-G♯-C♯-E♯
    chordRoot=[NSMutableString stringWithString: @"F♯"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"F♯", @"G♯", @"C♯", @"E♯", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed F♯ Major 7 suspended 2: F♯-G♯-C♯-E♯");
    }
    
    
    //G♯ Major 7 suspended 2: G♯-A♯-D♯-Fx
    chordRoot=[NSMutableString stringWithString: @"G♯"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"G♯", @"A♯", @"D♯", @"Fx", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed G♯ Major 7 suspended 2: G♯-A♯-D♯-Fx");
    }
}


-(void)test_4note_Major7Suspended4Chords
{
    //A Major 7 suspended 4: A-Cx-E-G♯
    ChordDictionary *chordDictionary = [ChordDictionary new];
    NSMutableString * chordRoot = [NSMutableString stringWithString: @"A"];
    NSMutableString * chordType = [NSMutableString stringWithString: @"M7sus4"];
    //Major 7 suspended 4: M7sus4
    NSArray * attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    
    int index =0;
    bool correctAns=YES;
    NSArray * keyAnswer = [NSArray arrayWithObjects:@"A", @"Cx", @"E", @"G♯", nil];
    
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//correctAnws=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed A Major 7 suspended 4: A-Cx-E-G♯");
    }
    
    
    //B Major 7 suspended 4: B-Dx-F♯-A♯
    chordRoot=[NSMutableString stringWithString: @"B"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"B", @"Dx", @"F♯", @"A♯", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed B Major 7 suspended 4: B-Dx-F♯-A♯");
    }
    
    
    //C Major 7 suspended 4: C-E♯-G-B
    chordRoot=[NSMutableString stringWithString: @"C"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"C", @"E♯", @"G", @"B", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed C Major 7 suspended 4: C-E♯-G-B");
    }
    
    
    //D Major 7 suspended 4: D-Fx-A-C♯
    chordRoot=[NSMutableString stringWithString: @"D"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"D", @"Fx", @"A", @"C♯", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed D Major 7 suspended 4: D-Fx-A-C♯");
    }
    
    
    //E Major 7 suspended 4: E-Gx-B-D♯
    chordRoot=[NSMutableString stringWithString: @"E"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"E", @"Gx", @"B", @"D♯", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed E Major 7 suspended 4: E-Gx-B-D♯");
    }
    
    
    //F Major 7 suspended 4: F-A♯-C-E
    chordRoot=[NSMutableString stringWithString: @"F"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"F", @"A♯", @"C", @"E", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed F Major 7 suspended 4: F-A♯-C-E");
    }
    
    
    //G Major 7 suspended 4: G-B♯-D-F♯
    chordRoot=[NSMutableString stringWithString: @"G"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"G", @"B♯", @"D", @"F♯", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed G Major 7 suspended 4: G-B♯-D-F♯");
    }
}

-(void)test_4noteFlat_Major7Suspended4Chords
{
    //A♭ Major 7 suspended 4: A♭-C♯-E♭-G
    ChordDictionary *chordDictionary = [ChordDictionary new];
    NSMutableString * chordRoot = [NSMutableString stringWithString: @"A♭"];
    NSMutableString * chordType = [NSMutableString stringWithString: @"M7sus4"];
    //Major 7 suspended 4th: M7sus4
    NSArray * attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    
    int index =0;
    bool correctAns=YES;
    NSArray * keyAnswer = [NSArray arrayWithObjects:@"A♭", @"C♯", @"E♭", @"G", nil];
    
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//correctAnws=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed A♭ Major 7 suspended 4: A♭-C♯-E♭-G");
    }
    
    
    //B♭ Major 7 suspended 4: B♭-D♯-F-A
    chordRoot=[NSMutableString stringWithString: @"B♭"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"B♭", @"D♯", @"F", @"A", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed B♭ Major 7 suspended 4: B♭-D♯-F-A");
    }
    
    
    //C♭ Major 7 suspended 4: C♭-E-G♭-B♭
    chordRoot=[NSMutableString stringWithString: @"C♭"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"C♭", @"E", @"G♭", @"B♭", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed C♭ Major 7 suspended 4: C♭-E-G♭-B♭");
    }
    
    
    //D♭ Major 7 suspended 4: D♭-F♯-A♭-C
    chordRoot=[NSMutableString stringWithString: @"D♭"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"D♭", @"F♯", @"A♭", @"C", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed D♭ Major 7 suspended 4: D♭-F♯-A♭-C");
    }
    
    
    //E♭ Major 7 suspended 4: E♭-G♯-B♭-D
    chordRoot=[NSMutableString stringWithString: @"E♭"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"E♭", @"G♯", @"B♭", @"D", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed E♭ Major 7 suspended 4: E♭-G♯-B♭-D");
    }
    
    
    //F♭ Major 7 suspended 4: F♭-A-C♭-E♭
    chordRoot=[NSMutableString stringWithString: @"F♭"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"F♭", @"A", @"C♭", @"E♭", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed F♭ Major 7 suspended 4: F♭-A-C♭-E♭");
    }
    
    
    //G♭ Major 7 suspended 4: G♭-B-D♭-F
    chordRoot=[NSMutableString stringWithString: @"G♭"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"G♭", @"B", @"D♭", @"F", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed G♭ Major 7 suspended 4: G♭-B-D♭-F");
    }
}

-(void)test_4noteSharp_Major7Suspended4Chords
{
    //A♯ Major 7 suspended 4: A♯-C♯♯♯-E♯-Gx
    ChordDictionary *chordDictionary = [ChordDictionary new];
    NSMutableString * chordRoot = [NSMutableString stringWithString: @"A♯"];
    NSMutableString * chordType = [NSMutableString stringWithString: @"M7sus4"];
    //Major 4 suspended 4nd: M7sus4
    NSArray * attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    
    int index =0;
    bool correctAns=YES;
    NSArray * keyAnswer = [NSArray arrayWithObjects:@"A♯", @"C♯♯♯", @"E♯", @"Gx", nil];
    
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//correctAnws=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed A♯ Major 7 suspended 4: A♯-C♯♯♯-E♯-Gx");
    }
    
    
    //B♯ Major 7 suspended 4: B♯-D♯♯♯-Fx-Ax
    chordRoot=[NSMutableString stringWithString: @"B♯"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"B♯", @"D♯♯♯", @"Fx", @"Ax", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed B♯ Major 7 suspended 4: B♯-D♯♯♯-Fx-Ax");
    }
    
    
    //C♯ Major 7 suspended 4: C♯-Ex-G♯-B♯
    chordRoot=[NSMutableString stringWithString: @"C♯"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"C♯", @"Ex", @"G♯", @"B♯", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed C♯ Major 7 suspended 4: C♯-Ex-G♯-B♯");
    }
    
    
    //D♯ Major 7 suspended 4: D♯-F♯♯♯-A♯-Cx
    chordRoot=[NSMutableString stringWithString: @"D♯"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"D♯", @"F♯♯♯", @"A♯", @"Cx", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed D♯ Major 7 suspended 4: D♯-F♯♯♯-A♯-Cx");
    }
    
    
    //E♯ Major 7 suspended 4: E♯-G♯♯♯-B♯-Dx
    chordRoot=[NSMutableString stringWithString: @"E♯"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"E♯", @"G♯♯♯", @"B♯", @"Dx", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed E♯ Major 7 suspended 4: E♯-G♯♯♯-B♯-Dx");
    }
    
    
    //F♯ Major 7 suspended 4: F♯-Ax-C♯-E♯
    chordRoot=[NSMutableString stringWithString: @"F♯"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"F♯", @"Ax", @"C♯", @"E♯", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed F♯ Major 7 suspended 4: F♯-Ax-C♯-E♯");
    }
    
    
    //G♯ Major 7 suspended 4: G♯-Bx-D♯-Fx
    chordRoot=[NSMutableString stringWithString: @"G♯"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"G♯", @"Bx", @"D♯", @"Fx", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed G♯ Major 7 suspended 4: G♯-Bx-D♯-Fx");
    }

}

@end
