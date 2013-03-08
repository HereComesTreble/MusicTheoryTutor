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
#import <QuartzCore/QuartzCore.h>

@interface NoteNamingQuizViewController : UIViewController <UITableViewDelegate, UITableViewDataSource> 
{
    Rand *randomGenerator;
    ChordDictionary *chordDictionary;
    
    NSArray *tableviewarray;
    
    UserInputButton *inputTile_0;
    UserInputButton *inputTile_1;
}

@property (strong, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) IBOutlet UIBarButtonItem *modeButton;
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
- (IBAction)modeButtonClicked;
- (IBAction)handleModeChange:(id)sender;
- (IBAction)handleUserInput:(UIButton *)sender;
- (IBAction)submitClicked:(id)sender;
- (IBAction)showAnswerClicked:(id)sender;
- (IBAction)setupInputTiles;
- (void)resetTiles;

@end
