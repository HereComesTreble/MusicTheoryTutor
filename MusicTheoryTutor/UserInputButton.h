//
//  UserInputButton.h
//  MusicTheoryTutor
//
//  Created by Ryan Sowa on 1/20/13.
//  Copyright (c) 2013 Steven Lester. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UserInputButton : UIButton

@property (nonatomic) float TILE_HEIGHT;
@property (nonatomic) float TILE_WIDTH;
@property (nonatomic) float m_x;
@property (nonatomic) float m_y;

- (id)initWithPosition:(float)x y:(float)y;
-(void)changePosition:(float)x y:(float)y;

@end


