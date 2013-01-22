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

@synthesize settingsButton, calloutView, triadButton, fourNoteChordButton, fiveNoteChordButton, quizNote, inputTileArray, TILE_Y;

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
    
    
    TILE_Y = 120.0f;
    randomGenerator = [Rand new];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:YES];
    
    // set new note
    [self getNewNote];
    
    // set callout view
    calloutView.alpha = 0;
    [triadButton setHighlighted:YES];
    [triadButton setEnabled:NO];
    
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
            // set enabling
            [triadButton setEnabled:NO];
            [fourNoteChordButton setEnabled:YES];
            [fiveNoteChordButton setEnabled:YES];
            
            // set highlight
            [triadButton setHighlighted:YES];
            [fourNoteChordButton setHighlighted:NO];
            [fiveNoteChordButton setHighlighted:NO];
            
            // show three fields here
            break;
        case 1:
            // set enabling
            [triadButton setEnabled:YES];
            [fourNoteChordButton setEnabled:NO];
            [fiveNoteChordButton setEnabled:YES];
            
            // set highlight
            [triadButton setHighlighted:NO];
            [fourNoteChordButton setHighlighted:YES];
            [fiveNoteChordButton setHighlighted:NO];
            
            // show four fields here
            break;
        case 2:
            // set enabling
            [triadButton setEnabled:YES];
            [fourNoteChordButton setEnabled:YES];
            [fiveNoteChordButton setEnabled:NO];
            
            // set highlight
            [triadButton setHighlighted:NO];
            [fourNoteChordButton setHighlighted:NO];
            [fiveNoteChordButton setHighlighted:YES];
            
            // show five fields here
            break;
            
        default:
            break;
    }
    [self setupInputTiles];
}

- (void)setupInputTiles
{
    [self resetTiles];
    
    float spacer = 5.0f;
    
    if (!triadButton.enabled)
    {
        inputTile_0 = [[UserInputButton alloc] initWithPosition:(95.0f)
                                                              y:TILE_Y];
        inputTile_1 = [[UserInputButton alloc] initWithPosition:[inputTile_0 m_x] + [inputTile_0 TILE_WIDTH] + spacer
                                                              y:TILE_Y];
        inputTile_2 = [[UserInputButton alloc] initWithPosition:[inputTile_1 m_x] + [inputTile_0 TILE_WIDTH] + spacer
                                                              y:TILE_Y];
        
        inputTileArray  = [NSArray arrayWithObjects:inputTile_0, inputTile_1, inputTile_2, nil];
    }
    else if (!fourNoteChordButton.enabled)
    {
        inputTile_0 = [[UserInputButton alloc] initWithPosition:(72.5f)
                                                              y:TILE_Y];
        inputTile_1 = [[UserInputButton alloc] initWithPosition:[inputTile_0 m_x] + [inputTile_0 TILE_WIDTH] + spacer
                                                              y:TILE_Y];
        inputTile_2 = [[UserInputButton alloc] initWithPosition:[inputTile_1 m_x] + [inputTile_0 TILE_WIDTH] + spacer
                                                              y:TILE_Y];
        inputTile_3 = [[UserInputButton alloc] initWithPosition:[inputTile_2 m_x] + [inputTile_0 TILE_WIDTH] + spacer
                                                              y:TILE_Y];
        
        inputTileArray = [[NSArray alloc] initWithObjects:inputTile_0, inputTile_1, inputTile_2, inputTile_3, nil];
    }
    else
    {
        inputTile_0 = [[UserInputButton alloc] initWithPosition:(50.0f)
                                                              y:TILE_Y];
        inputTile_1 = [[UserInputButton alloc] initWithPosition:[inputTile_0 m_x] + [inputTile_0 TILE_WIDTH] + spacer
                                                              y:TILE_Y];
        inputTile_2 = [[UserInputButton alloc] initWithPosition:[inputTile_1 m_x] + [inputTile_0 TILE_WIDTH] + spacer
                                                              y:TILE_Y];
        inputTile_3 = [[UserInputButton alloc] initWithPosition:[inputTile_2 m_x] + [inputTile_0 TILE_WIDTH] + spacer
                                                              y:TILE_Y];
        inputTile_4 = [[UserInputButton alloc] initWithPosition:[inputTile_3 m_x] + [inputTile_0 TILE_WIDTH] + spacer
                                                              y:TILE_Y];
        
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

- (void)inputTileClicked:(UserInputButton *)sender
{
    switch (sender.tag) {
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
