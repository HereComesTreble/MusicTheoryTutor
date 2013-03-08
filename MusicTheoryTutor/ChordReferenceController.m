//
//  ChordReferenceController.m
//  MusicTheoryTutor
//
//  Created by Steven Lester on 12/2/12.
//  Copyright (c) 2012 Steven Lester. All rights reserved.
//

#import "ChordReferenceController.h"
#import "ChordDictionary.h"

@interface ChordReferenceController ()

@end

@implementation ChordReferenceController


@synthesize buttonA, buttonB, buttonC, buttonD, buttonE,buttonF, buttonG, buttonsharp, buttonflat, buttonSubmit, tableviewarray, root, name, notes, chordName, intervals, signature, displayedTableView;

NSMutableString *n = nil;
NSMutableString *r = nil;

ChordDictionary * chordDictionary;

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
	// Do any additional setup after loading the view.
    tableviewarray = [NSArray arrayWithObjects:
                      // 3 note chords
                      @"M", @"♭5", @"m", @"dim", @"aug",@"sus2", @"sus4", @"5",
                      //4 note chords
                      @"M7", @"M7sus2", @"M7sus4", @"M7♯5", @"M7♭5", @"6", @"♭6", @"add4", @"add9", @"7", @"7sus2", @"7sus4", @"7♯5", @"7♭5", @"m7", @"m/M7", @"madd4", @"madd9", @"m♭6", @"m6", @"m7♭5", @"dim7",
                      // 5 note chords
                      @"6add9", @"m6add9", @"9", @"9♭5", @"9♯5", @"m9", @"m9♭5", @"M9", @"M9sus4", @"M7♭9", @"7add6", @"m/M9", @"m/M♭9", @"7♯9", @"7♭5♯9", @"7♭9", @"m7♭9", @"m7♯9", nil];
        
    n = [NSMutableString stringWithString:@" "];
    r = [NSMutableString stringWithString:@"A"];
        
    self.displayedTableView.layer.borderWidth = 1;
    self.displayedTableView.layer.borderColor = [[UIColor lightGrayColor] CGColor];
}

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
    NSString * cellText = [tableviewarray objectAtIndex:indexPath.row];
    
    NSMutableString * temp;
    
    n = [NSMutableString stringWithString:cellText];
    
    if(chordDictionary == nil)
        chordDictionary = [ChordDictionary new];
    temp = [NSMutableString stringWithString:@"Name: "];
    [temp appendString:r];
    [temp appendString:@" "];
    [temp appendString:[chordDictionary getName:n]];
    [chordName setText:temp];
    temp = [NSMutableString stringWithString:@"Notes: "];
    NSArray *answer = [chordDictionary getNotes:r chordType:n];
    NSString * ans = @"";
    for(int i=0; i<[answer count]; i++) {
        if(i != ([answer count] -1)){
            ans = [ans stringByAppendingString:[answer objectAtIndex:i]];
            ans = [ans stringByAppendingString:@"-"];
        }
        else ans = [ans stringByAppendingString:[answer objectAtIndex:i]];
    }
    [notes setText:ans];
    
    NSMutableString * tempsig = [NSMutableString stringWithString:@""];
    NSMutableString * tempint = [NSMutableString stringWithString:@""];
    if ([chordDictionary getNum:n] == 3) {
        [tempsig appendString:@"1. Root\n2. "];
        [tempsig appendString:[chordDictionary getIntervalTwoStr:n]];
        [tempsig appendString:@"\n3. "];
        [tempsig appendString:[chordDictionary getIntervalThreeStr:n]];
        
        [tempint appendString:@"0, "];
        [tempint appendString:[NSString stringWithFormat:@"%i",[chordDictionary getIntervalTwoInt:n]]];
        [tempint appendString:@", "];
        [tempint appendString:[NSString stringWithFormat:@"%i",[chordDictionary getIntervalThreeInt:n]]];
        
        [signature setText:tempsig];
        [intervals setText:tempint];
    }
    else if ([chordDictionary getNum:n] == 4) {
        [tempsig appendString:@"1. Root\n2. "];
        [tempsig appendString:[chordDictionary getIntervalTwoStr:n]];
        [tempsig appendString:@"\n3. "];
        [tempsig appendString:[chordDictionary getIntervalThreeStr:n]];
        [tempsig appendString:@"\n4. "];
        [tempsig appendString:[chordDictionary getIntervalFourStr:n]];
        
        [tempint appendString:@"0, "];
        [tempint appendString:[NSString stringWithFormat:@"%i",[chordDictionary getIntervalTwoInt:n]]];
        [tempint appendString:@", "];
        [tempint appendString:[NSString stringWithFormat:@"%i",[chordDictionary getIntervalThreeInt:n]]];
        [tempint appendString:@", "];
        [tempint appendString:[NSString stringWithFormat:@"%i",[chordDictionary getIntervalFourInt:n]]];
        
        [signature setText:tempsig];
        [intervals setText:tempint];
    }
    else {
        [tempsig appendString:@"1. Root\n2. "];
        [tempsig appendString:[chordDictionary getIntervalTwoStr:n]];
        [tempsig appendString:@"\n3. "];
        [tempsig appendString:[chordDictionary getIntervalThreeStr:n]];
        [tempsig appendString:@"\n4. "];
        [tempsig appendString:[chordDictionary getIntervalFourStr:n]];
        [tempsig appendString:@"\n5. "];
        [tempsig appendString:[chordDictionary getIntervalFiveStr:n]];
        
        [tempint appendString:@"0, "];
        [tempint appendString:[NSString stringWithFormat:@"%i",[chordDictionary getIntervalTwoInt:n]]];
        [tempint appendString:@", "];
        [tempint appendString:[NSString stringWithFormat:@"%i",[chordDictionary getIntervalThreeInt:n]]];
        [tempint appendString:@", "];
        [tempint appendString:[NSString stringWithFormat:@"%i",[chordDictionary getIntervalFourInt:n]]];
        [tempint appendString:@", "];
        [tempint appendString:[NSString stringWithFormat:@"%i",[chordDictionary getIntervalFiveInt:n]]];
        
        [signature setText:tempsig];
        [intervals setText:tempint];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




- (IBAction)buttonClicked:(id)sender {
    UIButton *b = (UIButton *)sender;
        
    NSMutableString *temp;
    
    //gotta get the text of the current root and set the first char if it's a letter and the second if it's a #/b
    
    switch (b.tag) {
        case 1:
            if([[root text] length] < 2) {
                temp = [NSMutableString stringWithString:@""];
            }
            else {
                temp = [NSMutableString stringWithString:[[root text] substringWithRange:NSMakeRange(1, 1)]];
            }
            
            r = [NSMutableString stringWithString:@"A"];
            [r appendString:temp];
            [root setText:r];
            break;
            
        case 2:
            if([[root text] length] < 2) {
                temp = [NSMutableString stringWithString:@""];
            }
            else {
                temp = [NSMutableString stringWithString:[[root text] substringWithRange:NSMakeRange(1, 1)]];
            }
            r = [NSMutableString stringWithString:@"B"];
            [r appendString:temp];
            [root setText:r];
            break;
        case 3:
            if([[root text] length] < 2) {
                temp = [NSMutableString stringWithString:@""];
            }
            else {
                temp = [NSMutableString stringWithString:[[root text] substringWithRange:NSMakeRange(1, 1)]];
            }
            r = [NSMutableString stringWithString:@"C"];
            [r appendString:temp];
            [root setText:r];
            break;
        case 4:
            if([[root text] length] < 2) {
                temp = [NSMutableString stringWithString:@""];
            }
            else {
                temp = [NSMutableString stringWithString:[[root text] substringWithRange:NSMakeRange(1, 1)]];
            }
            r = [NSMutableString stringWithString:@"D"];
            [r appendString:temp];
            [root setText:r];
            break;
        case 5:
            if([[root text] length] < 2) {
                temp = [NSMutableString stringWithString:@""];
            }
            else {
                temp = [NSMutableString stringWithString:[[root text] substringWithRange:NSMakeRange(1, 1)]];
            }
            r = [NSMutableString stringWithString:@"E"];
            [r appendString:temp];
            [root setText:r];
            break;
        case 6:
            if([[root text] length] < 2) {
                temp = [NSMutableString stringWithString:@""];
            }
            else {
                temp = [NSMutableString stringWithString:[[root text] substringWithRange:NSMakeRange(1, 1)]];
            }
            r = [NSMutableString stringWithString:@"F"];
            [r appendString:temp];
            [root setText:r];
            break;
        case 7:
            if([[root text] length] < 2) {
                temp = [NSMutableString stringWithString:@""];
            }
            else {
                temp = [NSMutableString stringWithString:[[root text] substringWithRange:NSMakeRange(1, 1)]];
            }
            r = [NSMutableString stringWithString:@"G"];
            [r appendString:temp];
            [root setText:r];
            break;
        case 8:
            if([r length]<2) {
                r = [NSMutableString stringWithString:[r substringWithRange:NSMakeRange(0, 1)]];
                [r appendString:@"♭"];
                [root setText:r];
            } else if([[r substringWithRange:NSMakeRange(1, 1)] isEqualToString:@"♭"]) {
                
            }
            else if ([[r substringWithRange:NSMakeRange(1, 1)] isEqualToString: @"♯"]) {
                    r = [NSMutableString stringWithString:[r substringWithRange:NSMakeRange(0, 1)]];
                    //[r appendString:@" "];
                    [root setText:r];
            }
            break;
        case 9:
            if([r length]<2) {
                r = [NSMutableString stringWithString:[r substringWithRange:NSMakeRange(0, 1)]];
                [r appendString:@"♯"];
                [root setText:r];
            } else if([[r substringWithRange:NSMakeRange(1, 1)] isEqualToString: @"♯"]) {
                
            }
            else if ([[r substringWithRange:NSMakeRange(1, 1)] isEqualToString: @"♭"]) {
                r = [NSMutableString stringWithString:[r substringWithRange:NSMakeRange(0, 1)]];
                //[r appendString:@" "];
                [root setText:r];
            }
            break;
    }
    if([n isEqualToString:@" "])
    {
        return;
    }
    else {
        if(chordDictionary == nil)
            chordDictionary = [ChordDictionary new];
        NSLog(@"Button pressed: %@", [sender currentTitle]);
        temp = [NSMutableString stringWithString:@"Name: "];
        [temp appendString:r];
        [temp appendString:@" "];
        [temp appendString:[chordDictionary getName:n]];
        [chordName setText:temp];
        NSLog(@"Button pressed: %@", [sender currentTitle]);
        temp = [NSMutableString stringWithString:@"Notes: "];
        NSArray *answer = [chordDictionary getNotes:r chordType:n];
        NSString * ans = @"";
        for(int i=0; i<[answer count]; i++) {
            if(i != ([answer count] -1)){
                ans = [ans stringByAppendingString:[answer objectAtIndex:i]];
                ans = [ans stringByAppendingString:@"-"];
            }
            else ans = [ans stringByAppendingString:[answer objectAtIndex:i]];
        }
        [notes setText:ans];
        
        NSMutableString * tempsig = [NSMutableString stringWithString:@""];
        NSMutableString * tempint = [NSMutableString stringWithString:@""];
        if ([chordDictionary getNum:n] == 3) {
            [tempsig appendString:@"1. Root\n2. "];
            [tempsig appendString:[chordDictionary getIntervalTwoStr:n]];
            [tempsig appendString:@"\n3. "];
            [tempsig appendString:[chordDictionary getIntervalThreeStr:n]];
            
            [tempint appendString:@"0, "];
            [tempint appendString:[NSString stringWithFormat:@"%i",[chordDictionary getIntervalTwoInt:n]]];
            [tempint appendString:@", "];
            [tempint appendString:[NSString stringWithFormat:@"%i",[chordDictionary getIntervalThreeInt:n]]];
            
            [signature setText:tempsig];
            [intervals setText:tempint];
        }
        else if ([chordDictionary getNum:n] == 4) {
            [tempsig appendString:@"1. Root\n2. "];
            [tempsig appendString:[chordDictionary getIntervalTwoStr:n]];
            [tempsig appendString:@"\n3. "];
            [tempsig appendString:[chordDictionary getIntervalThreeStr:n]];
            [tempsig appendString:@"\n4. "];
            [tempsig appendString:[chordDictionary getIntervalFourStr:n]];
            
            [tempint appendString:@"0, "];
            [tempint appendString:[NSString stringWithFormat:@"%i",[chordDictionary getIntervalTwoInt:n]]];
            [tempint appendString:@", "];
            [tempint appendString:[NSString stringWithFormat:@"%i",[chordDictionary getIntervalThreeInt:n]]];
            [tempint appendString:@", "];
            [tempint appendString:[NSString stringWithFormat:@"%i",[chordDictionary getIntervalFourInt:n]]];
            
            [signature setText:tempsig];
            [intervals setText:tempint];
        }
        else {
            //tempsig = [NSMutableString stringWithString:"@%@%@%@%", @"1. Root\n2. ", ]
            [tempsig appendString:@"1. Root\n2. "];
            [tempsig appendString:[chordDictionary getIntervalTwoStr:n]];
            [tempsig appendString:@"\n3. "];
            [tempsig appendString:[chordDictionary getIntervalThreeStr:n]];
            [tempsig appendString:@"\n4. "];
            [tempsig appendString:[chordDictionary getIntervalFourStr:n]];
            [tempsig appendString:@"\n5. "];
            [tempsig appendString:[chordDictionary getIntervalFiveStr:n]];
            
            [tempint appendString:@"0, "];
            [tempint appendString:[NSString stringWithFormat:@"%i",[chordDictionary getIntervalTwoInt:n]]];
            [tempint appendString:@", "];
            [tempint appendString:[NSString stringWithFormat:@"%i",[chordDictionary getIntervalThreeInt:n]]];
            [tempint appendString:@", "];
            [tempint appendString:[NSString stringWithFormat:@"%i",[chordDictionary getIntervalFourInt:n]]];
            [tempint appendString:@", "];
            [tempint appendString:[NSString stringWithFormat:@"%i",[chordDictionary getIntervalFiveInt:n]]];
            
            [signature setText:tempsig];
            [intervals setText:tempint];
        }
    }
}

@end
