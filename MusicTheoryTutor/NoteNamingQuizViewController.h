//
//  ChordNamingQuizViewController.h
//  MusicTheoryTutor
//
//  Created by Ryan Sowa on 1/19/13.
//  Copyright (c) 2013 Steven Lester. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Rand.h"
#import "ChordDictionary.h"
#import "UserInputButton.h"

@interface NoteNamingQuizViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>
{
    Rand *randomGenerator;
    ChordDictionary *chordDictionary;
    
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
@property (strong, nonatomic) IBOutlet UILabel *currentNoteLabel;
@property (strong, nonatomic) IBOutlet UILabel *answerLabel;
@property (strong, nonatomic) NSArray *inputTileArray;
@property (strong, nonatomic) NSArray *currentNote;
@property (nonatomic) BOOL triadIsEnabled;
@property (nonatomic) BOOL fourNoteChordIsEnabled;
@property (nonatomic) BOOL fiveNoteChordIsEnabled;
@property (nonatomic) float TILE_Y;
@property (nonatomic) int userInputTileEnabled;
@property (nonatomic) NSMutableString *currentChordRoot;
@property (nonatomic) NSMutableString *currentChordType;


- (IBAction)getNewNote;
- (IBAction)settingsButtonClicked;
- (IBAction)handleModeChange:(id)sender;
- (IBAction)handleUserInput:(UIButton *)sender;
- (IBAction)submitClicked:(id)sender;
- (IBAction)setupInputTiles;
- (void)resetTiles;

@end
