//
//  ChordQuizController.h
//  MusicTheoryTutor
//
//  Created by Steven Lester on 12/2/12.
//  Copyright (c) 2012 Steven Lester. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Rand.h"

@interface ChordQuizController : UIViewController {
    Rand *randomGenerator;
}

@property (strong, nonatomic) IBOutlet UIBarButtonItem *settingsButton;
@property (strong, nonatomic) IBOutlet UIView *calloutView;
@property (strong, nonatomic) IBOutlet UIButton *triadButton;
@property (strong, nonatomic) IBOutlet UIButton *fourNoteChordButton;
@property (strong, nonatomic) IBOutlet UIButton *fiveNoteChordButton;
@property (strong, nonatomic) IBOutlet UILabel *quizNote;

- (IBAction)getNewNote:(id)sender;
- (IBAction)settingsButtonClicked;
- (IBAction)changeMode:(id)sender;

@end
