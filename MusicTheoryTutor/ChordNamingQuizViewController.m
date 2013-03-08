//
//  ChordQuizController.m
//  MusicTheoryTutor
//
//  Created by Steven Lester on 12/2/12.
//  Copyright (c) 2012 Steven Lester. All rights reserved.
//

#import "ChordNamingQuizViewController.h"

@interface ChordNamingQuizViewController ()
{
}

@end

@implementation ChordNamingQuizViewController

@synthesize modeButton, calloutView, triadButton, fourNoteChordButton, fiveNoteChordButton, currentChordLabel, inputTileArray, TILE_Y, triadIsEnabled, fourNoteChordIsEnabled, fiveNoteChordIsEnabled, userInputTileEnabled, currentChordRoot, currentChordType, answerLabel;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.navigationItem setTitle:@"Chord Naming Quiz"];
    
    TILE_Y = 130.0f;
    randomGenerator = [Rand new];
    chordDictionary = [ChordDictionary new];
    
    triadIsEnabled = YES;
    triadButton.highlighted = YES;
    fourNoteChordIsEnabled = NO;
    fiveNoteChordIsEnabled = NO;
    
    inputTile_0 = [[UserInputButton alloc] init];
    inputTile_1 = [[UserInputButton alloc] init];
    inputTile_2 = [[UserInputButton alloc] init];
    inputTile_3 = [[UserInputButton alloc] init];
    inputTile_4 = [[UserInputButton alloc] init];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:YES];
    
    // set new chord
    [self getNewChord];
    
    // hide mode callout view
    calloutView.alpha = 0;
    
    // setup user input tiles here
    [self setupInputTiles];
}

- (void)getNewChord
{
    currentChordRoot = [randomGenerator getRandomNote];
    
    currentChordType = [randomGenerator getRandomChordType:triadIsEnabled
                                                      four:fourNoteChordIsEnabled
                                                      five:fiveNoteChordIsEnabled];
    
    [currentChordLabel setText: [NSMutableString stringWithFormat:@"%@ %@", currentChordRoot, currentChordType]];
    [self setupInputTiles];
    
    answerLabel.text = @"";
}

- (void)modeButtonClicked
{
    (modeButton.style == UIBarButtonItemStyleBordered) ? [modeButton setStyle:UIBarButtonItemStyleDone] : [modeButton setStyle:UIBarButtonItemStyleBordered];
    
    if (modeButton.style == UIBarButtonItemStyleDone)
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

- (IBAction)handleModeChange:(id)sender
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
}

- (void)setupInputTiles
{
    [self resetTiles];
    answerLabel.text = @"";
    
    float spacer = 5.0f;
    float tileViewWidth;
        
    switch ((int)[chordDictionary getNum:currentChordType]) {
        case 3:
            tileViewWidth = [inputTile_0 TILE_WIDTH] + [inputTile_1 TILE_WIDTH] + [inputTile_2 TILE_WIDTH] + (spacer * 2.0f);
            [inputTile_0 changePosition:(315.0f / 2) - (tileViewWidth / 2) y:TILE_Y];
            [inputTile_1 changePosition:[inputTile_0 m_x] + [inputTile_0 TILE_WIDTH] + spacer y:TILE_Y];
            [inputTile_2 changePosition:[inputTile_1 m_x] + [inputTile_0 TILE_WIDTH] + spacer y:TILE_Y];
        
            inputTileArray  = [NSArray arrayWithObjects:inputTile_0, inputTile_1, inputTile_2, nil];
            break;
        case 4:
            tileViewWidth = [inputTile_0 TILE_WIDTH] + [inputTile_1 TILE_WIDTH] + [inputTile_2 TILE_WIDTH] + [inputTile_3 TILE_WIDTH] + (spacer * 3.0f);
            [inputTile_0 changePosition:(315.0f / 2) - (tileViewWidth / 2) y:TILE_Y];
            [inputTile_1 changePosition:[inputTile_0 m_x] + [inputTile_0 TILE_WIDTH] + spacer y:TILE_Y];
            [inputTile_2 changePosition:[inputTile_1 m_x] + [inputTile_1 TILE_WIDTH] + spacer y:TILE_Y];
            [inputTile_3 changePosition:[inputTile_2 m_x] + [inputTile_2 TILE_WIDTH] + spacer y:TILE_Y];
        
            inputTileArray = [[NSArray alloc] initWithObjects:inputTile_0, inputTile_1, inputTile_2, inputTile_3, nil];
            break;
        case 5:
            tileViewWidth = [inputTile_0 TILE_WIDTH] + [inputTile_1 TILE_WIDTH] + [inputTile_2 TILE_WIDTH] + [inputTile_3 TILE_WIDTH] + [inputTile_4 TILE_WIDTH]+ (spacer * 3.0f);
            [inputTile_0 changePosition:(315.0f / 2) - (tileViewWidth / 2) y:TILE_Y];
            [inputTile_1 changePosition:[inputTile_0 m_x] + [inputTile_0 TILE_WIDTH] + spacer y:TILE_Y];
            [inputTile_2 changePosition:[inputTile_1 m_x] + [inputTile_1 TILE_WIDTH] + spacer y:TILE_Y];
            [inputTile_3 changePosition:[inputTile_2 m_x] + [inputTile_2 TILE_WIDTH] + spacer y:TILE_Y];
            [inputTile_4 changePosition:[inputTile_3 m_x] + [inputTile_3 TILE_WIDTH] + spacer y:TILE_Y];
            inputTileArray = [[NSArray alloc] initWithObjects:inputTile_0, inputTile_1, inputTile_2, inputTile_3, inputTile_4, nil];
            break;
        default:
            break;
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
    NSString *temp = [NSString stringWithString:[[inputTileArray objectAtIndex:userInputTileEnabled] currentTitle]];
    NSString *note = @"";
    NSString *stepSymbol = @"";
    
//    NSLog(@"\U0001D12B"); // unicode for double flat 𝄫
//    NSLog(@"\U0001D12A"); // unicode for double sharp 𝄪
    
    if([temp length] > 0)
    {
        // check if no note has been entered yet
        if([[NSString stringWithFormat:@"%C", [temp characterAtIndex:0]] isEqualToString: @"♭"]
           || [[NSString stringWithFormat:@"%C", [temp characterAtIndex:0]] isEqualToString: @"♯"])
        {
            stepSymbol = [NSString stringWithFormat:@"%C", [temp characterAtIndex:0]];
        }
        else
        {
            note = [NSString stringWithFormat:@"%C", [temp characterAtIndex:0]];
        }
        
        // check for a step symbol
        if([temp length] > 1)
        {
            stepSymbol = [NSString stringWithFormat:@"%C", [temp characterAtIndex:1]];
        
            // check for two half step symbols and no note
            if ([[NSString stringWithFormat:@"%C", [temp characterAtIndex:0]] isEqualToString: @"♭"]
                || [[NSString stringWithFormat:@"%C", [temp characterAtIndex:0]] isEqualToString: @"♯"])
            {
                stepSymbol = [NSString stringWithFormat:@"%@%C", stepSymbol, [temp characterAtIndex:1]];
            }
        }
        if([temp length] > 2)
        {
            stepSymbol = [NSString stringWithFormat:@"%@%C", stepSymbol, [temp characterAtIndex:2]];
        }
    }
    
    switch (sender.tag) {
        case 0:
            // A button was pressed
            note = @"A";
            break;
        case 1:
            // B button was pressed
            note = @"B";
            break;
        case 2:
            // C button was pressed
            note = @"C";
            break;
        case 3:
            // D button was pressed
            note = @"D";
            break;
        case 4:
            // E button was pressed
            note = @"E";
            break;
        case 5:
            // F button was pressed
            note = @"F";
            break;
        case 6:
            // G button was pressed
            note = @"G";
            break;
        case 7:
            // ♭ button was pressed
            if([stepSymbol length] == 2) // means str is either 𝄪 or 𝄫 𝄪
            {
                if([[NSString stringWithFormat:@"%C", [stepSymbol characterAtIndex:0]] isEqualToString: @"♯"]) // remove one, or do nothing
                    stepSymbol = [NSMutableString stringWithString:@"♯"];
            }
            else if([stepSymbol length] == 1) // means str has a single half-step symbol
            {
                if([[NSString stringWithFormat:@"%C", [stepSymbol characterAtIndex:0]] isEqualToString: @"♯"]) // remove ♯
                    stepSymbol = [NSMutableString stringWithString:@""];
                else // add a ♭
                    stepSymbol = [NSMutableString stringWithFormat:@"%@%@", @"♭", @"♭"];
            }
            else // means str is empty
                stepSymbol = [NSMutableString stringWithString:@"♭"];
            break;
        case 8:
            // ♯ button was pressed
            if([stepSymbol length] == 2) // means str is either 𝄪 or 𝄫
            {
                if([[NSString stringWithFormat:@"%C", [stepSymbol characterAtIndex:0]] isEqualToString: @"♭"]) // remove one, or do nothing
                    stepSymbol = [NSMutableString stringWithString:@"♭"];
            }
            else if([stepSymbol length] == 1) // means str has a single half-step symbol
            {
                if([[NSString stringWithFormat:@"%C", [stepSymbol characterAtIndex:0]] isEqualToString: @"♭"]) // remove ♭, or add ♯
                    stepSymbol = [NSMutableString stringWithString:@""];
                else // add a ♯
                    stepSymbol = [NSMutableString stringWithFormat:@"%@%@", @"♯", @"♯"];
            }
            else // means str is empty
                stepSymbol = [NSMutableString stringWithString:@"♯"];
            break;
        case 9:
            // CLR button was pressed
            answerLabel.text = @"";
            note = [NSMutableString stringWithString:@""];
            stepSymbol = [NSMutableString stringWithString:@""];
            break;
        default:
            break;
    }
    
    [[inputTileArray objectAtIndex:userInputTileEnabled] setTitle:[NSMutableString stringWithFormat:@"%@%@", note, stepSymbol] forState:UIControlStateNormal];
    [[inputTileArray objectAtIndex:userInputTileEnabled] setNeedsDisplay];
}

- (IBAction)submitClicked:(id)sender
{
    NSArray *answer = [chordDictionary getNotes:currentChordRoot chordType:currentChordType];
    bool correctAns = YES;
    int index = 0;
    
    while (index < [answer count] && correctAns)
    {
        correctAns = [[answer objectAtIndex:index] isEqualToString:[[[inputTileArray objectAtIndex:index] titleLabel] text]];
        
        NSLog(@"Answer %d: %@", index, [answer objectAtIndex:index]);
        NSLog(@"Entered %d: %@", index, [[[inputTileArray objectAtIndex:index] titleLabel] text]);
        index++;
    }
    
    if(correctAns)
    {
        // correct!
        UIAlertView *alert = [[UIAlertView alloc]
                              initWithTitle: @"Correct!"
                              message: @"Those are the right notes."
                              delegate: nil
                              cancelButtonTitle:@"OK"
                              otherButtonTitles:nil];
        [alert show];
    }
    else
    {
        // incorrect
        UIAlertView *alert = [[UIAlertView alloc]
                              initWithTitle: @"Incorrect!"
                              message: @"Sorry, please try again."
                              delegate: nil
                              cancelButtonTitle:@"OK"
                              otherButtonTitles:nil];
        [alert show];
    }
}

- (IBAction)showAnswer:(id)sender {
    NSArray *answer = [chordDictionary getNotes:currentChordRoot chordType:currentChordType];
    
    if([[answerLabel text] isEqualToString:@""]) {
        answerLabel.text = @"Answer: ";
        for(int k = 0; k < [answer count]; k++) {
            answerLabel.text = [NSString stringWithFormat:@"%@ %@", [answerLabel text], [answer objectAtIndex:k]];
        
//            if(k + 1 < [answer count])
//                answerLabel.text = [NSString stringWithFormat:@"%@-", [answerLabel text]];
        }
    }
    else {
           answerLabel.text = @"";
    }
       
}

- (void)inputTileClicked:(UserInputButton *)sender
{
    userInputTileEnabled = sender.tag;
    
    for(int i = 0; i < [inputTileArray count]; i++)
    {
        [[inputTileArray objectAtIndex:i] setEnabled:YES];
    }
    
    switch (userInputTileEnabled) {
        case 0:
            [inputTile_0 setEnabled:NO];
            break;
        case 1:
            [inputTile_1 setEnabled:NO];
            break;
        case 2:
            [inputTile_2 setEnabled:NO];
            break;
        case 3:
            [inputTile_3 setEnabled:NO];
            break;
        case 4:
            [inputTile_4 setEnabled:NO];
            break;
        default:
            break;
    }
}

- (void)resetTiles
{
    for(int i = 0; i < [inputTileArray count]; i++)
    {
        [[inputTileArray objectAtIndex:i] removeFromSuperview];
        [[inputTileArray objectAtIndex:i] setTitle:@"" forState:UIControlStateNormal];
        [[inputTileArray objectAtIndex:i] setEnabled:YES];
        [[inputTileArray objectAtIndex:i] setNeedsDisplay];
    }
    
    // reset userInputTileEnabled to the leftmost
    userInputTileEnabled = 0;
}

@end
