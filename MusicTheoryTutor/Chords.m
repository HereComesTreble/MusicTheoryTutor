//
//  Chords.m
//  MusicTheoryTutor
//
//  Created by Steven Lester on 12/7/12.
//  Copyright (c) 2012 Steven Lester. All rights reserved.
//

#import "Chords.h"

@implementation Chords


-(id)initThree: (NSString*)n AbbrevName:(NSString*)an First:(NSString*)f Second:(NSString*)s Third:(NSString*)t intervalOne:(int)intOne intervalTwo:(int)intTwo intervalThree:(int)intThree Num:(int)m
{
    self = [super init];
    if(self)
    {
        self->name = [NSMutableString stringWithString:n];
        self->abbrName = [NSMutableString stringWithString:an];
        self->first = [NSMutableString stringWithString:f];
        self->second = [NSMutableString stringWithString:s];
        self->third = [NSMutableString stringWithString:t];
        
        self->intervalOne = intOne;
        self->intervalTwo = intTwo;
        self->intervalThree = intThree;
        self->num = m;
    }
    return self;
}

-(id)initFour:(NSString*)n AbbrevName:(NSString*)an First:(NSString*)f Second:(NSString*)s Third:(NSString*)t Fourth:(NSString*)fo intervalOne:(int)intOne intervalTwo:(int)intTwo intervalThree:(int)intThree intervalFour:(int)intFour num:(int)m
{
    self = [super init];
    if(self)
    {
        self->name = [NSMutableString stringWithString:n];
        self->abbrName = [NSMutableString stringWithString:an];
        self->first = [NSMutableString stringWithString:f];
        self->second = [NSMutableString stringWithString:s];
        self->third = [NSMutableString stringWithString:t];
        self->fourth = [NSMutableString stringWithString:fo];
        
        self->intervalOne = intOne;
        self->intervalTwo = intTwo;
        self->intervalThree = intThree;
        self->intervalFour = intFour;
        self->num = m;
    }
    return self;
}

-(id)initFive:(NSString*)n AbbrevName:(NSString*)an First:(NSString*)f Second:(NSString*)s Third:(NSString*)t Fourth:(NSString*)fo Fifth:(NSString*)fi intervalOne:(int)intOne intervalTwo:(int)intTwo intervalThree:(int)intThree intervalFour:(int)intFour intervalFive:(int)intFive num:(int)m
{
    self = [super init];
    if(self)
    {
        self->name = [NSMutableString stringWithString:n];
        self->abbrName = [NSMutableString stringWithString:an];
        self->first = [NSMutableString stringWithString:f];
        self->second = [NSMutableString stringWithString:s];
        self->third = [NSMutableString stringWithString:t];
        self->fourth = [NSMutableString stringWithString:fo];
        self->fifth = [NSMutableString stringWithString:fi];
        
        self->intervalOne = intOne;
        self->intervalTwo = intTwo;
        self->intervalThree = intThree;
        self->intervalFour = intFour;
        self->intervalFive = intFive;
        self->num = m;
    }
    return self;
}

@end
