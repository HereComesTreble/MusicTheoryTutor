//
//  BackEndDictionary.m
//  MusicTheoryTutor
//
//  Created by Steven Lester on 12/7/12.
//  Copyright (c) 2012 Steven Lester. All rights reserved.
//

#import "BackEndDictionary.h"

@implementation BackEndDictionary

-(id)init
{
    if(self =[super init])
    {
        //initializing chords
        
        //3 note chords
        Major = [[Chords alloc] init3:@"Major" AbbrevName:@"M" First:@"root" Second:@"major 3rd" Third:@"perfect 5th" Fir:0 Sec:4 Thi:7 Num:3];
        Flattened5th = [[Chords alloc] init3:@"Flattened 5th" AbbrevName:@"b5" First:@"root" Second:@"major 3rd" Third:@"flattened 5th" Fir:0 Sec:4 Thi:6 Num:3];
        Minor = [[Chords alloc] init3:@"Minor" AbbrevName:@"m" First:@"root" Second:@"minor 3rd" Third:@"perfect 5th" Fir:0 Sec:3 Thi:7 Num:3];
        Diminished = [[Chords alloc] init3:@"Diminished" AbbrevName:@"dim" First:@"root" Second:@"minor 3rd" Third:@"flattened 5th" Fir:0 Sec:3 Thi:6 Num:3];
        Augmented = [[Chords alloc] init3:@"Augmented" AbbrevName:@"aug" First:@"root" Second:@"major 3rd" Third:@"augmented 5th" Fir:0 Sec:4 Thi:8 Num:3];
        Suspended2nd = [[Chords alloc] init3:@"Suspended 2nd" AbbrevName:@"sus2"  First:@"root" Second:@"major 2nd" Third:@"perfect 5th" Fir:0 Sec:2 Thi:6 Num:3];
        
        Suspended4th = [[Chords alloc] init3:@"Suspended 4th" AbbrevName:@"sus4" First:@"root" Second:@"perfect 4th" Third:@"perfect 5th" Fir:0 Sec:5 Thi:7 Num:3];
        PowerChord = [[Chords alloc] init3:@"Power Chord" AbbrevName:@"5" First:@"root" Second:@"perfect 5th" Third:@"ocatve" Fir:0 Sec:7 Thi:12 Num:3];
        
        
        //4 note chords
        
        
        //initialize the dictionary with all these chords
        
        dict = [NSMutableArray arrayWithObjects:Major, Flattened5th, Minor, Diminished,
                Augmented, Suspended2nd, Suspended4th, PowerChord, Major7th,
                Major7thSuspended2nd, Major7thSuspended4th, Major7thAugmented5th,
                Major7thFlattened5th, Sixth, MajorFlat6, MajorAdd4th, MajorAdd9th,
                Dominant7th, Dominant7thSuspended2nd, Dominant7thSuspended4th,
                Dominant7thAugmented5th, Dominant7thFlattened5th, Minor7th,
                MinorMajor7th, MinorAdd4th, MinorAdd9th, MinorFlattened6th,
                Minor6th, HalfDiminished7th, FullyDiminished7th, Major6thAdd9th,
                Minor6thAdd9th, DominantAdd9th, Dominant9thFlattened5th,
                Dominant9thAugmented5th, Minor9th, Minor9thFlattened5th, Major9th,
                Major9thSuspended4th, Major7thAddFlattened9th, DominantAdd6th,
                MinorMajor9th, MinorMajorFlattened9th, DominantAddAugmented9th,
                DominantFlattened5thAddAugmented9th, DominantAddFlattened9th,
                Minor7thFlattened9th, Minor7thAugmented9th, nil];
        
        
        return self;
    }
    return 0;
}


-(int)findIndex: (NSMutableString *)n {
    //hello
    
    NSMutableString * temp = [NSMutableString stringWithString:n];
    
    temp = [NSMutableString stringWithString:[temp stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]]];
    
    for(int i=0; i<[dict count]; i++) {
        
    }
    
    return 0;
}

@end