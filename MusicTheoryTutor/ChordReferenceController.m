//
//  ChordReferenceController.m
//  MusicTheoryTutor
//
//  Created by Steven Lester on 12/2/12.
//  Copyright (c) 2012 Steven Lester. All rights reserved.
//

#import "ChordReferenceController.h"
#import "BackEndDictionary.h"

@interface ChordReferenceController ()

@end

@implementation ChordReferenceController


@synthesize buttonA, buttonB, buttonC, buttonD, buttonE,buttonF, buttonG, buttonsharp, buttonflat, buttonSubmit, tableviewarray, root, name, notes, chordName, intervals, signature;

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
    [tableviewarray objectAtIndex:indexPath.row];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)buttonClicked:(id)sender {
    UIButton *b = (UIButton *)sender;
    
    NSString *r,*n, *temp;
    
    //gotta get the text of the current root and set the first char if it's a letter and the second if it's a #/b
    
    switch (b.tag) {
        case 1:
            temp = [NSMutableString stringWithString:[[root text] substringWithRange:NSMakeRange(1, 1)]];
            r = [NSMutableString stringWithString:@"A"];
            r = [r stringByAppendingString:temp];
            [root setText:r];
            break;
            
        case 2:
            temp = [NSMutableString stringWithString:[[root text] substringWithRange:NSMakeRange(1, 1)]];
            r = [NSMutableString stringWithString:@"B"];
            r = [r stringByAppendingString:temp];
            [root setText:r];
            break;
        case 3:
            temp = [NSMutableString stringWithString:[[root text] substringWithRange:NSMakeRange(1, 1)]];
            r = [NSMutableString stringWithString:@"C"];
            r = [r stringByAppendingString:temp];
            [root setText:r];
            break;
        case 4:
            temp = [NSMutableString stringWithString:[[root text] substringWithRange:NSMakeRange(1, 1)]];
            r = [NSMutableString stringWithString:@"D"];
            r = [r stringByAppendingString:temp];
            [root setText:r];
            break;
        case 5:
            temp = [NSMutableString stringWithString:[[root text] substringWithRange:NSMakeRange(1, 1)]];
            r = [NSMutableString stringWithString:@"E"];
            r = [r stringByAppendingString:temp];
            [root setText:r];
            break;
        case 6:
            temp = [NSMutableString stringWithString:[[root text] substringWithRange:NSMakeRange(1, 1)]];
            r = [NSMutableString stringWithString:@"F"];
            r = [r stringByAppendingString:temp];
            [root setText:r];
            break;
        case 7:
            temp = [NSMutableString stringWithString:[[root text] substringWithRange:NSMakeRange(1, 1)]];
            r = [NSMutableString stringWithString:@"G"];
            r = [r stringByAppendingString:temp];
            [root setText:r];
            break;
        case 8:
            temp = [NSMutableString stringWithString:[[root text] substringWithRange:NSMakeRange(1, 1)]];
            r = [NSMutableString stringWithString:@"A"];
            r = [r stringByAppendingString:temp];
            [root setText:r];
            break;
        case 9:
            
            if([r substringWithRange:NSMakeRange(1, 1)] == @"♭") {
            }
            else if ([r substringWithRange:NSMakeRange(1, 1)] == @"♯") {
                    r = [NSMutableString stringWithString:[r substringWithRange:NSMakeRange(0, 0)]];
                    r = [r stringByAppendingString:@" "];
                    [root setText:r];
            }
            else {
                r = [NSMutableString stringWithString:[r substringWithRange:NSMakeRange(0, 0)]];
                r = [r stringByAppendingString:@"♭"];
                [root setText:r];
            }
            
            break;
        case 10:
            if([r substringWithRange:NSMakeRange(1, 1)] == @"♯") {
            }
            else if ([r substringWithRange:NSMakeRange(1, 1)] == @"♭") {
                r = [NSMutableString stringWithString:[r substringWithRange:NSMakeRange(0, 0)]];
                r = [r stringByAppendingString:@" "];
                [root setText:r];
            }
            else {
                r = [NSMutableString stringWithString:[r substringWithRange:NSMakeRange(0, 0)]];
                r = [r stringByAppendingString:@"♯"];
                [root setText:r];
            }
            break;
    }
    
    BackEndDictionary *D = [[BackEndDictionary alloc] init];
    temp = @"Name: ";
    temp = [temp stringByAppendingString:r];
    temp = [temp stringByAppendingString:@" "];
    temp = [temp stringByAppendingString:[D getName:n]];
    [chordName setText:temp];
    temp = @"Notes: ";
    temp = [temp stringByAppendingString:[D getNotes:r secondString:n]];
    
    
    NSLog(@"Button pressed: %@", [sender currentTitle]);
}


@end
