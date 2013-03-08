//
//  ChordQuizController.h
//  MusicTheoryTutor
//
//  Created by Steven Lester on 12/2/12.
//  Copyright (c) 2012 Steven Lester. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Rand.h"
#import "ChordDictionary.h"
#import "UserInputButton.h"

@interface ChordNamingQuizViewController : UIViewController
{
    Rand *randomGenerator;
    ChordDictionary *chordDictionary;
    
    UserInputButton *inputTile_0;
    UserInputButton *inputTile_1;
    UserInputButton *inputTile_2;
    UserInputButton *inputTile_3;
    UserInputButton *inputTile_4;
}

@property (strong, nonatomic) IBOutlet UIBarButtonItem *modeButton;
@property (strong, nonatomic) IBOutlet UIView *calloutView;
@property (strong, nonatomic) IBOutlet UIButton *triadButton;
@property (strong, nonatomic) IBOutlet UIButton *fourNoteChordButton;
@property (strong, nonatomic) IBOutlet UIButton *fiveNoteChordButton;
@property (strong, nonatomic) IBOutlet UILabel *currentChordLabel;
@property (strong, nonatomic) IBOutlet UILabel *answerLabel;
@property (strong, nonatomic) NSArray *inputTileArray;
@property (nonatomic) BOOL triadIsEnabled;
@property (nonatomic) BOOL fourNoteChordIsEnabled;
@property (nonatomic) BOOL fiveNoteChordIsEnabled;
@property (nonatomic) float TILE_Y;
@property (nonatomic) int userInputTileEnabled;
@property (nonatomic) NSMutableString *currentChordRoot;
@property (nonatomic) NSMutableString *currentChordType;

- (IBAction)getNewChord;
- (IBAction)modeButtonClicked;
- (IBAction)handleModeChange:(id)sender;
- (IBAction)handleUserInput:(UserInputButton *)sender;
- (IBAction)submitClicked:(id)sender;
- (IBAction)showAnswer:(id)sender;
- (IBAction)setupInputTiles;
- (void)resetTiles;

@end



