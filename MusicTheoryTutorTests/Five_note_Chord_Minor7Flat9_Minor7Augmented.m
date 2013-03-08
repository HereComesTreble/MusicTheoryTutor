//
//  Five_note_Chord_Minor7Flat9_Minor7Augmented.m
//  MusicTheoryTutor
//
//  Created by Chelsea  Brzezinski on 3/7/13.
//  Copyright (c) 2013 Steven Lester. All rights reserved.
//

#import "Five_note_Chord_Minor7Flat9_Minor7Augmented.h"
#import "ChordDictionary.h"
#import "Chords.h"
#import "MusicTheoryTutorTests.h"

@implementation Five_note_Chord_Minor7Flat9_Minor7Augmented

-(void)test_5note_Minor7Flat9Chords
{
    //A Minor 7 Flat 9: A-C-E-G-B♭
    ChordDictionary *chordDictionary = [ChordDictionary new];
    NSMutableString * chordRoot = [NSMutableString stringWithString: @"A"];
    NSMutableString * chordType = [NSMutableString stringWithString: @"m7♭9"];
    //Minor 7 Flattened 9th - m7♭9
    NSArray * attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    
    int index =0;
    bool correctAns=YES;
    NSArray * keyAnswer = [NSArray arrayWithObjects:@"A", @"C", @"E", @"G",@"B♭", nil];
    
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//correctAnws=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed A Minor 7 Flat 9: A-C-E-G-B♭");
    }
    
    
    //B Minor 7 Flat 9: B-D-F♯-A-C
    chordRoot=[NSMutableString stringWithString: @"B"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"B", @"D", @"F♯", @"A", @"C", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed B Minor 7 Flat 9: B-D-F♯-A-C");
    }
    
    
    //C Minor 7 Flat 9: C-E♭-G-B♭-D♭
    chordRoot=[NSMutableString stringWithString: @"C"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"C", @"E♭", @"G", @"B♭", @"D♭", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed C Minor 7 Flat 9: C-E♭-G-B♭-D♭");
    }
    
    
    //D Minor 7 Flat 9: D-F-A-C-E♭
    chordRoot=[NSMutableString stringWithString: @"D"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"D", @"F", @"A", @"C", @"E♭", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed D Minor 7 Flat 9: D-F-A-C-E♭");
    }
    
    
    //E Minor 7 Flat 9: E-G-B-D-F
    chordRoot=[NSMutableString stringWithString: @"E"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"E", @"G", @"B", @"D", @"F", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed E Minor 7 Flat 9: E-G-B-D-F");
    }
    
    
    //F Minor 7 Flat 9: F-A♭-C-E♭-G♭
    chordRoot=[NSMutableString stringWithString: @"F"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"F", @"A♭", @"C", @"E♭", @"G♭", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed F Minor 7 Flat 9: F-A♭-C-E♭-G♭");
    }
    
    
    //G Minor 7 Flat 9: G-B♭-D-F-A♭
    chordRoot=[NSMutableString stringWithString: @"G"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"G", @"B♭", @"D", @"F", @"A♭", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed G Minor 7 Flat 9: G-B♭-D-F-A♭");
    }
}

-(void)test_5noteFlat_Minor7Flat9Chords
{
    //A♭ Minor 7 Flat 9: A♭-C♭-E♭-G♭-B♭♭
    ChordDictionary *chordDictionary = [ChordDictionary new];
    NSMutableString * chordRoot = [NSMutableString stringWithString: @"A♭"];
    NSMutableString * chordType = [NSMutableString stringWithString: @"m7♭9"];
    //Minor 7 Flattened 9th - m7♭9
    NSArray * attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    
    int index =0;
    bool correctAns=YES;
    NSArray * keyAnswer = [NSArray arrayWithObjects:@"A♭", @"C♭", @"E♭", @"G♭", @"B♭♭", nil];
    
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//correctAnws=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed A♭ Minor 7 Flat 9: A♭-C♭-E♭-G♭-B♭♭");
    }
    
    
    //B♭ Minor 7 Flat 9: B♭-D♭-F-A♭-C♭
    chordRoot=[NSMutableString stringWithString: @"B♭"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"B♭", @"D♭", @"F", @"A♭", @"C♭", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed B♭ Minor 7 Flat 9: B♭-D♭-F-A♭-C♭");
    }
    
    
    //C♭ Minor 7 Flat 9: C♭-E♭♭-G♭-B♭♭-D♭♭
    chordRoot=[NSMutableString stringWithString: @"C♭"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"C♭", @"E♭♭", @"G♭", @"B♭♭", @"D♭♭", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed C♭ Minor 7 Flat 9: C♭-E♭♭-G♭-B♭♭-D♭♭");
    }
    
    
    //D♭ Minor 7 Flat 9: D♭-F♭-A♭-C♭-E♭♭
    chordRoot=[NSMutableString stringWithString: @"D♭"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"D♭", @"F♭", @"A♭", @"C♭", @"E♭♭", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed D♭ Minor 7 Flat 9: D♭-F♭-A♭-C♭-E♭♭");
    }
    
    
    //E♭ Minor 7 Flat 9: E♭-G♭-B♭-D♭-F♭
    chordRoot=[NSMutableString stringWithString: @"E♭"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"E♭", @"G♭", @"B♭", @"D♭", @"F♭", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed E♭ Minor 7 Flat 9: E♭-G♭-B♭-D♭-F♭");
    }
    
    
    //F♭ Minor 7 Flat 9: F♭-A♭♭-C♭-E♭♭-G♭♭
    chordRoot=[NSMutableString stringWithString: @"F♭"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"F♭", @"A♭♭", @"C♭", @"E♭♭", @"G♭♭", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed F♭ Minor 7 Flat 9: F♭-A♭♭-C♭-E♭♭-G♭♭");
    }
    
    
    //G♭ Minor 7 Flat 9: G♭-B♭♭-D♭-F♭-A♭♭
    chordRoot=[NSMutableString stringWithString: @"G♭"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"G♭", @"B♭♭", @"D♭", @"F♭", @"A♭♭", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed G♭ Minor 7 Flat 9: G♭-B♭♭-D♭-F♭-A♭♭");
    }
}

-(void)test_5noteSharp_Minor7Flat9Chords
{
    //A♯ Minor 7 Flat 9: A♯-C♯-E♯-G♯-B
    ChordDictionary *chordDictionary = [ChordDictionary new];
    NSMutableString * chordRoot = [NSMutableString stringWithString: @"A♯"];
    NSMutableString * chordType = [NSMutableString stringWithString: @"m7♭9"];
    //Minor 7 Flattened 9th - m7♭9
    NSArray * attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    
    int index =0;
    bool correctAns=YES;
    NSArray * keyAnswer = [NSArray arrayWithObjects:@"A♯", @"C♯", @"E♯", @"G♯", @"B", nil];
    
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//correctAnws=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed A♯ Minor 7 Flat 9: A♯-C♯-E♯-G♯-B");
    }
    
    
    //B♯ Minor 7 Flat 9: B♯-D♯-Fx-A♯-C♯
    chordRoot=[NSMutableString stringWithString: @"B♯"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"B♯", @"D♯", @"Fx", @"A♯", @"C♯", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed B♯ Minor 7 Flat 9: B♯-D♯-Fx-A♯-C♯");
    }
    
    
    //C♯ Minor 7 Flat 9: C♯-E-G♯-B-D
    chordRoot=[NSMutableString stringWithString: @"C♯"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"C♯", @"E", @"G♯", @"B", @"D", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed C♯ Minor 7 Flat 9: C♯-E-G♯-B-D");
    }
    
    
    //D♯ Minor 7 Flat 9: D♯-F♯-A♯-C♯-E
    chordRoot=[NSMutableString stringWithString: @"D♯"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"D♯", @"F♯", @"A♯", @"C♯", @"E", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed D♯ Minor 7 Flat 9: D♯-F♯-A♯-C♯-E");
    }
    
    
    //E♯ Minor 7 Flat 9: E♯-G♯-B♯-D♯-F♯
    chordRoot=[NSMutableString stringWithString: @"E♯"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"E♯", @"G♯", @"B♯", @"D♯", @"F♯", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed E♯ Minor 7 Flat 9: E♯-G♯-B♯-D♯-F♯");
    }
    
    
    //F♯ Minor 7 Flat 9: F♯-A-C♯-E-G
    chordRoot=[NSMutableString stringWithString: @"F♯"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"F♯", @"A", @"C♯", @"E", @"G", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed F♯ Minor 7 Flat 9: F♯-A-C♯-E-G");
    }
    
    
    //G♯ Minor 7 Flat 9: G♯-B-D♯-F♯-A
    chordRoot=[NSMutableString stringWithString: @"G♯"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"G♯", @"B", @"D♯", @"F♯", @"A", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed G♯ Minor 7 Flat 9: G♯-B-D♯-F♯-A");
    }
}

-(void)test_5note_Minor7AugmentedChords
{
    //A Minor 7 Augmented 9: A-C-E-G-B♯
    ChordDictionary *chordDictionary = [ChordDictionary new];
    NSMutableString * chordRoot = [NSMutableString stringWithString: @"A"];
    NSMutableString * chordType = [NSMutableString stringWithString: @"m7♯9"];
    //Minor 7 Augmented - m7♯9
    NSArray * attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    
    int index =0;
    bool correctAns=YES;
    NSArray * keyAnswer = [NSArray arrayWithObjects:@"A", @"C", @"E", @"G",@"B♯", nil];
    
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//correctAnws=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed A Minor 7 Augmented 9: A-C-E-G-B♯");
    }
    
    
    //B Minor 7 Augmented 9: B-D-F♯-A-Cx
    chordRoot=[NSMutableString stringWithString: @"B"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"B", @"D", @"F♯", @"A", @"Cx", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed B Minor 7 Augmented 9: B-D-F♯-A-Cx");
    }
    
    
    //C Minor 7 Augmented 9: C-E♭-G-B♭-D♯
    chordRoot=[NSMutableString stringWithString: @"C"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"C", @"E♭", @"G", @"B♭", @"D♯", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed C Minor 7 Augmented 9: C-E♭-G-B♭-D♯");
    }
    
    
    //D Minor 7 Augmented 9: D-F-A-C-E♯
    chordRoot=[NSMutableString stringWithString: @"D"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"D", @"F", @"A", @"C", @"E♯", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed D Minor 7 Augmented 9: D-F-A-C-E♯");
    }
    
    
    //E Minor 7 Augmented 9: E-G-B-D-Fx
    chordRoot=[NSMutableString stringWithString: @"E"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"E", @"G", @"B", @"D", @"Fx", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed E Minor 7 Augmented 9: E-G-B-D-Fx");
    }
    
    
    //F Minor 7 Augmented 9: F-A♭-C-E♭-G♯
    chordRoot=[NSMutableString stringWithString: @"F"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"F", @"A♭", @"C", @"E♭", @"G♯", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed F Minor 7 Augmented 9: F-A♭-C-E♭-G♯");
    }
    
    
    //G Minor 7 Augmented 9: G-B♭-D-F-A♯
    chordRoot=[NSMutableString stringWithString: @"G"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"G", @"B♭", @"D", @"F", @"A♯", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed G Minor 7 Augmented 9: G-B♭-D-F-A♯");
    }
}

-(void)test_5noteFlat_Minor7AugmentedChords
{
    //A♭ Minor 7 Augmented 9: A♭-C♭-E♭-G♭-B
    ChordDictionary *chordDictionary = [ChordDictionary new];
    NSMutableString * chordRoot = [NSMutableString stringWithString: @"A♭"];
    NSMutableString * chordType = [NSMutableString stringWithString: @"m7♯9"];
    //Minor 7 Augmented - m7♯9
    NSArray * attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    
    int index =0;
    bool correctAns=YES;
    NSArray * keyAnswer = [NSArray arrayWithObjects:@"A♭", @"C♭", @"E♭", @"G♭", @"B", nil];
    
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//correctAnws=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed A♭ Minor 7 Augmented 9: A♭-C♭-E♭-G♭-B");
    }
    
    
    //B♭ Minor 7 Augmented 9: B♭-D♭-F-A♭-C♯
    chordRoot=[NSMutableString stringWithString: @"B"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"B♭", @"D♭", @"F", @"A♭", @"C♯", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed B♭ Minor 7 Augmented 9: B♭-D♭-F-A♭-C♯");
    }
    
    
    //C♭ Minor 7 Augmented 9: C♭-E♭♭-G♭-B♭♭-D
    chordRoot=[NSMutableString stringWithString: @"C♭"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"C♭", @"E♭♭", @"G♭", @"B♭♭", @"D", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed C♭ Minor 7 Augmented 9: C♭-E♭♭-G♭-B♭♭-D");
    }
    
    
    //D♭ Minor 7 Augmented 9: D♭-F♭-A♭-C♭-E
    chordRoot=[NSMutableString stringWithString: @"D♭"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"D♭", @"F♭", @"A♭", @"C♭", @"E", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed D♭ Minor 7 Augmented 9: D♭-F♭-A♭-C♭-E");
    }
    
    
    //E♭ Minor 7 Augmented 9: E♭-G♭-B♭-D♭-F♯
    chordRoot=[NSMutableString stringWithString: @"E♭"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"E♭", @"G♭", @"B♭", @"D♭", @"F♯", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed E♭ Minor 7 Augmented 9: E♭-G♭-B♭-D♭-F♯");
    }
    
    
    //F♭ Minor 7 Augmented 9: F♭-A♭♭-C♭-E♭♭-G
    chordRoot=[NSMutableString stringWithString: @"F♭"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"F♭", @"A♭♭", @"C♭", @"E♭♭", @"G", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed F♭ Minor 7 Augmented 9: F♭-A♭♭-C♭-E♭♭-G");
    }
    
    
    //G♭ Minor 7 Augmented 9: G♭-B♭♭-D♭-F♭-A
    chordRoot=[NSMutableString stringWithString: @"G♭"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"G♭", @"B♭♭", @"D♭", @"F♭", @"A", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed G♭ Minor 7 Augmented 9: G♭-B♭♭-D♭-F♭-A");
    }
}

-(void)test_5noteSharp_Minor7AugmentedChords
{
    //A♯ Minor 7 Augmented 9: A♯-C♯-E♯-G♯-Bx
    ChordDictionary *chordDictionary = [ChordDictionary new];
    NSMutableString * chordRoot = [NSMutableString stringWithString: @"A♯"];
    NSMutableString * chordType = [NSMutableString stringWithString: @"m7♯9"];
    //Minor 7 Augmented - m7♯9
    NSArray * attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    
    int index =0;
    bool correctAns=YES;
    NSArray * keyAnswer = [NSArray arrayWithObjects:@"A♯", @"C♯", @"E♯", @"G♯", @"Bx", nil];
    
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//correctAnws=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed A♯ Minor 7 Augmented 9: A♯-C♯-E♯-G♯-Bx");
    }
    
    
    //B♯ Minor 7 Augmented 9: B♯-D♯-Fx-A♯-C♯♯♯
    chordRoot=[NSMutableString stringWithString: @"B♯"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"B♯", @"D♯", @"Fx", @"A♯", @"C♯♯♯", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed B♯ Minor 7 Augmented 9: B♯-D♯-Fx-A♯-C♯♯♯");
    }
    
    
    //C♯ Minor 7 Augmented 9: C♯-E-G♯-B-Dx
    chordRoot=[NSMutableString stringWithString: @"C♯"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"C♯", @"E", @"G♯", @"B", @"Dx", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed C♯ Minor 7 Augmented 9: C♯-E-G♯-B-Dx");
    }
    
    
    //D♯ Minor 7 Augmented 9: D♯-F♯-A♯-C♯-Ex
    chordRoot=[NSMutableString stringWithString: @"D♯"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"D♯", @"F♯", @"A♯", @"C♯", @"Ex", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed D♯ Minor 7 Augmented 9: D♯-F♯-A♯-C♯-Ex");
    }
    
    
    //E♯ Minor 7 Augmented 9: E♯-G♯-B♯-D♯-F♯♯♯
    chordRoot=[NSMutableString stringWithString: @"E♯"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"E♯", @"G♯", @"B♯", @"D♯", @"F♯♯♯", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed E♯ Minor 7 Augmented 9: E♯-G♯-B♯-D♯-F♯♯♯");
    }
    
    
    //F♯ Minor 7 Augmented 9: F♯-A-C♯-E-Gx
    chordRoot=[NSMutableString stringWithString: @"F♯"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"F♯", @"A", @"C♯", @"E", @"Gx", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed F♯ Minor 7 Augmented 9: F♯-A-C♯-E-Gx");
    }
    
    
    //G♯ Minor 7 Augmented 9: G♯-B-D♯-F♯-Ax
    chordRoot=[NSMutableString stringWithString: @"G♯"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"G♯", @"B", @"D♯", @"F♯", @"Ax", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed G♯ Minor 7 Augmented 9: G♯-B-D♯-F♯-A");
    }
}

@end
