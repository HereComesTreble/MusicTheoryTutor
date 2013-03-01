//
//  Four_note_Chord_minorAdd4_minorAdd9.m
//  MusicTheoryTutor
//
//  Created by Chelsea  Brzezinski on 2/28/13.
//  Copyright (c) 2013 Steven Lester. All rights reserved.
//

#import "Four_note_Chord_minorAdd4_minorAdd9.h"
#import "ChordDictionary.h"
#import "Chords.h"
#import "MusicTheoryTutorTests.h"

@implementation Four_note_Chord_minorAdd4_minorAdd9

-(void)test_4note_mAdd4Chords
{
    //A Minor add 4: A-C-D-E
    ChordDictionary *chordDictionary = [ChordDictionary new];
    NSMutableString * chordRoot = [NSMutableString stringWithString: @"A"];
    NSMutableString * chordType = [NSMutableString stringWithString: @"madd4"];//madd4 for minor add 4
    NSArray * attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    
    int index =0;
    bool correctAns=YES;
    NSArray * keyAnswer = [NSArray arrayWithObjects:@"A", @"C", @"D", @"E", nil];
    
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//correctAnws=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed A Minor add 4: A-C-D-E");
    }
    
    
    //B Minor add 4: B-D-E-F♯
    chordRoot=[NSMutableString stringWithString: @"B"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"B", @"D", @"E", @"F♯", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed B Minor add 4: B-D-E-F♯");
    }
    
    
    //C Minor add 4: C-E♭-F-G
    chordRoot=[NSMutableString stringWithString: @"C"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"C", @"E♭", @"F", @"G", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed C Minor add 4: C-E♭-F-G");
    }
    
    
    //D Minor add 4: D-F-G-A
    chordRoot=[NSMutableString stringWithString: @"D"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"D", @"F", @"G", @"A", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed D Minor add 4: D-F-G-A");
    }
    
    
    //E Minor add 4: E-G-A-B
    chordRoot=[NSMutableString stringWithString: @"E"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"E", @"G", @"A", @"B", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed E Minor add 4: E-G-A-B");
    }
    
    
    //F Minor add 4: F-A♭-B♭-C
    chordRoot=[NSMutableString stringWithString: @"F"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"F", @"A♭", @"B♭", @"C", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed F Minor add 4: F-A♭-B♭-C");
    }
    
    
    //G Minor add 4: G-B♭-C-D
    chordRoot=[NSMutableString stringWithString: @"G"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"G", @"B♭", @"C", @"D", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed G Minor add 4: G-B♭-C-D");
    }
}

-(void)test_4noteFlat_mAdd4Chords
{
    //A♭ Minor add 4: A♭-C♭-D♭-E♭
    ChordDictionary *chordDictionary = [ChordDictionary new];
    NSMutableString * chordRoot = [NSMutableString stringWithString: @"A♭"];
    NSMutableString * chordType = [NSMutableString stringWithString: @"madd4"];//madd4 for minor add 4
    NSArray * attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    
    int index =0;
    bool correctAns=YES;
    NSArray * keyAnswer = [NSArray arrayWithObjects:@"A♭", @"C♭", @"D♭", @"E♭", nil];
    
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//correctAnws=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"A♭ Minor add 4: A♭-C♭-D♭-E♭");
    }
    
    
    //B♭ Minor add 4: B♭-D♭-E♭-F
    chordRoot=[NSMutableString stringWithString: @"B♭"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"B♭", @"D♭", @"E♭", @"F", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed B♭ Minor add 4: B♭-D♭-E♭-F");
    }
    
    
    //C♭ Minor add 4: C♭-E♭♭-F♭-G♭
    chordRoot=[NSMutableString stringWithString: @"C♭"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"C♭", @"E♭♭", @"F♭", @"G♭", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed C♭ Minor add 4: C♭-E♭♭-F♭-G♭");
    }
    
    
    //D♭ Minor add 4: D♭-F♭-G♭-A♭
    chordRoot=[NSMutableString stringWithString: @"D♭"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"D♭", @"F♭", @"G♭", @"A♭", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed D♭ Minor add 4: D♭-F♭-G♭-A♭");
    }
    
    
    //E♭ Minor add 4: E♭-G♭-A♭-B♭
    chordRoot=[NSMutableString stringWithString: @"E♭"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"E♭", @"G♭", @"A♭", @"B♭", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed E♭ Minor add 4: E♭-G♭-A♭-B♭");
    }
    
    
    //F♭ Minor add 4: F♭-A♭♭-B♭♭-C♭
    chordRoot=[NSMutableString stringWithString: @"F♭"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"F♭", @"A♭♭", @"B♭♭", @"C♭", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed F♭ Minor add 4: F♭-A♭♭-B♭♭-C♭");
    }
    
    
    //G♭ Minor add 4: G♭-B♭♭-C♭-D♭
    chordRoot=[NSMutableString stringWithString: @"G♭"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"G♭", @"B♭♭", @"C♭", @"D♭", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed G♭ Minor add 4: G♭-B♭♭-C♭-D♭");
    }
}

-(void)test_4noteSharp_mAdd4Chords
{
    //A♯ Minor add 4: A♯-C♯-D♯-E♯
    ChordDictionary *chordDictionary = [ChordDictionary new];
    NSMutableString * chordRoot = [NSMutableString stringWithString: @"A♯"];
    NSMutableString * chordType = [NSMutableString stringWithString: @"madd4"];//madd4 for minor add 4
    NSArray * attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    
    int index =0;
    bool correctAns=YES;
    NSArray * keyAnswer = [NSArray arrayWithObjects:@"A♯", @"C♯", @"D♯", @"E♯", nil];
    
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//correctAnws=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed A♯ Minor add 4: A♯-C♯-D♯-E♯");
    }
    
    
    //B♯ Minor add 4: B♯-D♯-E♯-Fx
    chordRoot=[NSMutableString stringWithString: @"B♯"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"B♯", @"D♯", @"E♯", @"Fx", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed B♯ Minor add 4: B♯-D♯-E♯-Fx");
    }
    
    
    //C♯ Minor add 4: C♯-E-F♯-G♯
    chordRoot=[NSMutableString stringWithString: @"C♯"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"C♯", @"E", @"F♯", @"G♯", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed C♯ Minor add 4: C♯-E-G♯-G♯");
    }
    
    
    //D♯ Minor add 4: D♯-F♯-G♯-A♯
    chordRoot=[NSMutableString stringWithString: @"D♯"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"D♯", @"F♯", @"G♯", @"A♯", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed D♯ Minor add 4: D♯-F♯-G♯-A♯");
    }
    
    
    //E♯ Minor add 4: E♯-G♯-A♯-B♯
    chordRoot=[NSMutableString stringWithString: @"E♯"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"E♯", @"G♯", @"A♯", @"B♯", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed E♯ Minor add 4: E♯-G♯-A♯-B♯");
    }
    
    
    //F♯ Minor add 4: F♯-A-B-C♯
    chordRoot=[NSMutableString stringWithString: @"F♯"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"F♯", @"A", @"B", @"C♯", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed F♯ Minor add 4: F♯-A-B-C♯");
    }
    
    
    //G♯ Minor add 4: G♯-B-C♯-D♯
    chordRoot=[NSMutableString stringWithString: @"G♯"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"G♯", @"B", @"C♯", @"D♯", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed G♯ Minor add 4: G♯-B-C♯-D♯");
    }
}

-(void)test_4note_mAdd9Chords
{
    //A Minor add 9: A-C-E-B
    ChordDictionary *chordDictionary = [ChordDictionary new];
    NSMutableString * chordRoot = [NSMutableString stringWithString: @"A"];
    NSMutableString * chordType = [NSMutableString stringWithString: @"madd9"];//madd9 for minor add 9
    NSArray * attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    
    int index =0;
    bool correctAns=YES;
    NSArray * keyAnswer = [NSArray arrayWithObjects:@"A", @"C", @"E", @"B", nil];
    
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//correctAnws=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed A Minor add 9: A-C-E-B");
    }
    
    
    //B Minor add 9: B-D-F♯-C♯
    chordRoot=[NSMutableString stringWithString: @"B"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"B", @"D", @"F♯", @"C♯", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed B Minor add 9: B-D-F♯-C♯");
    }
    
    
    //C Minor add 9: C-E♭-G-D
    chordRoot=[NSMutableString stringWithString: @"C"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"C", @"E♭", @"G", @"D", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed C Minor add 9: C-E♭-G-D");
    }
    
    
    //D Minor add 9: D-F-A-E
    chordRoot=[NSMutableString stringWithString: @"D"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"D", @"F", @"A", @"E", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed D Minor add 9: D-F-A-E");
    }
    
    
    //E Minor add 9: E-G-B-F♯
    chordRoot=[NSMutableString stringWithString: @"E"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"E", @"G", @"B", @"F♯", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed E Minor add 9: E-G-B-F♯");
    }
    
    
    //F Minor add 9: F-A♭-C-G
    chordRoot=[NSMutableString stringWithString: @"F"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"F", @"A♭", @"C", @"G", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed F Minor add 9: F-A♭-C-G");
    }
    
    
    //G Minor add 9: G-B♭-D-A
    chordRoot=[NSMutableString stringWithString: @"G"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"G", @"B♭", @"D", @"A", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed G Minor add 9: G-B♭-D-A");
    }
}

-(void)test_4noteFlat_mAdd9Chords
{
    //A♭ Minor add 9: A♭-C♭-E♭-B♭
    ChordDictionary *chordDictionary = [ChordDictionary new];
    NSMutableString * chordRoot = [NSMutableString stringWithString: @"A♭"];
    NSMutableString * chordType = [NSMutableString stringWithString: @"madd9"];//madd9 for minor add 9
    NSArray * attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    
    int index =0;
    bool correctAns=YES;
    NSArray * keyAnswer = [NSArray arrayWithObjects:@"A♭", @"C♭", @"E♭", @"B♭", nil];
    
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//correctAnws=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed A♭ Minor add 9: A♭-C♭-E♭-B♭");
    }
    
    
    //B♭ Minor add 9: B♭-D♭-F-C
    chordRoot=[NSMutableString stringWithString: @"B♭"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"B♭", @"D♭", @"F", @"C", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed B♭ Minor add 9: B♭-D♭-F-C");
    }
    
    
    //C♭ Minor add 9: C♭-E♭♭-G♭-D♭
    chordRoot=[NSMutableString stringWithString: @"C♭"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"C♭", @"E♭♭", @"G♭", @"D♭", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed C♭ Minor add 9: C♭-E♭♭-G♭-D♭");
    }
    
    
    //D♭ Minor add 9: D♭-F♭-A♭-E♭
    chordRoot=[NSMutableString stringWithString: @"D♭"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"D♭", @"F♭", @"A♭", @"E♭", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed D♭ Minor add 9: D♭-F♭-A♭-E♭");
    }
    
    
    //E♭ Minor add 9: E♭-G♭-B♭-F
    chordRoot=[NSMutableString stringWithString: @"E♭"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"E♭", @"G♭", @"B♭", @"F", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed E♭ Minor add 9: E♭-G♭-B♭-F");
    }
    
    
    //F♭ Minor add 9: F♭-A♭♭-C♭-G♭
    chordRoot=[NSMutableString stringWithString: @"F♭"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"F♭", @"A♭♭", @"C♭", @"G♭", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed F♭ Minor add 9: F♭-A♭♭-C♭-G♭");
    }
    
    
    //G♭ Minor add 9: G♭-B♭♭-D♭-A♭
    chordRoot=[NSMutableString stringWithString: @"G♭"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"G♭", @"B♭♭", @"D♭", @"A♭", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed G♭ Minor add 9: G♭-B♭♭-D♭-A♭");
    }
}

-(void)test_4noteSharp_mAdd9Chords
{
    //A♯ Minor add 9: A♯-C♯-E♯-B♯
    ChordDictionary *chordDictionary = [ChordDictionary new];
    NSMutableString * chordRoot = [NSMutableString stringWithString: @"A♯"];
    NSMutableString * chordType = [NSMutableString stringWithString: @"madd9"];//madd9 for minor add 9
    NSArray * attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    
    int index =0;
    bool correctAns=YES;
    NSArray * keyAnswer = [NSArray arrayWithObjects:@"A♯", @"C♯", @"E♯", @"B♯", nil];
    
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//correctAnws=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed A♯ Minor add 9: A♯-C♯-E♯-B♯");
    }
    
    
    //B♯ Minor add 9: B♯-D♯-Fx-Cx
    chordRoot=[NSMutableString stringWithString: @"B♯"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"B♯", @"D♯", @"Fx", @"Cx", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed B♯ Minor add 9: B♯-D♯-Fx-Cx");
    }
    
    
    //C♯ Minor add 9: C♯-E-G♯-D♯
    chordRoot=[NSMutableString stringWithString: @"C♯"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"C♯", @"E", @"G♯", @"D♯", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed C♯ Minor add 9: C♯-E-G♯-D♯");
    }
    
    
    //D♯ Minor add 9: D♯-F♯-A♯-E♯
    chordRoot=[NSMutableString stringWithString: @"D♯"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"D♯", @"F♯", @"A♯", @"E♯", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed D♯ Minor add 9: D♯-F♯-A♯-E♯");
    }
    
    
    //E♯ Minor add 9: E♯-G♯-B♯-Fx
    chordRoot=[NSMutableString stringWithString: @"E♯"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"E♯", @"G♯", @"B♯", @"Fx", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed E♯ Minor add 9: E♯-G♯-B♯-Fx");
    }
    
    
    //F♯ Minor add 9: F♯-A-C♯-G♯
    chordRoot=[NSMutableString stringWithString: @"F♯"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"F♯", @"A", @"C♯", @"G♯", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed F♯ Minor add 9: F♯-A-C♯-G♯");
    }
    
    
    //G♯ Minor add 9: G♯-B-D♯-A♯
    chordRoot=[NSMutableString stringWithString: @"G♯"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"G♯", @"B", @"D♯", @"A♯", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed G♯ Minor add 9: G♯-B-D♯-A♯");
    }
}

@end
