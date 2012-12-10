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


-(id)init3: (NSString*)n AbbrevName:(NSString*)an Notes:(NSString *[][3])no First:(NSString*)f Second:(NSString*)s Third:(NSString*)t Fir:(int)intOne Sec:(int)intTwo Thi:(int)intThree Num:(int)m
{
    self = [super init];
    if(self)
    {
        self.name = n;
        self.abbrName = an;
        //self->notes = notes;
        self.first = f;
        self.second = s;
        self.third = t;
        self->num = m;
        
        self->intervalOne = intOne;
        self->intervalTwo = intTwo;
        self->intervalThree = intThree;
    }
    return self;
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
