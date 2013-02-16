//
//  Three_note_Chord_DiminishedAugmented.m
//  MusicTheoryTutor
//
//  Created by Chelsea  Brzezinski on 2/15/13.
//  Copyright (c) 2013 Steven Lester. All rights reserved.
//

#import "Three_note_Chord_DiminishedAugmented.h"

#import "Three_note_Chord_MajorMinor.h"
#import "ChordDictionary.h"
#import "Chords.h"
#import "MusicTheoryTutorTests.h"


@implementation Three_note_Chord_DiminishedAugmented

//test all 3-note Diminished chords
-(void)test_3note_DimChords
{
    //A Diminished: A-C-E♭
    ChordDictionary *chordDictionary = [ChordDictionary new];
    NSMutableString * chordRoot = [NSMutableString stringWithString: @"A"];
    NSMutableString * chordType = [NSMutableString stringWithString: @"dim"];
    NSArray * attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    
    int index =0;
    bool correctAns=YES;
    NSArray * keyAnswer = [NSArray arrayWithObjects:@"A", @"C", @"E♭", nil];
    
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//correctAnws=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed A Diminished: A-C-E♭");
    }
    
    
    
    //B Diminished: B-D-F
    chordRoot=[NSMutableString stringWithString: @"B"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"B", @"D", @"F", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed B Diminished: B-D-F");
    }
    
    
    
    //C Diminished: C-E♭-G♭
    chordRoot=[NSMutableString stringWithString: @"C"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"C", @"E♭", @"G♭", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed C Diminished: C-E♭-G♭");
    }

    
    
    //D Diminished: D-F-A♭
    chordRoot=[NSMutableString stringWithString: @"D"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"D", @"F", @"A♭", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed D Diminished: D-F-A♭");
    }


    //E Diminished: E-G-B♭
    chordRoot=[NSMutableString stringWithString: @"E"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"E", @"G", @"B♭", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed E Diminished: E-G-B♭");
    }
    
    //F Diminished: F-A♭-C♭
    chordRoot=[NSMutableString stringWithString: @"F"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"F", @"A♭", @"C♭", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed F Diminished: F-A♭-C♭");
    }
    
    
    //G Diminished: G-B♭-D♭
    chordRoot=[NSMutableString stringWithString: @"G"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"G", @"B♭", @"D♭", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed G Diminished: G-B♭-D♭");
    }
}


-(void)test_3noteFlat_DimChords
{
    //A♭ Diminished: A♭-C♭-E♭♭
    ChordDictionary *chordDictionary = [ChordDictionary new];
    NSMutableString * chordRoot = [NSMutableString stringWithString: @"A♭"];
    NSMutableString * chordType = [NSMutableString stringWithString: @"dim"];
    NSArray * attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    
    int index =0;
    bool correctAns=YES;
    NSArray * keyAnswer = [NSArray arrayWithObjects:@"A♭", @"C♭", @"E♭♭", nil];
    
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//correctAnws=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed A♭ Diminished: A♭-C♭-E♭♭");
    }
    
    
    
    //B♭ Diminished: B♭-D♭-F♭
    chordRoot=[NSMutableString stringWithString: @"B♭"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"B♭", @"D♭", @"F♭", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed B♭ Diminished: B♭-D♭-F♭");
    }
    
    
    
    //C♭ Diminished: C♭-E♭♭-G♭♭
    chordRoot=[NSMutableString stringWithString: @"C♭"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"C♭", @"E♭♭", @"G♭♭", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed C♭ Diminished: C♭-E♭♭-G♭♭");
    }
    
    
    
    //D♭ Diminished: D♭-F♭-A♭♭
    chordRoot=[NSMutableString stringWithString: @"D♭"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"D♭", @"F♭", @"A♭♭", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed D♭ Diminished: D♭-F♭-A♭♭");
    }
    
    
    //E♭ Diminished: E♭-G♭-B♭♭
    chordRoot=[NSMutableString stringWithString: @"E♭"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"E♭", @"G♭", @"B♭♭", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed E♭ Diminished: E♭-G♭-B♭♭");
    }
    
    //F♭ Diminished: F♭-A♭♭-C♭♭
    chordRoot=[NSMutableString stringWithString: @"F♭"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"F♭", @"A♭♭", @"C♭♭", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed F♭ Diminished: F♭-A♭♭-C♭♭");
    }
    
    
    //G♭ Diminished: G♭-B♭♭-D♭♭
    chordRoot=[NSMutableString stringWithString: @"G♭"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"G♭", @"B♭♭", @"D♭♭", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed G♭ Diminished: G♭-B♭♭-D♭♭");
    }

}


-(void)test_3noteSharp_DimChords
{
    //A♯ Diminished: A♯-C♯-E
    ChordDictionary *chordDictionary = [ChordDictionary new];
    NSMutableString * chordRoot = [NSMutableString stringWithString: @"A♯"];
    NSMutableString * chordType = [NSMutableString stringWithString: @"dim"];
    NSArray * attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    
    int index =0;
    bool correctAns=YES;
    NSArray * keyAnswer = [NSArray arrayWithObjects:@"A♯", @"C♯", @"E", nil];
    
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//correctAnws=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed A♯ Diminished: A♯-C♯-E");
    }
    
    
    
    //B♯ Diminished: B♯-D♯-F♯
    chordRoot=[NSMutableString stringWithString: @"B♯"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"B♯", @"D♯", @"F♯", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed B♯ Diminished: B♯-D♯-F♯");
    }
    
    
    
    //C♯ Diminished: C♯-E-G
    chordRoot=[NSMutableString stringWithString: @"C♯"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"C♯", @"E", @"G", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed C♯ Diminished: C♯-E-G");
    }
    
    
    
    //D♯ Diminished: D♯-F♯-A
    chordRoot=[NSMutableString stringWithString: @"D♯"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"D♯", @"F♯", @"A", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed D♯ Diminished: D♯-F♯-A");
    }
    
    
    //E♯ Diminished: E♯-G♯-B
    chordRoot=[NSMutableString stringWithString: @"E♯"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"E♯", @"G♯", @"B", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed E♯ Diminished: E♯-G♯-B");
    }
    
    //F♯ Diminished: F♯-A-C
    chordRoot=[NSMutableString stringWithString: @"F♯"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"F♯", @"A", @"C", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed F♯ Diminished: F♯-A-C");
    }
    
    
    //G♯ Diminished: G♯-B-D
    chordRoot=[NSMutableString stringWithString: @"G♯"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"G♯", @"B", @"D", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed G♯ Diminished: G♯-B-D");
    }
}



//test all 3-note Augmented chords
-(void)test_3note_AugChords
{
    //A Augmented: A-C♯-F
    ChordDictionary *chordDictionary = [ChordDictionary new];
    NSMutableString * chordRoot = [NSMutableString stringWithString: @"A"];
    NSMutableString * chordType = [NSMutableString stringWithString: @"aug"];
    NSArray * attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    
    int index =0;
    bool correctAns=YES;
    NSArray * keyAnswer = [NSArray arrayWithObjects:@"A", @"C♯", @"F", nil];
    
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//correctAnws=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed A Augmented: A-C♯-F");
    }
    
    
    //B Augmented: B-D♯-G (F♯♯)
    chordRoot=[NSMutableString stringWithString: @"B"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"B", @"D♯", @"G", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed B Augmented: B-D♯-G");
    }
    
    
    //C Augmented: C-E♭-G♭
    chordRoot=[NSMutableString stringWithString: @"C"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"C", @"E♭", @"G♭", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed C  Augmented: C-E♭-G♭");
    }
    
    
    //D Augmented: D-F♯-A♯
    chordRoot=[NSMutableString stringWithString: @"D"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"D", @"F♯", @"A♯", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed D Augmented: D-F♯-A♯");
    }
    
    
    //E Augmented: E-G♯-B♯
    chordRoot=[NSMutableString stringWithString: @"E"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"E", @"G♯", @"B♯", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed E Augmented: E-G♯-B♯");
    }
    
    //F Augmented: F-A-C♯
    chordRoot=[NSMutableString stringWithString: @"F"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"F", @"A", @"C♯", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed F Augmented: F-A-C♯");
    }
    
    
    //G Augmented: G-B-D♯
    chordRoot=[NSMutableString stringWithString: @"G"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"G", @"B", @"D♯", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed G Augmented: G-B-D♯");
    }
}


-(void)test_3noteFlat_AugChords
{
    //A♭ Augmented: A♭-C-E
    ChordDictionary *chordDictionary = [ChordDictionary new];
    NSMutableString * chordRoot = [NSMutableString stringWithString: @"A♭"];
    NSMutableString * chordType = [NSMutableString stringWithString: @"aug"];
    NSArray * attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    
    int index =0;
    bool correctAns=YES;
    NSArray * keyAnswer = [NSArray arrayWithObjects:@"A♭", @"C", @"E", nil];
    
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//correctAnws=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed A♭ Augmented: A♭-C-E");
    }
    
    
    //B♭ Augmented: B♭-D-F♯
    chordRoot=[NSMutableString stringWithString: @"B♭"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"B♭", @"D", @"F♯", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed B♭ Augmented: B♭-D-F♯");
    }
    
    
    //C♭ Augmented: C♭-E♭-G
    chordRoot=[NSMutableString stringWithString: @"C♭"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"C♭", @"E♭", @"G", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed C♭ Augmented: C♭-E♭-G");
    }
    
    
    //D♭ Augmented: D♭-F-A
    chordRoot=[NSMutableString stringWithString: @"D♭"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"D♭", @"F", @"A", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed D♭ Augmented: D♭-F-A");
    }
    
    
    //E♭ Augmented: E♭-G-B
    chordRoot=[NSMutableString stringWithString: @"E♭"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"E♭", @"G", @"B", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed E♭ Augmented: E♭-G-B");
    }
    
    //F♭ Augmented: F♭-A♭-C
    chordRoot=[NSMutableString stringWithString: @"F♭"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"F♭", @"A♭", @"C", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed F♭ Augmented: F♭-A♭-C");
    }
    
    
    //G♭ Augmented: G♭-B♭-D
    chordRoot=[NSMutableString stringWithString: @"G♭"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"G♭", @"B♭", @"D", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed G♭ Augmented: G♭-B♭-D");
    }
}

-(void)test_3noteSharp_AugChords
{
    //A♯ Augmented: A♯-Cx-Fx
    ChordDictionary *chordDictionary = [ChordDictionary new];
    NSMutableString * chordRoot = [NSMutableString stringWithString: @"A♯"];
    NSMutableString * chordType = [NSMutableString stringWithString: @"aug"];
    NSArray * attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    
    int index =0;
    bool correctAns=YES;
    NSArray * keyAnswer = [NSArray arrayWithObjects:@"A♯", @"Cx", @"Fx", nil];
    
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//correctAnws=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed A♯ Augmented: A♯-Cx-Fx");
    }
    
    
    //B♯ Augmented: B♯-Dx-F♯♯♯
    chordRoot=[NSMutableString stringWithString: @"B♯"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"B♯", @"D", @"F♯♯♯", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed B♯ Augmented: B♯-Dx-F♯♯♯");
    }
    
    
    //C♯ Augmented: C♯-E♯-Gx
    chordRoot=[NSMutableString stringWithString: @"C♯"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"C♯", @"E♯", @"Gx", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed C♯ Augmented: C♯-E♯-Gx");
    }
    
    
    //D♯ Augmented: D♯-Fx-Ax
    chordRoot=[NSMutableString stringWithString: @"D♯"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"D♯", @"Fx", @"Ax", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed D♯ Augmented: D♯-Fx-Ax");
    }
    
    
    //E♯ Augmented: E♯-Gx-Bx
    chordRoot=[NSMutableString stringWithString: @"E♯"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"E♯", @"Gx", @"Bx", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed E♯ Augmented: E♯-Gx-Bx");
    }
    
    //F♯ Augmented: F♯-A♯-Cx
    chordRoot=[NSMutableString stringWithString: @"F♯"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"F♯", @"A♯", @"Cx", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed F♯ Augmented: F♯-A♯-Cx");
    }
    
    
    //G♯ Augmented: G♯-B♯-Dx
    chordRoot=[NSMutableString stringWithString: @"G♯"];
    attempt= [chordDictionary getNotes:chordRoot chordType:chordType];
    index=0;
    correctAns=YES;
    keyAnswer = [NSArray arrayWithObjects:@"G♯", @"B♯", @"Dx", nil];
    while (index < [attempt count] && correctAns)
    {
        correctAns = [[attempt objectAtIndex:index] isEqualToString:[keyAnswer objectAtIndex:index]];
        index++;
    }
    
    if(!correctAns)//attempt=false, did not match keyAnswer
    {
        NSLog(@"Attempted answer: %@", [attempt description]);
        STFail(@"Failed G♯ Augmented: G♯-B♯-Dx");
    }
}


@end
