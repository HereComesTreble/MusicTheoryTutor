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

-(id)initThree: (NSString*)n AbbrevName:(NSString*)an First:(NSString*)f Second:(NSString*)s Third:(NSString*)t intervalOne:(int)intOne intervalTwo:(int)intTwo intervalThree:(int)intThree Num:(int)m;

-(id)initFour:(NSString*)n AbbrevName:(NSString*)an First:(NSString*)f Second:(NSString*)s Third:(NSString*)t Fourth:(NSString*)fo intervalOne:(int)intOne intervalTwo:(int)intTwo intervalThree:(int)intThree intervalFour:(int)intFour num:(int)m;

-(id)initFive:(NSString*)n AbbrevName:(NSString*)an First:(NSString*)f Second:(NSString*)s Third:(NSString*)t Fourth:(NSString*)fo Fifth:(NSString*)fi intervalOne:(int)intOne intervalTwo:(int)intTwo intervalThree:(int)intThree intervalFour:(int)intFour intervalFive:(int)intFive num:(int)m;

-(id)initWithName:(NSString *)n description:(NSString*)desc;




@end