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
    NSString *name, *abbrName, *first, *second, *third, *fourth, *fifth;
    int intervalOne, intervalTwo, intervalThree, intervalFour, intervalFive, num;
    
    NSString* notes3[21][3];
    
    NSString* notes4[21][4];
    
    NSString* notes5[21][5];
    
}

-(id)init3: (NSString*)n AbbrevName:(NSString*)an Notes:(NSString *[][3])no First:(NSString*)f Second:(NSString*)s Third:(NSString*)t Fir:(int)intOne Sec:(int)intTwo Thi:(int)intThree Num:(int)m;

-(id)init4:(NSString*)n AbbrevName:(NSString*)an Notes:(NSString *[][3])no First:(NSString*)f Second:(NSString*)s Third:(NSString*)t Fourth:(NSString*)fo Fir:(int)intOne Sec:(int)intTwo Thi:(int)intThree Fou:(int)intFour Num:(int)m;

-(id)init5:(NSString*)n AbbrevName:(NSString*)an Notes:(NSString *[][3])no First:(NSString*)f Second:(NSString*)s Third:(NSString*)t Fourth:(NSString*)fo Fifth:(NSString*)fi Fir:(int)intOne Sec:(int)intTwo Thi:(int)intThree Fou:(int)intFour Fiv:(int)intFive Num:(int)m;

-(id)initWithName:(NSString *)n description:(NSString*)desc;

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *abbrName;
@property (nonatomic, copy) NSString *first;
@property (nonatomic, copy) NSString *second;
@property (nonatomic, copy) NSString *third;
@property (nonatomic, copy) NSString *fourth;
@property (nonatomic, copy) NSString *fifth;



@end