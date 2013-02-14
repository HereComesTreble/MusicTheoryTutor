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

- (id)init
{
    TILE_HEIGHT = 43.0f;
    TILE_WIDTH = 58.0f;
    
    CGRect frame = CGRectMake(0.0f, 0.0f, TILE_WIDTH, TILE_HEIGHT);
    self = [super initWithFrame:frame];
    
    if (self) {
        // Initialization code
        [self setTitle:@"" forState:UIControlStateNormal];
        [self setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        self.titleLabel.font = [UIFont fontWithName:@"Helvetica-Oblique" size:20.0];
        
        [[self layer] setCornerRadius:5.0f];
        [[self layer] setShadowRadius:10.0f];
        [[self layer] setBorderWidth:1.0f];
        [[self layer] setBorderColor:[UIColor blackColor].CGColor];
    }
    return self;
}

- (id)initWithPosition:(float)x y:(float)y;
{
    m_x = x;
    m_y = y;
    TILE_HEIGHT = 43.0f;
    TILE_WIDTH = 58.0f;
    
    CGRect frame = CGRectMake(m_x, m_y, TILE_WIDTH, TILE_HEIGHT);
    self = [super initWithFrame:frame];
    
    if(self) {
        // initialize any code here
        [self setTitle:@"" forState:UIControlStateNormal];
        [self setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        self.titleLabel.font = [UIFont fontWithName:@"Helvetica" size:22.0];
               
        [[self layer] setCornerRadius:5.0f];
        [[self layer] setShadowRadius:10.0f];
        [[self layer] setBorderWidth:1.0f];
        [[self layer] setBorderColor:[UIColor blackColor].CGColor];
    }
    return self;
}

-(void)changePosition:(float)x y:(float)y
{
    m_x = x;
    m_y = y;
    
    self.frame = CGRectMake(m_x, m_y, self.frame.size.width, self.frame.size.height);
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
