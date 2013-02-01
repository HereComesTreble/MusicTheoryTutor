//
//  ChordQuizController.m
//  MusicTheoryTutor
//
//  Created by Steven Lester on 12/2/12.
//  Copyright (c) 2012 Steven Lester. All rights reserved.
//

#import "ChordNamingQuizViewController.h"
#import "Rand.h"
#import "UserInputButton.h"

@interface ChordNamingQuizViewController ()
{
}

@end

@implementation ChordNamingQuizViewController

@synthesize settingsButton, calloutView, triadButton, fourNoteChordButton, fiveNoteChordButton, quizNote, inputTileArray, TILE_Y, triadIsEnabled, fourNoteChordIsEnabled, fiveNoteChordIsEnabled, userInputTileEnabled;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        
        
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.navigationItem setTitle:@"Chord Naming Quiz"];
    
    
    TILE_Y = 130.0f;
    randomGenerator = [Rand new];
    
    triadIsEnabled = NO;
    fourNoteChordIsEnabled = NO;
    fiveNoteChordIsEnabled = YES;
    
    inputTile_0 = [[UserInputButton alloc] init];
    inputTile_1 = [[UserInputButton alloc] init];
    inputTile_2 = [[UserInputButton alloc] init];
    inputTile_3 = [[UserInputButton alloc] init];
    inputTile_4 = [[UserInputButton alloc] init];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:YES];
    
    // set new note
    [self getNewNote];
    
    // hide mode callout view
    calloutView.alpha = 0;
    
    // setup user input tiles here
    [self setupInputTiles];
}

- (void)getNewNote
{
    [quizNote setText:[randomGenerator getRandomName:YES four:YES five:YES]];
}

- (void)settingsButtonClicked
{
    (settingsButton.style == UIBarButtonItemStyleBordered) ? [settingsButton setStyle:UIBarButtonItemStyleDone] : [settingsButton setStyle:UIBarButtonItemStyleBordered];
    
    if (settingsButton.style == UIBarButtonItemStyleDone)
    {
        // fade-in view
        [UIView beginAnimations:@"callout fade in" context:nil];
        [UIView setAnimationDuration:0.2];
        calloutView.alpha = 0.8;
        [UIView commitAnimations];
    }
    else
    {
        calloutView.alpha = 0;
    }
}

- (IBAction)onTouchup:(id)sender
{
    [self performSelector:@selector(changeMode:) withObject:sender afterDelay:0.0];
}

- (void)changeMode:(UIButton*)buttonClicked
{
    
    switch (buttonClicked.tag) {
        case 0:
            // set highlight
            triadIsEnabled = !triadIsEnabled;
            [triadButton setHighlighted:triadIsEnabled];
            break;
        case 1:
            // set highlight
            fourNoteChordIsEnabled = !fourNoteChordIsEnabled;
            [fourNoteChordButton setHighlighted:fourNoteChordIsEnabled];
            break;
        case 2:
            // set highlight
            fiveNoteChordIsEnabled = !fiveNoteChordIsEnabled;
            [fiveNoteChordButton setHighlighted:fiveNoteChordIsEnabled];
            break;
        default:
            break;
    }
    
    // display corresponding number of input fields
    [self setupInputTiles];
}

- (void)setupInputTiles
{
    [self resetTiles];
    
    float spacer = 5.0f;
    float tileViewWidth;
    
    /* TODO: Get chord number from BackEndDictionary */
    /* chord number will determine number of tiles to show */
    
    if (triadIsEnabled)
    {
        tileViewWidth = [inputTile_0 TILE_WIDTH] + [inputTile_1 TILE_WIDTH] + [inputTile_2 TILE_WIDTH] + (spacer * 2.0f);
        
        [inputTile_0 changePosition:(320.0f / 2) - (tileViewWidth / 2) y:TILE_Y];
        [inputTile_1 changePosition:[inputTile_0 m_x] + [inputTile_0 TILE_WIDTH] + spacer y:TILE_Y];
        [inputTile_2 changePosition:[inputTile_1 m_x] + [inputTile_0 TILE_WIDTH] + spacer y:TILE_Y];
        
        inputTileArray  = [NSArray arrayWithObjects:inputTile_0, inputTile_1, inputTile_2, nil];        
    }
    else if (fourNoteChordIsEnabled)
    {
        tileViewWidth = [inputTile_0 TILE_WIDTH] + [inputTile_1 TILE_WIDTH] + [inputTile_2 TILE_WIDTH] + [inputTile_3 TILE_WIDTH] + (spacer * 3.0f);
        
        [inputTile_0 changePosition:(320.0f / 2) - (tileViewWidth / 2) y:TILE_Y];
        [inputTile_1 changePosition:[inputTile_0 m_x] + [inputTile_0 TILE_WIDTH] + spacer y:TILE_Y];
        [inputTile_2 changePosition:[inputTile_1 m_x] + [inputTile_1 TILE_WIDTH] + spacer y:TILE_Y];
        [inputTile_3 changePosition:[inputTile_2 m_x] + [inputTile_2 TILE_WIDTH] + spacer y:TILE_Y];
        
        inputTileArray = [[NSArray alloc] initWithObjects:inputTile_0, inputTile_1, inputTile_2, inputTile_3, nil];
    }
    else
    {
        tileViewWidth = [inputTile_0 TILE_WIDTH] + [inputTile_1 TILE_WIDTH] + [inputTile_2 TILE_WIDTH] + [inputTile_3 TILE_WIDTH] + [inputTile_4 TILE_WIDTH]+ (spacer * 3.0f);
        
        [inputTile_0 changePosition:(320.0f / 2) - (tileViewWidth / 2) y:TILE_Y];
        [inputTile_1 changePosition:[inputTile_0 m_x] + [inputTile_0 TILE_WIDTH] + spacer y:TILE_Y];
        [inputTile_2 changePosition:[inputTile_1 m_x] + [inputTile_1 TILE_WIDTH] + spacer y:TILE_Y];
        [inputTile_3 changePosition:[inputTile_2 m_x] + [inputTile_2 TILE_WIDTH] + spacer y:TILE_Y];
        [inputTile_4 changePosition:[inputTile_3 m_x] + [inputTile_3 TILE_WIDTH] + spacer y:TILE_Y];
        
        inputTileArray = [[NSArray alloc] initWithObjects:inputTile_0, inputTile_1, inputTile_2, inputTile_3, inputTile_4, nil];
    }
    
    for (int i=0; i < [inputTileArray count]; i++)
    {
        if ([inputTileArray objectAtIndex:i] != nil)
            [self.view addSubview:[inputTileArray objectAtIndex:i]];
    }
    
    // enable/highlight first input tile
    [inputTile_0 setHighlighted:YES];
    [inputTile_0 setEnabled:NO];
    
    // set tags for user input tiles
    [inputTile_0 setTag:0];
    [inputTile_1 setTag:1];
    [inputTile_2 setTag:2];
    [inputTile_3 setTag:3];
    [inputTile_4 setTag:4];
    
    // create action events for user input tiles
    [inputTile_0 addTarget:self action:@selector(inputTileClicked:) forControlEvents:UIControlEventTouchUpInside];
    [inputTile_1 addTarget:self action:@selector(inputTileClicked:) forControlEvents:UIControlEventTouchUpInside];
    [inputTile_2 addTarget:self action:@selector(inputTileClicked:) forControlEvents:UIControlEventTouchUpInside];
    [inputTile_3 addTarget:self action:@selector(inputTileClicked:) forControlEvents:UIControlEventTouchUpInside];
    [inputTile_4 addTarget:self action:@selector(inputTileClicked:) forControlEvents:UIControlEventTouchUpInside];
}

- (IBAction)handleUserInput:(UserInputButton *)sender
{
    NSString *newTitle = [[inputTileArray objectAtIndex:userInputTileEnabled] currentTitle];
    
    switch (sender.tag) {
        case 0:
            // A button was pressed
            newTitle = [newTitle stringByAppendingString:@"A"];
            break;
        case 1:
            // B button was pressed
            newTitle = [newTitle stringByAppendingString:@"B"];
            break;
        case 2:
            // C button was pressed
            newTitle = [newTitle stringByAppendingString:@"C"];
            break;
        case 3:
            // D button was pressed
            newTitle = [newTitle stringByAppendingString:@"D"];
            break;
        case 4:
            // E button was pressed
            newTitle = [newTitle stringByAppendingString:@"E"];
            break;
        case 5:
            // F button was pressed
            newTitle = [newTitle stringByAppendingString:@"F"];
            break;
        case 6:
            // G button was pressed
            newTitle = [newTitle stringByAppendingString:@"G"];
            break;
        case 7:
            // ♭ button was pressed
            newTitle = [newTitle stringByAppendingString:@"♭"];
            break;
        case 8:
            // ♯ button was pressed
            newTitle = [newTitle stringByAppendingString:@"♯"];
            break;
        case 9:
            // CLR button was pressed
            newTitle = @"";
            break;
        default:
            break;
    }
    
    [[inputTileArray objectAtIndex:userInputTileEnabled] setTitle:newTitle forState:UIControlStateNormal];
    [[inputTileArray objectAtIndex:userInputTileEnabled] setNeedsDisplay];
}

- (void)inputTileClicked:(UserInputButton *)sender
{
    userInputTileEnabled = sender.tag;
    
    switch (userInputTileEnabled) {
        case 0:
            [inputTile_0 setEnabled:NO];
            [inputTile_1 setEnabled:YES];
            [inputTile_2 setEnabled:YES];
            [inputTile_3 setEnabled:YES];
            [inputTile_4 setEnabled:YES];
            break;
        case 1:
            [inputTile_0 setEnabled:YES];
            [inputTile_1 setEnabled:NO];
            [inputTile_2 setEnabled:YES];
            [inputTile_3 setEnabled:YES];
            [inputTile_4 setEnabled:YES];
            break;
        case 2:
            [inputTile_0 setEnabled:YES];
            [inputTile_1 setEnabled:YES];
            [inputTile_2 setEnabled:NO];
            [inputTile_3 setEnabled:YES];
            [inputTile_4 setEnabled:YES];
            break;
        case 3:
            [inputTile_0 setEnabled:YES];
            [inputTile_1 setEnabled:YES];
            [inputTile_2 setEnabled:YES];
            [inputTile_3 setEnabled:NO];
            [inputTile_4 setEnabled:YES];
            break;
        case 4:
            [inputTile_0 setEnabled:YES];
            [inputTile_1 setEnabled:YES];
            [inputTile_2 setEnabled:YES];
            [inputTile_3 setEnabled:YES];
            [inputTile_4 setEnabled:NO];
            break;
        default:
            break;
    }
}

- (void)resetTiles
{
    [inputTile_0 removeFromSuperview];
    [inputTile_1 removeFromSuperview];
    [inputTile_2 removeFromSuperview];
    [inputTile_3 removeFromSuperview];
    [inputTile_4 removeFromSuperview];
}

@end
