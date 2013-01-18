//
//  ChordQuizController.m
//  MusicTheoryTutor
//
//  Created by Steven Lester on 12/2/12.
//  Copyright (c) 2012 Steven Lester. All rights reserved.
//

#import "ChordQuizController.h"
#import "Rand.h"

@interface ChordQuizController ()

@end

@implementation ChordQuizController
@synthesize settingsButton, calloutView, triadButton, fourNoteChordButton, fiveNoteChordButton, quizNote;

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
    
    [self.navigationItem setTitle:@"Name the Note"];
    randomGenerator = [Rand new];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:YES];
    
    // set callout view
    calloutView.alpha = 0;
    [triadButton setHighlighted:YES];
    [triadButton setEnabled:NO];
    
}

- (void)getNewNote:(id)sender
{
    [quizNote setText:[randomGenerator getRandomNote]];
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
}

@end
