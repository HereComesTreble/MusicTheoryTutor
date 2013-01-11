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
        Major = [[Chords alloc] init3:@"Major 7th" AbbrevName:@"M7" Notes:0 First:@"root" Second:@"major 3rd" Third:@"perfect 5th" Fir:0 Sec:4 Thi:7 Num:3];
        Flattened5th = [[Chords alloc] init3:@"Flattened 5th" AbbrevName:@"b5" Notes:1 First:@"root" Second:@"major 3rd" Third:@"flattened 5th" Fir:0 Sec:4 Thi:6 Num:3];
        Minor = [[Chords alloc] init3:@"Minor" AbbrevName:@"m" Notes:2 First:@"root" Second:@"minor 3rd" Third:@"perfect 5th" Fir:0 Sec:3 Thi:7 Num:3];
        Diminished = [[Chords alloc] init3:@"Diminished" AbbrevName:@"dim" Notes:3 First:@"root" Second:@"minor 3rd" Third:@"flattened 5th" Fir:0 Sec:3 Thi:6 Num:3];
        Augmented = [[Chords alloc] init3:@"Augmented" AbbrevName:@"aug" Notes:4 First:@"root" Second:@"major 3rd" Third:@"augmented 5th" Fir:0 Sec:4 Thi:8 Num:3];
        Suspended2nd = [[Chords alloc] init3:@"Suspended 2nd" AbbrevName:@"sus2" Notes:5 First:@"root" Second:@"major 2nd" Third:@"perfect 5th" Fir:0 Sec:2 Thi:6 Num:3];
        
        Suspended4th = [[Chords alloc] init3:@"Suspended 4th" AbbrevName:@"sus4" Notes:6 First:@"root" Second:@"perfect 4th" Third:@"perfect 5th" Fir:0 Sec:5 Thi:7 Num:3];
        
        PowerChord = [[Chords alloc] init3:@"Power Chord" AbbrevName:@"5" Notes:7 First:@"root" Second:@"perfect 5th" Third:@"ocatve" Fir:0 Sec:7 Thi:12 Num:3];
        
    }
    
    //Chords * dict[] = { Major, Flattened5th, Minor, Diminished, Augmented, Suspended2nd, Suspended4th, PowerChord };
    
    return self;
}



-(int)findIndex:(NSString*)n{
    n = [n stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    
    for(int x = 0; x < 8; x++)
    {
        if([dict[x].abbrName compare:n])
        {
            return x;
        }
    }
    return -1;
}

@end

/*
private Chords Major = new Chords("Major", "M", MAJOR, "root", "major 3rd",
                                  "perfect 5th", 0, 4, 7, 3);

private Chords Flattened5th = new Chords("Flattened 5th", "b5",
                                         FLATTENED5TH, "root", "major 3rd", "flattened 5th", 0, 4, 6, 3);

private Chords Minor = new Chords("Minor", "m", MINOR, "root", "minor 3rd",
                                  "perfect 5th", 0, 3, 7, 3);

private Chords Diminished = new Chords("Diminished", "dim", DIMINISHED,
                                       "root", "minor 3rd", "flattened 5th", 0, 3, 6, 3);

private Chords Augmented = new Chords("Augmented", "aug", AUGMENTED,
                                      "root", "major 3rd", "augmented 5th", 0, 4, 8, 3);

private Chords Suspended2nd = new Chords("Suspended 2nd", "sus2",
                                         SUSPENDED2ND, "root", "major 2nd", "perfect 5th", 0, 2, 7, 3);

private Chords Suspended4th = new Chords("Suspended 4th", "sus4",
                                         SUSPENDED4TH, "root", "perfect 4th", "perfect 5th", 0, 5, 7, 3);

private Chords PowerChord = new Chords("Power Chord", "5", POWERCHORD,
                                       "root", "perfect 5th", "ocatve", 0, 7, 12, 3);
*/