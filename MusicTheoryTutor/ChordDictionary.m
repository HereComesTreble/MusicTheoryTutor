//
//  ChordDictionary.m
//  MusicTheoryTutor
//
//  Created by Ryan Sowa on 2/12/13.
//  Copyright (c) 2013 Steven Lester. All rights reserved.
//

#import "ChordDictionary.h"

/*
 * Pass a Chord name to this class and get various information 
 * specfic to itself. Chord information includes its type, 
 * number, and note names.
 */
@implementation ChordDictionary

-(id)init
{
    if(self = [super init])
    {
        //
        // Initialize 3 note chords
        //
        
        Major = [[Chords alloc] initThree:@"Major"
                               AbbrevName:@"M"
                                    First:@"root"
                                   Second:@"major 3rd"
                                    Third:@"perfect 5th"
                              intervalOne:0
                              intervalTwo:4
                            intervalThree:7
                                      Num:3];
        
        Flattened5th = [[Chords alloc] initThree:@"Flattened 5th"
                                      AbbrevName:@"♭5"
                                           First:@"root"
                                          Second:@"major 3rd"
                                           Third:@"flattened 5th"
                                     intervalOne:0
                                     intervalTwo:4
                                   intervalThree:6
                                             Num:3];
        
        Minor = [[Chords alloc] initThree:@"Minor"
                               AbbrevName:@"m"
                                    First:@"root"
                                   Second:@"minor 3rd"
                                    Third:@"perfect 5th"
                              intervalOne:0
                              intervalTwo:3
                            intervalThree:7
                                      Num:3];
        
        Diminished = [[Chords alloc] initThree:@"Diminished"
                                    AbbrevName:@"dim"
                                         First:@"root"
                                        Second:@"minor 3rd"
                                         Third:@"flattened 5th"
                                   intervalOne:0
                                   intervalTwo:3
                                 intervalThree:6
                                           Num:3];
        
        Augmented = [[Chords alloc] initThree:@"Augmented"
                                   AbbrevName:@"aug"
                                        First:@"root"
                                       Second:@"major 3rd"
                                        Third:@"augmented 5th"
                                  intervalOne:0
                                  intervalTwo:4
                                intervalThree:8
                                          Num:3];
        
        Suspended2nd = [[Chords alloc] initThree:@"Suspended 2nd"
                                      AbbrevName:@"sus2"
                                           First:@"root"
                                          Second:@"major 2nd"
                                           Third:@"perfect 5th"
                                     intervalOne:0
                                     intervalTwo:2
                                   intervalThree:7
                                             Num:3];
        
        Suspended4th = [[Chords alloc] initThree:@"Suspended 4th"
                                      AbbrevName:@"sus4"
                                           First:@"root"
                                          Second:@"perfect 4th"
                                           Third:@"perfect 5th"
                                     intervalOne:0
                                     intervalTwo:5
                                   intervalThree:7
                                             Num:3];
        
        PowerChord = [[Chords alloc] initThree:@"Power Chord"
                                    AbbrevName:@"5"
                                         First:@"root"
                                        Second:@"perfect 5th"
                                         Third:@"ocatve"
                                   intervalOne:0
                                   intervalTwo:7
                                 intervalThree:12
                                           Num:3];
        
        
        //
        // Initialize 4 note chords
        //
        
        Major7th = [[Chords alloc] initFour:@"Major 7th"
                                 AbbrevName:@"M7"
                                      First:@"root"
                                     Second:@"Major 3rd"
                                      Third:@"Perfect 5th"
                                     Fourth:@"Major 7th"
                                intervalOne:0
                                intervalTwo:4
                              intervalThree:7
                               intervalFour:11
                                        num:4];
                    
        Major7thSuspended2nd = [[Chords alloc] initFour:@"Major 7th Suspended 2nd"
                                             AbbrevName:@"M7sus2"
                                                  First:@"root"
                                                 Second:@"Major 2nd"
                                                  Third:@"Perfect 5th"
                                                 Fourth:@"Major 7th"
                                            intervalOne:0
                                            intervalTwo:2
                                          intervalThree:7
                                           intervalFour:11
                                                    num:4];
        
        Major7thSuspended4th = [[Chords alloc] initFour:@"Major 7th Suspended 4th"
                                             AbbrevName:@"M7sus4"
                                                  First:@"root"
                                                 Second:@"Perfect 4th"
                                                  Third:@"Perfect 5th"
                                                 Fourth:@"Major 7th"
                                            intervalOne:0
                                            intervalTwo:5
                                          intervalThree:7
                                           intervalFour:11
                                                    num:4];
        
        Major7thAugmented5th = [[Chords alloc] initFour:@"Major 7th Augmented 5th"
                                             AbbrevName:@"M7♯5"
                                                  First:@"root"
                                                 Second:@"Major 3rd"
                                                  Third:@"Augmented 5th"
                                                 Fourth:@"Major 7th"
                                            intervalOne:0
                                            intervalTwo:4
                                          intervalThree:7
                                           intervalFour:11
                                                    num:4];
        
        Major7thFlattened5th = [[Chords alloc] initFour:@"Major 7th Flattened 5th"
                                             AbbrevName:@"M7♭5"
                                                  First:@"root"
                                                 Second:@"Major 3rd"
                                                  Third:@"Flattened 5th"
                                                 Fourth:@"Major 7th"
                                            intervalOne:0
                                            intervalTwo:4
                                          intervalThree:7
                                           intervalFour:11
                                                    num:4];
        
        Sixth = [[Chords alloc] initFour:@"Sixth"
                              AbbrevName:@"6"
                                   First:@"root"
                                  Second:@"Major 3rd"
                                   Third:@"Perfect 5th"
                                  Fourth:@"Major 6th"
                             intervalOne:0
                             intervalTwo:4
                           intervalThree:7
                            intervalFour:9
                                     num:4];
                 
        MajorFlat6 = [[Chords alloc] initFour:@"Major Flat 6"
                                   AbbrevName:@"♭6"
                                        First:@"root"
                                       Second:@"Major 3rd"
                                        Third:@"Perfect 5th"
                                       Fourth:@"Minor 6th"
                                  intervalOne:0
                                  intervalTwo:4
                                intervalThree:7
                                 intervalFour:8
                                          num:4];
        
        MajorAdd4th = [[Chords alloc] initFour:@"Major Add 4th"
                                    AbbrevName:@"add4"
                                         First:@"root"
                                        Second:@"Major 3rd"
                                         Third:@"Perfect 4th"
                                        Fourth:@"Perfect 5th"
                                   intervalOne:0
                                   intervalTwo:4
                                 intervalThree:6
                                  intervalFour:7
                                           num:4];
        
        MajorAdd9th = [[Chords alloc] initFour:@"Major Add 9th"
                                    AbbrevName:@"add9"
                                         First:@"root"
                                        Second:@"Major 3rd"
                                         Third:@"Perfect 5th"
                                        Fourth:@"Major 9th"
                                   intervalOne:0
                                   intervalTwo:4
                                 intervalThree:7
                                  intervalFour:14
                                           num:4];
        
        Dominant7th = [[Chords alloc] initFour:@"Dominant 7th"
                                    AbbrevName:@"7"
                                         First:@"root"
                                        Second:@"Major 3rd"
                                         Third:@"Perfect 5th"
                                        Fourth:@"Minor 7th"
                                   intervalOne:0
                                   intervalTwo:4
                                 intervalThree:7
                                  intervalFour:10
                                           num:4];
        
        Dominant7thSuspended2nd = [[Chords alloc] initFour:@"Dominant 7th Suspended 2nd"
                                                AbbrevName:@"7sus2"
                                                     First:@"root"
                                                    Second:@"Major 2nd"
                                                     Third:@"Perfect 5th"
                                                    Fourth:@"Minor 7th"
                                               intervalOne:0
                                               intervalTwo:2
                                             intervalThree:7
                                              intervalFour:10
                                                       num:4];
        
        Dominant7thSuspended4th = [[Chords alloc] initFour:@"Dominant 7th Suspended 4th"
                                                AbbrevName:@"7sus4"
                                                     First:@"root"
                                                    Second:@"Perfect 4th"
                                                     Third:@"Perfect 5th"
                                                    Fourth:@"Minor 7th"
                                               intervalOne:0
                                               intervalTwo:5
                                             intervalThree:7
                                              intervalFour:10
                                                       num:4];
        
        Dominant7thAugmented5th = [[Chords alloc] initFour:@"Dominant 7th Augmented 5th"
                                                AbbrevName:@"7♯5"
                                                     First:@"root"
                                                    Second:@"Major 3rd"
                                                     Third:@"Augmented 5th"
                                                    Fourth:@"Minor 7th"
                                               intervalOne:0
                                               intervalTwo:4
                                             intervalThree:7
                                              intervalFour:10
                                                       num:4];
        
        Dominant7thFlattened5th = [[Chords alloc] initFour:@"Dominant 7th Flattened 5th"
                                                AbbrevName:@"7♭5"
                                                     First:@"root"
                                                    Second:@"Major 3rd"
                                                     Third:@"Flattened 5th"
                                                    Fourth:@"Minor 7th"
                                               intervalOne:0
                                               intervalTwo:4
                                             intervalThree:7
                                              intervalFour:10
                                                       num:4];
        
        Minor7th = [[Chords alloc] initFour:@"Minor 7th"
                                 AbbrevName:@"m7"
                                      First:@"root"
                                     Second:@"Minor 3rd"
                                      Third:@"Perfect 5th"
                                     Fourth:@"Minor 7th"
                                intervalOne:0
                                intervalTwo:3
                              intervalThree:7
                               intervalFour:10
                                        num:4];
        
        MinorMajor7th = [[Chords alloc] initFour:@"Minor(Major) 7th"
                                      AbbrevName:@"m/M7"
                                           First:@"root"
                                          Second:@"Minor 3rd"
                                           Third:@"Perfect 5th"
                                          Fourth:@"Major 7th"
                                     intervalOne:0
                                     intervalTwo:3
                                   intervalThree:7
                                    intervalFour:11
                                             num:4];
        
        MinorAdd4th = [[Chords alloc] initFour:@"Minor Add 4th"
                                    AbbrevName:@"madd4"
                                         First:@"root"
                                        Second:@"Minor 3rd"
                                         Third:@"Perfect 4th"
                                        Fourth:@"Perfect 5th"
                                   intervalOne:0
                                   intervalTwo:3
                                 intervalThree:5
                                  intervalFour:7
                                           num:4];
        
        MinorAdd9th = [[Chords alloc] initFour:@"Minor Add 9th"
                                    AbbrevName:@"madd9"
                                         First:@"root"
                                        Second:@"Minor 3rd"
                                         Third:@"Perfect 5th"
                                        Fourth:@"Major 9th"
                                   intervalOne:0
                                   intervalTwo:3
                                 intervalThree:7
                                  intervalFour:14
                                           num:4];
        
        MinorFlattened6th = [[Chords alloc] initFour:@"Minor Flattened 6th"
                                          AbbrevName:@"m♭6"
                                               First:@"root"
                                              Second:@"Minor 3rd"
                                               Third:@"Perfect 5th"
                                              Fourth:@"Minor 6th"
                                         intervalOne:0
                                         intervalTwo:3
                                       intervalThree:7
                                        intervalFour:8
                                                 num:4];
        
        Minor6th = [[Chords alloc] initFour:@"Minor 6th"
                                 AbbrevName:@"m6"
                                      First:@"root"
                                     Second:@"Minor 3rd"
                                      Third:@"Perfect 5th"
                                     Fourth:@"Major 6th"
                                intervalOne:0
                                intervalTwo:3
                              intervalThree:7
                               intervalFour:9
                                        num:4];
        
        HalfDiminished7th = [[Chords alloc] initFour:@"Half Diminished 7th" 
                                          AbbrevName:@"m7♭5"
                                               First:@"root"
                                              Second:@"Minor 3rd"
                                               Third:@"Flattened 5th"
                                              Fourth:@"Minor 7th"
                                         intervalOne:0
                                         intervalTwo:3
                                       intervalThree:7
                                        intervalFour:10
                                                 num:4];
        
        FullyDiminished7th = [[Chords alloc] initFour:@"Fully Diminished 7th"
                                           AbbrevName:@"dim7"
                                                First:@"root"
                                               Second:@"Minor 3rd"
                                                Third:@"Flattened 5th"
                                               Fourth:@"Flattened Minor 7th"
                                          intervalOne:0
                                          intervalTwo:3
                                        intervalThree:7
                                         intervalFour:10
                                                  num:4];
                                                                                                                                                                                                                                                                                                                                                                                                                      
        //
        // Initialize 5 note chords
        //
        
        Major6thAdd9th = [[Chords alloc] initFive:@"Major 6th Add 9th"
                                       AbbrevName:@"6add9"
                                            First:@"root"
                                           Second:@"Major 3rd"
                                            Third:@"Perfect 5th"
                                           Fourth:@"Major 6th"
                                            Fifth:@"Major 9th"
                                      intervalOne:0
                                      intervalTwo:4
                                    intervalThree:5
                                     intervalFour:9
                                     intervalFive:14
                                              num:5];
                          
        Minor6thAdd9th = [[Chords alloc] initFive:@"Minor 6th Add 9th"
                                       AbbrevName:@"m6add9"
                                            First:@"root"
                                           Second:@"Minor 3rd"
                                            Third:@"Perfect 5th"
                                           Fourth:@"Major 6th"
                                            Fifth:@"Major 9th"
                                      intervalOne:0
                                      intervalTwo:3
                                    intervalThree:5
                                     intervalFour:9
                                     intervalFive:14
                                              num:5];
        
        DominantAdd9th = [[Chords alloc] initFive:@"Dominant Add 9th"
                                       AbbrevName:@"9"
                                            First:@"root"
                                           Second:@"Major 3rd"
                                            Third:@"Perfect 5th"
                                           Fourth:@"Minor 7th"
                                            Fifth:@"Major 9th"
                                      intervalOne:0
                                      intervalTwo:4
                                    intervalThree:5
                                     intervalFour:10
                                     intervalFive:14
                                              num:5];
        
        Dominant9thFlattened5th = [[Chords alloc] initFive:@"Dominant 9th Flattened 5th"
                                                AbbrevName:@"9♭5"
                                                     First:@"root"
                                                    Second:@"Major 3rd"
                                                     Third:@"Flattened 5th"
                                                    Fourth:@"Minor 7th"
                                                     Fifth:@"Major 9th"
                                               intervalOne:0
                                               intervalTwo:4
                                             intervalThree:5
                                              intervalFour:10
                                              intervalFive:14
                                                       num:5];
        
        Dominant9thAugmented5th = [[Chords alloc] initFive:@"Dominant 9th Augmented 5th"
                                                AbbrevName:@"9♯5"
                                                     First:@"root"
                                                    Second:@"Major 3rd"
                                                     Third:@"Augmented 5th"
                                                    Fourth:@"Minor 7th"
                                                     Fifth:@"Major 9th"
                                               intervalOne:0
                                               intervalTwo:4
                                             intervalThree:5
                                              intervalFour:10
                                              intervalFive:14
                                                       num:5];
        
        Minor9th = [[Chords alloc] initFive:@"Minor 9th"
                                 AbbrevName:@"m9"
                                      First:@"root"
                                     Second:@"Minor 3rd"
                                      Third:@"Perfect 5th"
                                     Fourth:@"Minor 7th"
                                      Fifth:@"Major 9th"
                                intervalOne:0
                                intervalTwo:3
                              intervalThree:5
                               intervalFour:10
                               intervalFive:14
                                        num:5];
        
        Minor9thFlattened5th = [[Chords alloc] initFive:@"Minor 9th Flattened 5th"
                                             AbbrevName:@"m9♭5"
                                                  First:@"root"
                                                 Second:@"Minor 3rd"
                                                  Third:@"Flattened 5th"
                                                 Fourth:@"Minor 7th"
                                                  Fifth:@"Major 9th"
                                            intervalOne:0
                                            intervalTwo:3
                                          intervalThree:5
                                           intervalFour:10
                                           intervalFive:14
                                                    num:5];
        
        Major9th = [[Chords alloc] initFive:@"Major 9th"
                                 AbbrevName:@"M9"
                                      First:@"root"
                                     Second:@"Major 3rd"
                                      Third:@"Perfect 5th"
                                     Fourth:@"Major 7th"
                                      Fifth:@"Major 9th"
                                intervalOne:0
                                intervalTwo:4
                              intervalThree:5
                               intervalFour:11
                               intervalFive:14
                                        num:5];
        
        Major9thSuspended4th = [[Chords alloc] initFive:@"Major 9th Suspended 4th"
                                             AbbrevName:@"M9sus4"
                                                  First:@"root"
                                                 Second:@"Perfect 4th"
                                                  Third:@"Perfect 5th"
                                                 Fourth:@"Major 7th"
                                                  Fifth:@"Major 9th"
                                            intervalOne:0
                                            intervalTwo:5
                                          intervalThree:5
                                           intervalFour:11
                                           intervalFive:14
                                                    num:5];
        
        Major7thAddFlattened9th = [[Chords alloc] initFive:@"Major 7th Add Flattened 9th"
                                                AbbrevName:@"M7♭9"
                                                     First:@"root"
                                                    Second:@"Major 3rd"
                                                     Third:@"Perfect 5th"
                                                    Fourth:@"Major 7th"
                                                     Fifth:@"Minor 9th"
                                               intervalOne:0
                                               intervalTwo:4
                                             intervalThree:5
                                              intervalFour:11
                                              intervalFive:13
                                                       num:5];
        
        DominantAdd6th = [[Chords alloc] initFive:@"Dominant Add 6th"
                                       AbbrevName:@"7add6"
                                            First:@"root"
                                           Second:@"Major 3rd"
                                            Third:@"Perfect 5th"
                                           Fourth:@"Major 6th"
                                            Fifth:@"Minor 7th"
                                      intervalOne:0
                                      intervalTwo:4
                                    intervalThree:5
                                     intervalFour:9
                                     intervalFive:10
                                              num:5];
        
        MinorMajor9th = [[Chords alloc] initFive:@"Minor(Major) 9th"
                                      AbbrevName:@"m/M9"
                                           First:@"root"
                                          Second:@"Minor 3rd"
                                           Third:@"Perfect 5th"
                                          Fourth:@"Major 7th"
                                           Fifth:@"Major 9th"
                                     intervalOne:0
                                     intervalTwo:3
                                   intervalThree:5
                                    intervalFour:11
                                    intervalFive:14
                                             num:5];
        
        MinorMajorFlattened9th = [[Chords alloc] initFive:@"Minor(Major) Flattened 9th"
                                               AbbrevName:@"m/M♭9"
                                                    First:@"root"
                                                   Second:@"Minor 3rd"
                                                    Third:@"Perfect 5th"
                                                   Fourth:@"Major 7th"
                                                    Fifth:@"Minor 9th"
                                              intervalOne:0
                                              intervalTwo:3
                                            intervalThree:5
                                             intervalFour:11
                                             intervalFive:13
                                                      num:5];
        
        DominantAddAugmented9th = [[Chords alloc] initFive:@"Dominant Add Augmented 9th"
                                                AbbrevName:@"7♯9"
                                                     First:@"root"
                                                    Second:@"Major 3rd"
                                                     Third:@"Perfect 5th"
                                                    Fourth:@"Minor 7th"
                                                     Fifth:@"Augmented 9th"
                                               intervalOne:0
                                               intervalTwo:4
                                             intervalThree:5
                                              intervalFour:10
                                              intervalFive:14
                                                       num:5];
        
        DominantFlattened5thAddAugmented9th = [[Chords alloc] initFive:@"Dominant Flattened 5th Add Augmented 9th"
                                                            AbbrevName:@"7♭5♯9"
                                                                 First:@"root"
                                                                Second:@"Major 3rd"
                                                                 Third:@"Flattened 5th"
                                                                Fourth:@"Minor 7th"
                                                                 Fifth:@"Augmented 9th"
                                                           intervalOne:0
                                                           intervalTwo:4
                                                         intervalThree:5
                                                          intervalFour:10
                                                          intervalFive:14
                                                                   num:5];
        
        DominantAddFlattened9th = [[Chords alloc] initFive:@"Dominant Add Flattened 9th"
                                                AbbrevName:@"7♭9"
                                                     First:@"root"
                                                    Second:@"Major 3rd"
                                                     Third:@"Perfect 5th"
                                                    Fourth:@"Minor 7th"
                                                     Fifth:@"Flattened 9th"
                                               intervalOne:0
                                               intervalTwo:4
                                             intervalThree:5
                                              intervalFour:10
                                              intervalFive:14
                                                       num:5];
        
        Minor7thFlattened9th = [[Chords alloc] initFive:@"Minor 7th Flattened 9th"
                                             AbbrevName:@"m7♭9"
                                                  First:@"root"
                                                 Second:@"Minor 3rd"
                                                  Third:@"Perfect 5th"
                                                 Fourth:@"Minor 7th"
                                                  Fifth:@"Flattened 9th"
                                            intervalOne:0
                                            intervalTwo:3
                                          intervalThree:5
                                           intervalFour:10
                                           intervalFive:14
                                                    num:5];
        
        Minor7thAugmented9th = [[Chords alloc] initFive:@"Minor 7th Augmented 9th"
                                             AbbrevName:@"m7♯9"
                                                  First:@"root"
                                                 Second:@"Minor 3rd"
                                                  Third:@"Perfect 5th"
                                                 Fourth:@"Minor 7th"
                                                  Fifth:@"Augmented 9th"
                                            intervalOne:0
                                            intervalTwo:3
                                          intervalThree:5
                                           intervalFour:10
                                           intervalFive:14
                                                    num:5];
        
        // Initialize the dictionary with all above chords
        
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
        
        scalesDictionary = [NSArray arrayWithObjects:           // dimensions: [21][12]
                            [NSArray arrayWithObjects:@"A♭", @"B♭", @"B♭", @"C♭", @"C", @"D♭", @"E♭",@"E♭",@"F♭", @"F", @"G♭",@"G", nil],             // A♭
                            [NSArray arrayWithObjects:@"A", @"B♭", @"B", @"C", @"C♯", @"D", @"E♭", @"E", @"F", @"F♯", @"G", @"G♯", nil],                // A
                            [NSArray arrayWithObjects:@"A♯", @"B", @"B♯", @"C♯", @"Cx", @"D♯", @"E", @"E♯", @"F♯", @"Fx", @"G♯",@"Gx", nil],            // A♯
                            [NSArray arrayWithObjects:@"B♭", @"C♭", @"C", @"D♭", @"D", @"E♭", @"F♭", @"F", @"G♭",@"G",@"A♭", @"A", nil],                 // B♭
                            [NSArray arrayWithObjects:@"B", @"C", @"C♯", @"D", @"D♯", @"E", @"F", @"F♯", @"G", @"G♯", @"A", @"A♯", nil],                // B
                            [NSArray arrayWithObjects:@"B♯",@"C♯",@"Cx",@"D♯", @"Dx",@"E♯",@"F♯",@"Fx",@"G♯",@"Gx",@"A♯",@"Ax", nil],                    // B♯
                            [NSArray arrayWithObjects:@"C♭",@"D♭",@"D♭", @"E♭",@"E♭", @"F♭", @"G♭",@"G♭", @"A♭", @"A♭", @"B♭",@"B♭", nil],         // C♭
                            [NSArray arrayWithObjects:@"C", @"D♭", @"D", @"E♭", @"E", @"F", @"G♭", @"G", @"A♭", @"A", @"B♭", @"B", nil],                // C
                            [NSArray arrayWithObjects:@"C♯", @"D", @"D♯",@"E", @"E♯", @"F♯", @"G", @"G♯", @"A", @"A♯", @"B", @"B♯", nil],               // C♯
                            [NSArray arrayWithObjects:@"D♭", @"E♭",@"E♭", @"F♭", @"F", @"G♭", @"A♭", @"A♭", @"B♭", @"B♭", @"C♭",@"C", nil],          // D♭
                            [NSArray arrayWithObjects:@"D", @"E♭", @"E", @"F", @"F♯", @"G", @"A♭", @"A", @"B♭", @"B", @"C", @"C♯", nil],                // D
                            [NSArray arrayWithObjects:@"D♯", @"E", @"E♯",@"F♯", @"Fx", @"G♯", @"A", @"A♯", @"B", @"B♯", @"C♯", @"Cx", nil],             // D♯
                            [NSArray arrayWithObjects:@"E♭", @"F♭",@"F", @"G♭", @"G", @"A♭", @"B♭", @"B♭", @"C♭", @"C", @"D♭", @"D", nil],             // E♭
                            [NSArray arrayWithObjects:@"E", @"F", @"F♯", @"G", @"G♯", @"A", @"B♭", @"B", @"C", @"C♯", @"D", @"D♯", nil],                // E
                            [NSArray arrayWithObjects:@"E♯",@"F♯",@"Fx",@"G♯",@"Gx",@"A♯",@"B",@"B♯", @"C♯", @"Cx", @"D♯", @"Dx", nil],                 // E♯
                            [NSArray arrayWithObjects:@"F♭", @"G♭", @"G♭", @"A♭", @"A♭", @"B♭", @"C♭", @"C♭", @"D♭", @"D♭", @"E♭", @"E♭", nil],    // F♭
                            [NSArray arrayWithObjects:@"F", @"G♭", @"G", @"A♭", @"A", @"B♭", @"C♭", @"C", @"D♭", @"D", @"E♭", @"E", nil],               // F
                            [NSArray arrayWithObjects:@"F♯",@"G",@"G♯",@"A", @"A♯",@"B", @"C", @"C♯", @"D", @"D♯", @"E", @"E♯", nil],                   // F♯
                            [NSArray arrayWithObjects:@"G♭", @"A♭", @"A♭",@"B♭",@"B♭", @"C♭",@"D♭", @"D♭", @"E♭", @"E♭", @"F♭", @"F", nil],         // G♭
                            [NSArray arrayWithObjects:@"G", @"A♭", @"A", @"B♭", @"B", @"C", @"D♭", @"D", @"E♭", @"E", @"F", @"F♯", nil],                // G
                            [NSArray arrayWithObjects:@"G♯", @"A", @"A♯", @"B", @"B♯", @"C♯", @"D", @"D♯",@"E",@"E♯",@"F♯", @"Fx", nil], nil];          // G♯
        
        return self;
    }
    return 0;
}

/*
 * Given a chord (NSString), returns its corresponding chord
 * number, i.e. third, fourth, or fifth.
 */
-(NSInteger)getNum:(NSMutableString*)chordType
{
    return [self findChord:chordType]->num;
}

/*
 * Given a chord (NSString), returns its corresponding chord name.
 */
-(NSMutableString *)getName: (NSMutableString *)chord
{
    return [self findChord:chord]->name;
}
-(NSMutableString *)getAbbrName: (NSMutableString *)chord
{
    return [self findChord:chord]->abbrName;
}

/*
 * Given a chord (NSString), returns an NSArray of strings that 
 * make up the notes for the chord. The size of array and indices
 * represent the position of the note.
 */
-(NSArray *)getNotes: (NSMutableString *)chordRoot chordType: (NSMutableString*)chordType {
    
    Chords *chord = [self findChord:chordType];
    NSMutableArray *translatedNotes = [[NSMutableArray alloc] init];
    
    if(chord != nil)
    {
        if (chord->num == 3)
        {
            [translatedNotes addObject:[self getFirstNote:chord root:chordRoot]];
            [translatedNotes addObject:[self getSecondNote:chord root:chordRoot]];
            [translatedNotes addObject:[self getThirdNote:chord root:chordRoot]];
        }
        else if (chord->num == 4)
        {
            [translatedNotes addObject:[self getFirstNote:chord root:chordRoot]];
            [translatedNotes addObject:[self getSecondNote:chord root:chordRoot]];
            [translatedNotes addObject:[self getThirdNote:chord root:chordRoot]];
            [translatedNotes addObject:[self getFourthNote:chord root:chordRoot]];
        }
        else if (chord->num == 5)
        {
            [translatedNotes addObject:[self getFirstNote:chord root:chordRoot]];
            [translatedNotes addObject:[self getSecondNote:chord root:chordRoot]];
            [translatedNotes addObject:[self getThirdNote:chord root:chordRoot]];
            [translatedNotes addObject:[self getFourthNote:chord root:chordRoot]];
            [translatedNotes addObject:[self getFifthNote:chord root:chordRoot]];
        }
        
        return translatedNotes;
    }
    else
    {
        return nil;
    }
}


/*
 * Given a chord (NSString), returns the corresponding name of 
 * note at its first interval.
 */
-(NSMutableString *)getFirstNote:(Chords *)chord root:(NSMutableString *)root {
    
    for(int y = 0; y < [scalesDictionary count]; y++)
    {
        if([scalesDictionary[y][0] isEqualToString:root])
            return [NSMutableString stringWithString:scalesDictionary[y][chord->intervalOne]];
    }
    
    return (NSMutableString *)@"error: could not find chord root in scalesDictionary";
}

/*
 * Given a chord (NSString), returns the corresponding name of
 * its second note.
 */
-(NSMutableString *)getSecondNote:(Chords *)chord root:(NSMutableString *)root {

    int secondInterval = chord->intervalTwo;
        
    if(secondInterval >= 12)
        secondInterval = secondInterval - 12;

    for(int y = 0; y < [scalesDictionary count]; y++)
    {
        if([scalesDictionary[y][0] isEqualToString:root])
            return [NSMutableString stringWithString:scalesDictionary[y][secondInterval]];
    }
    
    return (NSMutableString *)@"error: could not find chord root in scalesDictionary";
}

/*
 * Given a chord (NSString), returns the corresponding name of
 * its third note.
 */
-(NSMutableString *)getThirdNote: (Chords *)chord root:(NSMutableString *)root
{
    
    int thirdInterval = chord->intervalThree;
    
    if(thirdInterval >= 12)
        thirdInterval = thirdInterval - 12;
    
    for(int y = 0; y < [scalesDictionary count]; y++)
    {
        if([scalesDictionary[y][0] isEqualToString:root])
            return [NSMutableString stringWithString:scalesDictionary[y][thirdInterval]];
    }
    
    return (NSMutableString *)@"error: could not find chord root in scalesDictionary";
}

/*
 * Given a chord (NSString), returns the corresponding name of
 * its fourth note.
 */
-(NSMutableString *)getFourthNote: (Chords *)chord root:(NSMutableString *)root
{
    
    int fourthInterval = chord->intervalFour;
    
    if(fourthInterval >= 12)
        fourthInterval = fourthInterval - 12;
    
    for(int y = 0; y < [scalesDictionary count]; y++)
    {
        if([scalesDictionary[y][0] isEqualToString:root])
            return [NSMutableString stringWithString:scalesDictionary[y][fourthInterval]];
    }
    
    return (NSMutableString *)@"error: could not find chord root in scalesDictionary";
}

/*
 * Given a chord (NSString), returns the corresponding name of
 * its fifth note.
 */
-(NSMutableString *)getFifthNote: (Chords *)chord root:(NSMutableString *)root
{
    
    int fifthInterval = chord->intervalFive;
    
    if(fifthInterval >= 12)
        fifthInterval = fifthInterval - 12;
    
    for(int y = 0; y < [scalesDictionary count]; y++)
    {
        if([scalesDictionary[y][0] isEqualToString:root])
            return [NSMutableString stringWithString:scalesDictionary[y][fifthInterval]];
    }
    
    return (NSMutableString *)@"error: could not find chord root in scalesDictionary";
}




/*
 * Given a NSMutableString chord type, return the
 * corresponding Chord object.
 */
-(Chords *)findChord: (NSMutableString *)chordType {
    
    NSMutableString * temp = [NSMutableString stringWithString:chordType];
    
    temp = [NSMutableString stringWithString:[temp stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]]];
    
    for(int i = 0; i < [dict count]; i++)
    {
        if([((Chords *) [dict objectAtIndex:(NSUInteger)i])->abbrName isEqualToString:temp])
            return (Chords *) [dict objectAtIndex:(NSUInteger)i];
    }
    
    return nil;
}

-(NSMutableString *)getIntervalTwoStr: (NSMutableString *)chord {
    return [NSMutableString stringWithString:[self findChord:chord]->second];
}
-(NSMutableString *)getIntervalThreeStr: (NSMutableString *)chord {
    return [NSMutableString stringWithString:[self findChord:chord]->third];
}
-(NSMutableString *)getIntervalFourStr: (NSMutableString *)chord {
    return [NSMutableString stringWithString:[self findChord:chord]->fourth];
}
-(NSMutableString *)getIntervalFiveStr: (NSMutableString *)chord {
    return [NSMutableString stringWithString:[self findChord:chord]->fifth];
}
-(int)getIntervalTwoInt: (NSMutableString *)chord {
    return [self findChord:chord]->intervalTwo;
}
-(int)getIntervalThreeInt: (NSMutableString *)chord {
    return [self findChord:chord]->intervalThree;
}
-(int)getIntervalFourInt: (NSMutableString *)chord {
    return [self findChord:chord]->intervalFour;
}
-(int)getIntervalFiveInt: (NSMutableString *)chord {
    return [self findChord:chord]->intervalFive;
}

@end
