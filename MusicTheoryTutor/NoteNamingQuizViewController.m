// TODO: Only show chord type for corresponding chord, i.e. 3, 4, or 5 note chords.
//
//  ChordNamingQuizViewController.m
//  MusicTheoryTutor
//
//  Created by Ryan Sowa on 1/19/13.
//  Copyright (c) 2013 Steven Lester. All rights reserved.
//

#import "NoteNamingQuizViewController.h"


@interface NoteNamingQuizViewController ()

@end

@implementation NoteNamingQuizViewController

@synthesize modeButton, calloutView, triadButton, fourNoteChordButton, fiveNoteChordButton, currentNoteLabel, inputTileArray, currentNote, TILE_Y, triadIsEnabled, fourNoteChordIsEnabled, fiveNoteChordIsEnabled, userInputTileEnabled, currentChordRoot, currentChordType, answerLabel;



- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.navigationItem setTitle:@"Note Naming Quiz"];
    
    // create tableview data
    tableviewarray = [NSArray arrayWithObjects:
                      // 3 note chords
                      @"M", @"♭5", @"m", @"dim", @"aug",@"sus2", @"sus4", @"5",
                      //4 note chords
                      @"M7", @"M7sus2", @"M7sus4", @"M7♯5", @"M7♭5", @"6", @"♭6", @"add4", @"add9", @"7", @"7sus2", @"7sus4", @"7♯5", @"7♭5", @"m7", @"m/M7", @"madd4", @"madd9", @"m♭6", @"m6", @"m7♭5", @"dim7",
                      // 5 note chords
                      @"6add9", @"m6add9", @"9", @"9♭5", @"9♯5", @"m9", @"m9♭5", @"M9", @"M9sus4", @"M7♭9", @"7add6", @"m/M9", @"m/M♭9", @"7♯9", @"7♭5♯9", @"7♭9", @"m7♭9", @"m7♯9", nil];
    
    TILE_Y = 80.0f;
    randomGenerator = [Rand new];
    chordDictionary = [ChordDictionary new];
    
    triadIsEnabled = YES;
    triadButton.highlighted = YES;
    fourNoteChordIsEnabled = NO;
    fiveNoteChordIsEnabled = NO;
    
    inputTile_0 = [[UserInputButton alloc] init];
    inputTile_1 = [[UserInputButton alloc] init];
    
    self.tableView.layer.borderWidth = 1;
    self.tableView.layer.borderColor = [[UIColor lightGrayColor] CGColor];
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
    // deselect table view cell, if any
    [self.tableView deselectRowAtIndexPath:[self.tableView indexPathForSelectedRow] animated:YES];
    
    currentChordRoot = [randomGenerator getRandomNote];
    
    currentChordType = [randomGenerator getRandomChordType:triadIsEnabled
                                                      four:fourNoteChordIsEnabled
                                                      five:fiveNoteChordIsEnabled];
    
    currentNote = [chordDictionary getNotes:currentChordRoot chordType:currentChordType];
    
    NSString *textForLabel = @"";
    for(int i = 0; i < [currentNote count]; i++)
    {
        textForLabel = [NSString stringWithFormat:@"%@%@", textForLabel, [currentNote objectAtIndex:i]];
        if (i != [currentNote count] - 1)
            textForLabel = [NSString stringWithFormat:@"%@%@", textForLabel, @" "];
    }
    [currentNoteLabel setText: textForLabel];
    [self setupInputTiles];
    
    
}

- (void)modeButtonClicked
{
    (modeButton.style == UIBarButtonItemStyleBordered) ? [modeButton setStyle:UIBarButtonItemStyleDone] : [modeButton setStyle:UIBarButtonItemStyleBordered];
    
    if (modeButton.style == UIBarButtonItemStyleDone)
    {
        [calloutView removeFromSuperview];
        [self.view addSubview:calloutView];
        [[UIApplication sharedApplication].keyWindow bringSubviewToFront:calloutView];
        
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
    
    // deselect table view cell, if any
    [self.tableView deselectRowAtIndexPath:[self.tableView indexPathForSelectedRow] animated:YES];
    
    float spacer = 5.0f;
    
    [inputTile_0 changePosition:28 y:TILE_Y];
    [inputTile_0 setFrame:CGRectMake([inputTile_0 m_x], TILE_Y, [inputTile_0 TILE_WIDTH] + 20.0f, [inputTile_0 TILE_HEIGHT])];
    
    [inputTile_1 changePosition:[inputTile_0 m_x] + [inputTile_0 TILE_WIDTH] + spacer + 20.0f y:TILE_Y];
    [inputTile_1 setFrame:CGRectMake([inputTile_1 m_x], TILE_Y, [inputTile_1 TILE_WIDTH] + 20.0f, [inputTile_1 TILE_HEIGHT])];
    
    
    inputTileArray = [[NSArray alloc] initWithObjects:inputTile_0, inputTile_1, nil];
    
    for (int i=0; i < [inputTileArray count]; i++)
    {
        if ([inputTileArray objectAtIndex:i] != nil)
            [self.view addSubview:[inputTileArray objectAtIndex:i]];
    }
    
    // enable/highlight both input tile
    [inputTile_0 setHighlighted:YES];
    [inputTile_0 setEnabled:NO];
    [inputTile_1 setHighlighted:YES];
    [inputTile_1 setEnabled:NO];
    
    // set tags for user input tiles
    [inputTile_0 setTag:0];
    [inputTile_1 setTag:1];
    
    // create action events for user input tiles
    [inputTile_0 addTarget:self action:@selector(inputTileClicked:) forControlEvents:UIControlEventTouchUpInside];
    [inputTile_1 addTarget:self action:@selector(inputTileClicked:) forControlEvents:UIControlEventTouchUpInside];
}

- (IBAction)handleUserInput:(UIButton *)sender
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
            // deselect table view cell, if any
            [self.tableView deselectRowAtIndexPath:[self.tableView indexPathForSelectedRow] animated:YES];
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
    
    correctAns = ([[[inputTile_0 titleLabel] text] isEqualToString:currentChordRoot]
                  && [[[inputTile_1 titleLabel] text] isEqualToString:currentChordType]) ? YES : NO;
    
    if(correctAns)
    {
        // correct!
        UIAlertView *alert = [[UIAlertView alloc]
                              initWithTitle: @"Correct!"
                              message: @"That is the right chord."
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

- (IBAction)showAnswerClicked:(id)sender {
    if([[answerLabel text] isEqualToString:@""])
        answerLabel.text = [NSString stringWithFormat:@"Answer: %@ %@", currentChordRoot, currentChordType];
    else
        answerLabel.text = @"";
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
    
    answerLabel.text = @"";
}

//
// TableView Delegate Methods
//

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [tableviewarray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"SimpleTableIdentifier"];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"SimpleTableIdentifier"];
        
    }
    
    cell.textLabel.text = [tableviewarray objectAtIndex:indexPath.row];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSString *textSelected = [tableviewarray objectAtIndex:indexPath.row];
    
    [inputTile_1 setTitle:textSelected forState:UIControlStateNormal];
    [inputTile_1 setNeedsDisplay];
    
//    NSString * cellText = [tableviewarray objectAtIndex:indexPath.row];
//    
//    NSMutableString * temp;
//
//    n = [NSMutableString stringWithString:cellText];
//    
//    if(chordDictionary == nil)
//        chordDictionary = [ChordDictionary new];
//    temp = [NSMutableString stringWithString:@"Name: "];
//    [temp appendString:r];
//    [temp appendString:@" "];
//    [temp appendString:[chordDictionary getName:n]];
//    [chordName setText:temp];
//    temp = [NSMutableString stringWithString:@"Notes: "];
//    NSArray *answer = [chordDictionary getNotes:r chordType:n];
//    NSString * ans = @"";
//    for(int i=0; i<[answer count]; i++) {
//        if(i != ([answer count] -1)){
//            ans = [ans stringByAppendingString:[answer objectAtIndex:i]];
//            ans = [ans stringByAppendingString:@"-"];
//        }
//        else ans = [ans stringByAppendingString:[answer objectAtIndex:i]];
//    }
//    [notes setText:ans];
//    
//    NSMutableString * tempsig = [NSMutableString stringWithString:@""];
//    NSMutableString * tempint = [NSMutableString stringWithString:@""];
//    if ([chordDictionary getNum:n] == 3) {
//        [tempsig appendString:@"1. Root\n2. "];
//        [tempsig appendString:[chordDictionary getIntervalTwoStr:n]];
//        [tempsig appendString:@"\n3. "];
//        [tempsig appendString:[chordDictionary getIntervalThreeStr:n]];
//        
//        [tempint appendString:@"0, "];
//        [tempint appendString:[NSString stringWithFormat:@"%i",[chordDictionary getIntervalTwoInt:n]]];
//        [tempint appendString:@", "];
//        [tempint appendString:[NSString stringWithFormat:@"%i",[chordDictionary getIntervalThreeInt:n]]];
//        
//        [signature setText:tempsig];
//        [intervals setText:tempint];
//    }
//    else if ([chordDictionary getNum:n] == 4) {
//        [tempsig appendString:@"1. Root\n2. "];
//        [tempsig appendString:[chordDictionary getIntervalTwoStr:n]];
//        [tempsig appendString:@"\n3. "];
//        [tempsig appendString:[chordDictionary getIntervalThreeStr:n]];
//        [tempsig appendString:@"\n4. "];
//        [tempsig appendString:[chordDictionary getIntervalFourStr:n]];
//        
//        [tempint appendString:@"0, "];
//        [tempint appendString:[NSString stringWithFormat:@"%i",[chordDictionary getIntervalTwoInt:n]]];
//        [tempint appendString:@", "];
//        [tempint appendString:[NSString stringWithFormat:@"%i",[chordDictionary getIntervalThreeInt:n]]];
//        [tempint appendString:@", "];
//        [tempint appendString:[NSString stringWithFormat:@"%i",[chordDictionary getIntervalFourInt:n]]];
//        
//        [signature setText:tempsig];
//        [intervals setText:tempint];
//    }
//    else {
//        [tempsig appendString:@"1. Root\n2. "];
//        [tempsig appendString:[chordDictionary getIntervalTwoStr:n]];
//        [tempsig appendString:@"\n3. "];
//        [tempsig appendString:[chordDictionary getIntervalThreeStr:n]];
//        [tempsig appendString:@"\n4. "];
//        [tempsig appendString:[chordDictionary getIntervalFourStr:n]];
//        [tempsig appendString:@"\n5. "];
//        [tempsig appendString:[chordDictionary getIntervalFiveStr:n]];
//        
//        [tempint appendString:@"0, "];
//        [tempint appendString:[NSString stringWithFormat:@"%i",[chordDictionary getIntervalTwoInt:n]]];
//        [tempint appendString:@", "];
//        [tempint appendString:[NSString stringWithFormat:@"%i",[chordDictionary getIntervalThreeInt:n]]];
//        [tempint appendString:@", "];
//        [tempint appendString:[NSString stringWithFormat:@"%i",[chordDictionary getIntervalFourInt:n]]];
//        [tempint appendString:@", "];
//        [tempint appendString:[NSString stringWithFormat:@"%i",[chordDictionary getIntervalFiveInt:n]]];
//        
//        [signature setText:tempsig];
//        [intervals setText:tempint];
//    }
}



@end