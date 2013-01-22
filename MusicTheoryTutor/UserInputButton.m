//
//  UserInputButton.m
//  MusicTheoryTutor
//
//  Created by Ryan Sowa on 1/20/13.
//  Copyright (c) 2013 Steven Lester. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>
#import "UserInputButton.h"

@implementation UserInputButton

@synthesize TILE_HEIGHT, TILE_WIDTH, m_x, m_y;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        
    }
    return self;
}

- (id)initWithPosition:(float)x y:(float)y;
{
    m_x = x;
    m_y = y;
    TILE_HEIGHT = 60.0f;
    TILE_WIDTH = 40.0f;
    
    CGRect frame = CGRectMake(m_x, m_y, TILE_WIDTH, TILE_HEIGHT);
    self = [super initWithFrame:frame];
    
    if(self) {
        // initialize any code here
        [self setTitle:@"---" forState:UIControlStateNormal];
        [self setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        
        [[self layer] setCornerRadius:5.0f];
        [[self layer] setShadowRadius:10.0f];
        [[self layer] setBorderWidth:1.0f];
        [[self layer] setBorderColor:[UIColor blackColor].CGColor];
    }
    return self;
}

-(void)setEnabled:(BOOL)enabled
{
    [super setEnabled:enabled];
    
    enabled ? [[self layer] setBackgroundColor:[[UIColor clearColor] CGColor]]
        : [[self layer] setBackgroundColor:[[UIColor lightGrayColor] CGColor]];
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}


@end
