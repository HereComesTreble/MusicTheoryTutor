//
//  Chords.h
//  MusicTheoryTutor
//
//  Created by Steven Lester on 12/7/12.
//  Copyright (c) 2012 Steven Lester. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Chords : NSObject
{
    @public
    int intervalOne, intervalTwo, intervalThree, intervalFour, intervalFive, num;
    
    NSMutableString *name, *abbrName, *first, *second, *third, *fourth, *fifth;
    
}

-(id)init: (NSString*)n AbbrevName:(NSString*)an First:(NSString*)f Second:(NSString*)s Third:(NSString*)t Fir:(int)intOne Sec:(int)intTwo Thi:(int)intThree Num:(int)m;

-(id)init:(NSString*)n AbbrevName:(NSString*)an First:(NSString*)f Second:(NSString*)s Third:(NSString*)t Fourth:(NSString*)fo Fir:(int)intOne Sec:(int)intTwo Thi:(int)intThree Fou:(int)intFour Num:(int)m;

-(id)init:(NSString*)n AbbrevName:(NSString*)an First:(NSString*)f Second:(NSString*)s Third:(NSString*)t Fourth:(NSString*)fo Fifth:(NSString*)fi Fir:(int)intOne Sec:(int)intTwo Thi:(int)intThree Fou:(int)intFour Fiv:(int)intFive Num:(int)m;

-(id)initWithName:(NSString *)n description:(NSString*)desc;




@end