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


@synthesize buttonA, buttonB, buttonC, buttonD, buttonE,buttonF, buttonG, buttonsharp, buttonflat, buttonSubmit, tableviewarray, root, name, notes, chordName, intervals, signature;

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
    NSArray *temparray = [NSMutableArray arrayWithObjects:@"M", @"♭ 5", @"m", @"dim", @"aug",@"sus2", @"sus4", @"5", nil];
    
    tableviewarray = temparray;
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
    UITableViewCell * selectedCell = [tableviewarray objectAtIndex:indexPath.row];
    
    UILabel* cellText = selectedCell.textLabel;
    
    NSString * cellTexttext = [NSString stringWithString: cellText.text];
    
    //NSString * cellText = selectedCell.textLabel.text;
    /*
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
        ans = [ans stringByAppendingString:[answer objectAtIndex:i]];
    }
    [notes setText:ans];
    
    */
    
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
            temp = [NSMutableString stringWithString:[[root text] substringWithRange:NSMakeRange(1, 1)]];
            r = [NSMutableString stringWithString:@"A"];
            [r appendString:temp];
            [root setText:r];
            break;
            
        case 2:
            temp = [NSMutableString stringWithString:[[root text] substringWithRange:NSMakeRange(1, 1)]];
            r = [NSMutableString stringWithString:@"B"];
            [r appendString:temp];
            [root setText:r];
            break;
        case 3:
            temp = [NSMutableString stringWithString:[[root text] substringWithRange:NSMakeRange(1, 1)]];
            r = [NSMutableString stringWithString:@"C"];
            [r appendString:temp];
            [root setText:r];
            break;
        case 4:
            temp = [NSMutableString stringWithString:[[root text] substringWithRange:NSMakeRange(1, 1)]];
            r = [NSMutableString stringWithString:@"D"];
            [r appendString:temp];
            [root setText:r];
            break;
        case 5:
            temp = [NSMutableString stringWithString:[[root text] substringWithRange:NSMakeRange(1, 1)]];
            r = [NSMutableString stringWithString:@"E"];
            [r appendString:temp];
            [root setText:r];
            break;
        case 6:
            temp = [NSMutableString stringWithString:[[root text] substringWithRange:NSMakeRange(1, 1)]];
            r = [NSMutableString stringWithString:@"F"];
            [r appendString:temp];
            [root setText:r];
            break;
        case 7:
            temp = [NSMutableString stringWithString:[[root text] substringWithRange:NSMakeRange(1, 1)]];
            r = [NSMutableString stringWithString:@"G"];
            [r appendString:temp];
            [root setText:r];
            break;
        case 8:
            
            if([[r substringWithRange:NSMakeRange(1, 1)] isEqualToString:@"♭"]) {
            }
            else if ([[r substringWithRange:NSMakeRange(1, 1)] isEqualToString: @"♯"]) {
                    r = [NSMutableString stringWithString:[r substringWithRange:NSMakeRange(0, 1)]];
                    [r appendString:@" "];
                    [root setText:r];
            }
            else {
                r = [NSMutableString stringWithString:[r substringWithRange:NSMakeRange(0, 1)]];
                [r appendString:@"♭"];
                [root setText:r];
            }
            
            break;
        case 9:
            if([[r substringWithRange:NSMakeRange(1, 1)] isEqualToString: @"♯"]) {
            }
            else if ([[r substringWithRange:NSMakeRange(1, 1)] isEqualToString: @"♭"]) {
                r = [NSMutableString stringWithString:[r substringWithRange:NSMakeRange(0, 1)]];
                [r appendString:@" "];
                [root setText:r];
            }
            else {
                r = [NSMutableString stringWithString:[r substringWithRange:NSMakeRange(0, 1)]];
                [r appendString:@"♯"];
                [root setText:r];
            }
            break;
    }
    if(n == nil)
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
            ans = [ans stringByAppendingString:[answer objectAtIndex:i]];
        }
        [notes setText:ans];
    }
}


@end
