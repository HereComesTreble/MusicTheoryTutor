//
//  Rand.m
//  MusicTheoryTutor
//
//  Created by Ryan Sowa on 1/18/13.
//  Copyright (c) 2013 Steven Lester. All rights reserved.
//

#import "Rand.h"

@implementation Rand

@synthesize notes;

-(id)init
{
    if(self =[super init])
    {
        // initialize arrays
        notes = [NSArray arrayWithObjects:@"A#", @"A", @"Ab", @"B#", @"B", @"Bb", @"C#", @"C", @"Cb", @"D#", @"D", @"Db", @"E#", @"E", @"Eb", @"F#", @"F", @"Fb", @"G#", @"G", @"Gb", nil];
  
        
    }
    
    return self;
}


//	
	
//	private String abbrNames3[] = { "M", "b5", "m", "dim", "aug", "sus2",
//        "sus4", "5" };
//	
//	private String abbrNames4[] = { "M7", "M7sus2", "M7sus4", "M7#5", "M7b5",
//        "6", "b6", "add4", "add9", "7", "7sus2", "7sus4", "7#5", "7b5",
//        "m7", "m/M7", "madd4", "madd9", "mb6", "m6", "m7b5", "dim7" };
//    
//	private String abbrNames5[] = { "6add9", "m6add9", "9", "9b5", "9#5", "m9", "m9b5",
//        "M9", "M9sus4", "M7b9", "7add6", "m/M9", "m/Mb9", "7#9", "7b5#9",
//        "7b9", "m7b9", "m7#9" };
//
//	private String temp = "";

- (NSString *)getRandomNote
{
    // get random number within array's range    
    return notes[(arc4random() % [notes count])];
        
}
    
//- (NSString *) randName:(BOOL *)three four:(BOOL *)four five:(BOOL *)five
//{
//		int name;
//		
//		if (three && !four && !five) {
//			name = generator.nextInt(abbrNames3.length);
//			return abbrNames3[name];
//		} else if (!three && four && !five) {
//			name = generator.nextInt(abbrNames5.length);
//			return abbrNames5[name];
//		} else if (!three && !four && five) {
//			name = generator.nextInt(abbrNames5.length);
//			return abbrNames5[name];
//		} else if (three && four && !five) {
//			int x = generator.nextInt(2);
//			if(x == 0){
//				name = generator.nextInt(abbrNames3.length);
//				return abbrNames3[name];
//			}else{
//				name = generator.nextInt(abbrNames4.length);
//				return abbrNames4[name];
//			}
//		} else if (!three && four && five) {
//			int x = generator.nextInt(2);
//			if(x == 0){
//				name = generator.nextInt(abbrNames4.length);
//				return abbrNames4[name];
//			}else{
//				name = generator.nextInt(abbrNames5.length);
//				return abbrNames5[name];
//			}
//		} else if (three && !four && five) {
//			int x = generator.nextInt(2);
//			if(x == 0){
//				name = generator.nextInt(abbrNames3.length);
//				return abbrNames3[name];
//			}else{
//				name = generator.nextInt(abbrNames5.length);
//				return abbrNames5[name];
//			}
//		} else {
//			int x = generator.nextInt(3);
//			if(x == 0){
//				name = generator.nextInt(abbrNames3.length);
//				return abbrNames3[name];
//			}else if(x == 1){
//				name = generator.nextInt(abbrNames4.length);
//				return abbrNames4[name];
//			}else{
//				name = generator.nextInt(abbrNames5.length);
//				return abbrNames5[name];
//			}
//            
//		}
//	}
//	
//    
//}


@end
