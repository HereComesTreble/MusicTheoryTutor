//
//  ChordQuizController.h
//  MusicTheoryTutor
//
//  Created by Steven Lester on 12/2/12.
//  Copyright (c) 2012 Steven Lester. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Rand.h"
#import "UserInputButton.h"

@interface ChordNamingQuizViewController : UIViewController
{
    Rand *randomGenerator;

    
    UserInputButton *inputTile_0;
    UserInputButton *inputTile_1;
    UserInputButton *inputTile_2;
    UserInputButton *inputTile_3;
    UserInputButton *inputTile_4;
}

@property (strong, nonatomic) IBOutlet UIBarButtonItem *settingsButton;
@property (strong, nonatomic) IBOutlet UIView *calloutView;
@property (strong, nonatomic) IBOutlet UIButton *triadButton;
@property (strong, nonatomic) IBOutlet UIButton *fourNoteChordButton;
@property (strong, nonatomic) IBOutlet UIButton *fiveNoteChordButton;
@property (nonatomic) BOOL triadIsEnabled;
@property (nonatomic) BOOL fourNoteChordIsEnabled;
@property (nonatomic) BOOL fiveNoteChordIsEnabled;
@property (strong, nonatomic) IBOutlet UILabel *quizNote;
@property (strong, nonatomic) NSArray *inputTileArray;
@property (nonatomic) float TILE_Y;
@property (nonatomic) int userInputTileEnabled;

- (IBAction)getNewNote;
- (IBAction)settingsButtonClicked;
- (IBAction)changeMode:(id)sender;
- (IBAction)userInputTileClickes:(UserInputButton *)sender;
- (IBAction)handleUserInput:(UserInputButton *)sender;
- (void)setupInputTiles;
- (void)resetTiles;

@end



