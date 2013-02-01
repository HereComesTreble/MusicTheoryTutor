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
        Major = [[Chords alloc] init:@"Major" AbbrevName:@"M" First:@"root" Second:@"major 3rd" Third:@"perfect 5th" Fir:0 Sec:4 Thi:7 Num:3];
        Flattened5th = [[Chords alloc] init:@"Flattened 5th" AbbrevName:@"b5" First:@"root" Second:@"major 3rd" Third:@"flattened 5th" Fir:0 Sec:4 Thi:6 Num:3];
        Minor = [[Chords alloc] init:@"Minor" AbbrevName:@"m" First:@"root" Second:@"minor 3rd" Third:@"perfect 5th" Fir:0 Sec:3 Thi:7 Num:3];
        Diminished = [[Chords alloc] init:@"Diminished" AbbrevName:@"dim" First:@"root" Second:@"minor 3rd" Third:@"flattened 5th" Fir:0 Sec:3 Thi:6 Num:3];
        Augmented = [[Chords alloc] init:@"Augmented" AbbrevName:@"aug" First:@"root" Second:@"major 3rd" Third:@"augmented 5th" Fir:0 Sec:4 Thi:8 Num:3];
        Suspended2nd = [[Chords alloc] init:@"Suspended 2nd" AbbrevName:@"sus2"  First:@"root" Second:@"major 2nd" Third:@"perfect 5th" Fir:0 Sec:2 Thi:6 Num:3];
        
        Suspended4th = [[Chords alloc] init:@"Suspended 4th" AbbrevName:@"sus4" First:@"root" Second:@"perfect 4th" Third:@"perfect 5th" Fir:0 Sec:5 Thi:7 Num:3];
        PowerChord = [[Chords alloc] init:@"Power Chord" AbbrevName:@"5" First:@"root" Second:@"perfect 5th" Third:@"ocatve" Fir:0 Sec:7 Thi:12 Num:3];
        
        
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
        if([((Chords*)[dict objectAtIndex:(NSUInteger)i])->abbrName isEqualToString:temp]) {
            return i;
        }
    }
    
    return -1;
}

-(NSMutableString *)format: (NSMutableString *)s {
    NSMutableString * temp = [NSMutableString stringWithString:s];
    [temp replaceOccurrencesOfString:@"b" withString:@"♭" options:NSLiteralSearch range:(NSRange){0,[temp length]}];
    [temp replaceOccurrencesOfString:@"#" withString:@"♯" options:NSLiteralSearch range:(NSRange){0,[temp length]}];
    return temp;
}

-(NSMutableString *)unformat: (NSMutableString *)s {
    NSMutableString * temp = [NSMutableString stringWithString:s];
    temp = [NSMutableString stringWithString:[temp stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]]];
    [temp replaceOccurrencesOfString:@"♭" withString:@"b" options:NSLiteralSearch range:(NSRange){0,[temp length]}];
    [temp replaceOccurrencesOfString:@"♯" withString:@"#" options:NSLiteralSearch range:(NSRange){0,[temp length]}];
    return temp;
}

-(NSMutableString *)getName: (NSMutableString *)n {
    NSMutableString * temp = [NSMutableString stringWithString:n];
    
    int x = [self findIndex:temp];
    
    if(x == -1) {
        return (NSMutableString *)@"error";
    }
    else {
        return [self format:((Chords *)[dict objectAtIndex:x])->abbrName];
    }
}

-(NSMutableString *)getFirstNote: (NSMutableString *)r secondString: (NSMutableString *)n {
    NSMutableString * tempr = [NSMutableString stringWithString:r];
    NSMutableString * tempn = [NSMutableString stringWithString:n];
    
    tempr = [self unformat:r];
    tempn = [self unformat:n];
    
    int x = [self findIndex:tempn];
    if(x == -1) {
        return (NSMutableString *)@"error";
    }
    else {
        for(int y = 0; y<21; y++) {
            if([scalesDictionary[y][0] isEqualToString:tempr]) {
                return [self format:((NSMutableString *)scalesDictionary[y][0])];
            }
        }
        return (NSMutableString *)@"error";
    }
}

-(NSMutableString *)getSecondNote: (NSMutableString *)r secondString: (NSMutableString *)n {
    NSMutableString * tempr = [NSMutableString stringWithString:r];
    NSMutableString * tempn = [NSMutableString stringWithString:n];
    
    tempr = [self unformat:r];
    tempn = [self unformat:n];
    
    int x = [self findIndex:tempn];
    if(x == -1)
        return (NSMutableString *)@"error";
    else {
        int i = ((Chords *)[dict objectAtIndex:x])->intervalTwo;
        
        if( i >= 12) {
            i = i-12;
        }
        for(int y = 0; y < 21; y++) {
            if([scalesDictionary[y][0] isEqualToString:tempr])
               return [self format:[NSMutableString stringWithString:scalesDictionary[y][i]]];
        }
    }
    return (NSMutableString *)@"error";
}

-(NSMutableString *)getThirdNote: (NSMutableString *)r secondString: (NSMutableString *)n {
    NSMutableString * tempr = [NSMutableString stringWithString:r];
    NSMutableString * tempn = [NSMutableString stringWithString:n];
    
    tempr = [self unformat:r];
    tempn = [self unformat:n];
    
    int x = [self findIndex:tempn];
    if(x == -1)
        return (NSMutableString *)@"error";
    else {
        int i = ((Chords *)[dict objectAtIndex:x])->intervalThree;
        
        if( i >= 12) {
            i = i-12;
        }
        for(int y = 0; y < 21; y++) {
            if([scalesDictionary[y][0] isEqualToString:tempr])
                return [self format:[NSMutableString stringWithString:scalesDictionary[y][i]]];
        }
    }
    return (NSMutableString *)@"error";
}

-(NSMutableString *)getFourthNote: (NSMutableString *)r secondString: (NSMutableString *)n {
    NSMutableString * tempr = [NSMutableString stringWithString:r];
    NSMutableString * tempn = [NSMutableString stringWithString:n];
    
    tempr = [self unformat:r];
    tempn = [self unformat:n];
    
    int x = [self findIndex:tempn];
    if(x == -1)
        return (NSMutableString *)@"error";
    else {
        int i = ((Chords *)[dict objectAtIndex:x])->intervalFour;
        
        if( i >= 12) {
            i = i-12;
        }
        for(int y = 0; y < 21; y++) {
            if([scalesDictionary[y][0] isEqualToString:tempr])
                return [self format:[NSMutableString stringWithString:scalesDictionary[y][i]]];
        }
    }
    return (NSMutableString *)@"error";
}

-(NSMutableString *)getFifthNote: (NSMutableString *)r secondString: (NSMutableString *)n {
    NSMutableString * tempr = [NSMutableString stringWithString:r];
    NSMutableString * tempn = [NSMutableString stringWithString:n];
    
    tempr = [self unformat:r];
    tempn = [self unformat:n];
    
    int x = [self findIndex:tempn];
    if(x == -1)
        return (NSMutableString *)@"error";
    else {
        int i = ((Chords *)[dict objectAtIndex:x])->intervalFive;
        
        if( i >= 12) {
            i = i-12;
        }
        for(int y = 0; y < 21; y++) {
            if([scalesDictionary[y][0] isEqualToString:tempr])
                return [self format:[NSMutableString stringWithString:scalesDictionary[y][i]]];
        }
    }
    return (NSMutableString *)@"error";
}

-(NSMutableString *)getNotes: (NSMutableString *)r secondString: (NSMutableString*)n {
    NSMutableString * tempr = [NSMutableString stringWithString:r];
    NSMutableString * tempn = [NSMutableString stringWithString:n];
    
    tempr = [self unformat:r];
    tempn = [self unformat:n];
    
    int x = [self findIndex:tempn];
    if(x == -1)
        return (NSMutableString *)@"error";
    else {
        if ( x > 8 ){
            NSMutableString * tempthree = [NSMutableString stringWithString:[self getFirstNote:tempr secondString:tempn]];
            [tempthree appendString:@"-"];
            [tempthree appendString:[self getSecondNote:tempr secondString:tempn]];
            [tempthree appendString:@"-"];
            [tempthree appendString:[self getThirdNote:tempr secondString:tempn]];
            
            return [self format:tempthree];
        }
        else if( x >= 8 && x<30) {
            NSMutableString * tempfour = [NSMutableString stringWithString:[self getFirstNote:tempr secondString:tempn]];
            [tempfour appendString:@"-"];
            [tempfour appendString:[self getSecondNote:tempr secondString:tempn]];
            [tempfour appendString:@"-"];
            [tempfour appendString:[self getThirdNote:tempr secondString:tempn]];
            [tempfour appendString:@"-"];
            [tempfour appendString:[self getFourthNote:tempr secondString:tempn]];
            return [self format:tempfour];
        }
        else {
            NSMutableString * tempfive = [NSMutableString stringWithString:[self getFirstNote:tempr secondString:tempn]];
            [tempfive appendString:@"-"];
            [tempfive appendString:[self getSecondNote:tempr secondString:tempn]];
            [tempfive appendString:@"-"];
            [tempfive appendString:[self getThirdNote:tempr secondString:tempn]];
            [tempfive appendString:@"-"];
            [tempfive appendString:[self getFourthNote:tempr secondString:tempn]];
            [tempfive appendString:@"-"];
            [tempfive appendString:[self getFifthNote:tempr secondString:tempn]];
            return [self format:tempfive];
        }
    }
}

-(NSInteger)getNum:(NSMutableString*)n {
    NSMutableString * tempn = [NSMutableString stringWithString:n];
    tempn = [self unformat:n];
    int x = [self findIndex:tempn];
    if(x == -1)
        return -1;
    else {
        return ((Chords*)[dict objectAtIndex:x])->num;
    }
}

@end