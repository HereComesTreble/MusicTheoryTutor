//
//  Chords.m
//  MusicTheoryTutor
//
//  Created by Steven Lester on 12/7/12.
//  Copyright (c) 2012 Steven Lester. All rights reserved.
//

#import "Chords.h"

@implementation Chords
@synthesize name, abbrName, first, second, third, fourth, fifth;


-(id)init3: (NSString*)n AbbrevName:(NSString*)an Notes:(NSInteger)no First:(NSString*)f Second:(NSString*)s Third:(NSString*)t Fir:(int)intOne Sec:(int)intTwo Thi:(int)intThree Num:(int)m
{
    self = [super init];
    if(self)
    {
        self.name = n;
        self.abbrName = an;
        self.first = f;
        self.second = s;
        self.third = t;
        self->num = m;
        
        switch (no) {
            case 0:
               // self->notes3 = MAJOR;
               // [self copyArray:MAJOR];
                break;
            case 1:
              //  self->notes3 = FLATTENED5TH;
                break;
            case 2:
               // self->notes3 = MINOR
                break;
            case 3:
               // self->notes3 = DIMINISHED;
                break;
            case 4:
               // self->notes3 = AUGMENTED
                break;
            case 5:
               // self->notes3 = SUSPENDED2ND;
                break;
            case 6:
               // self->notes3 = SUSPENDED4TH;
                break;
            case 7:
               // self->notes3 = POWERCHORD;
                break;
            default:
                break;
        }
        
        self->intervalOne = intOne;
        self->intervalTwo = intTwo;
        self->intervalThree = intThree;
    }
    return self;
}

-(void)copyArray:(NSString * __unsafe_unretained[21][3])chords {
    
    for(int i=0; i<21; i++)
    {
        for(int j=0; i<3; i++)
        {
            notes3[i][j] = chords[i][j];
        }
        
    }
}

-(id)init4:(NSString*)n AbbrevName:(NSString*)an Notes:(NSString *[][3])no First:(NSString*)f Second:(NSString*)s Third:(NSString*)t Fourth:(NSString*)fo Fir:(int)intOne Sec:(int)intTwo Thi:(int)intThree Fou:(int)intFour Num:(int)m
{
    self = [super init];
    if(self)
    {
        self.name = n;
        self.abbrName = an;
        //self->notes = no;
        self.first = f;
        self.second = s;
        self.third = t;
        self.fourth = fo;
        self->num = m;
        
        self->intervalOne = intOne;
        self->intervalTwo = intTwo;
        self->intervalThree = intThree;
        self->intervalFour = intFour;
    }
    return self;
}

-(id)init5:(NSString*)n AbbrevName:(NSString*)an Notes:(NSString *[][3])no First:(NSString*)f Second:(NSString*)s Third:(NSString*)t Fourth:(NSString*)fo Fifth:(NSString*)fi Fir:(int)intOne Sec:(int)intTwo Thi:(int)intThree Fou:(int)intFour Fiv:(int)intFive Num:(int)m
{
    self = [super init];
    if(self)
    {
        self.name = n;
        self.abbrName = an;
        //self->notes = no;
        self.first = f;
        self.second = s;
        self.third = t;
        self.fourth = fo;
        self.fifth = fi;
        self->num = m;
        
        self->intervalOne = intOne;
        self->intervalTwo = intTwo;
        self->intervalThree = intThree;
        self->intervalFour = intFour;
        self->intervalFive = intFive;
    }
    return self;
}

@end
