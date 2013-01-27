//
//  Chords.m
//  MusicTheoryTutor
//
//  Created by Steven Lester on 12/7/12.
//  Copyright (c) 2012 Steven Lester. All rights reserved.
//

#import "Chords.h"

@implementation Chords


-(id)init: (NSString*)n AbbrevName:(NSString*)an First:(NSString*)f Second:(NSString*)s Third:(NSString*)t Fir:(int)intOne Sec:(int)intTwo Thi:(int)intThree Num:(int)m
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

-(id)init:(NSString*)n AbbrevName:(NSString*)an First:(NSString*)f Second:(NSString*)s Third:(NSString*)t Fourth:(NSString*)fo Fir:(int)intOne Sec:(int)intTwo Thi:(int)intThree Fou:(int)intFour Num:(int)m
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

-(id)init:(NSString*)n AbbrevName:(NSString*)an Notes:(NSString *[][3])no First:(NSString*)f Second:(NSString*)s Third:(NSString*)t Fourth:(NSString*)fo Fifth:(NSString*)fi Fir:(int)intOne Sec:(int)intTwo Thi:(int)intThree Fou:(int)intFour Fiv:(int)intFive Num:(int)m
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
