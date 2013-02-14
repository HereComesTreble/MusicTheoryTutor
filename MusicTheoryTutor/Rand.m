//
//  Rand.m
//  MusicTheoryTutor
//
//  Created by Ryan Sowa on 1/18/13.
//  Copyright (c) 2013 Steven Lester. All rights reserved.
//

#import "Rand.h"

@implementation Rand

@synthesize notes, abbrNames3, abbrNames4, abbrNames5;

-(id)init
{
    if(self =[super init])
    {
        // initialize arrays
        notes = [NSArray arrayWithObjects:@"A♯", @"A", @"A♭", @"B♯", @"B", @"B♭", @"C♯", @"C", @"C♭", @"D♯", @"D", @"D♭", @"E♯", @"E", @"E♭", @"F♯", @"F", @"F♭", @"G♯", @"G", @"G♭", nil];
  
        abbrNames3 = [NSArray arrayWithObjects:@"M", @"♭5", @"m", @"dim", @"aug", @"sus2", @"sus4", @"5", nil];
        
        abbrNames4 = [NSArray arrayWithObjects:@"M7", @"M7sus2", @"M7sus4", @"M7♯5", @"M7♭5", @"6", @"♭6", @"add4", @"add9", @"7", @"7sus2", @"7sus4", @"7♯5", @"7♭5", @"m7", @"m/M7", @"madd4", @"madd9", @"m♭6", @"m6", @"m7♭5", @"dim7", nil];
        
        abbrNames5 = [NSArray arrayWithObjects:@"6add9", @"m6add9", @"9", @"9♭5", @"9♯5", @"m9", @"m9♭5", @"M9", @"M9sus4", @"M7♭9", @"7add6", @"m/M9", @"m/M♭9", @"7♯9", @"7♭5♯9", @"7♭9", @"m7♭9", @"m7♯9", nil];
    }
    
    return self;
}

- (NSMutableString *)getRandomNote
{
    // get random number within array's range    
    return notes[(arc4random() % [notes count])];
}
    
- (NSMutableString *) getRandomChordType:(BOOL)three four:(BOOL)four five:(BOOL)five
{		
		if (three && !four && !five)
        {
            return abbrNames3[(arc4random() % [abbrNames3 count])];   
        }
		else if (!three && four && !five)
		{
            return abbrNames4[(arc4random() % [abbrNames4 count])];
        }
        else if (!three && !four && five)
        {
			return abbrNames5[(arc4random() % [abbrNames5 count])];
        }
        else if (three && four && !five)
        {            
			if((arc4random() % 2) == 0)
				return abbrNames3[(arc4random() % [abbrNames3 count])];
            else
				return abbrNames4[(arc4random() % [abbrNames4 count])];
		}
        else if (!three && four && five)
        {
			if((arc4random() % 2) == 0)
				return abbrNames4[(arc4random() % [abbrNames4 count])];
            else
				return abbrNames5[(arc4random() % [abbrNames5 count])];
		}
        else if (three && !four && five)
        {
			int x = (arc4random() % 2);
            
			if(x == 0)
				return abbrNames3[(arc4random() % [abbrNames3 count])];
            else
				return abbrNames5[(arc4random() % [abbrNames5 count])];
		}
        else
        {
			if((arc4random() % 3) == 0)
				return abbrNames3[(arc4random() % [abbrNames3 count])];
            else if((arc4random() % 3) == 1)
				return abbrNames4[(arc4random() % [abbrNames4 count])];
            else
				return abbrNames5[(arc4random() % [abbrNames5 count])];
		}
}

@end
