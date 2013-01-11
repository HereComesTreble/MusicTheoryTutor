//
//  ChordReferenceController.m
//  MusicTheoryTutor
//
//  Created by Steven Lester on 12/2/12.
//  Copyright (c) 2012 Steven Lester. All rights reserved.
//

#import "ChordReferenceController.h"

@interface ChordReferenceController ()

@end

@implementation ChordReferenceController


@synthesize buttonA, buttonB, buttonC, buttonD, buttonE,buttonF, buttonG, buttonsharp, buttonflat, buttonSubmit;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)openChordRefView
{
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    
    
    //NSArray *array = [NSArray arrayWithObjects:
    pickerArray = [[NSMutableArray alloc] init];
    
    [pickerArray addObject:@"Blue"];
    [pickerArray addObject:@"Red"];
    
    [pickerView selectRow:0 inComponent:0 animated:NO];
    //view loaded
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return [pickerArray count];
}

- (NSString *)tableView:(UITableView *)tableView     titleForHeaderInSection:(NSInteger)section {
    return [pickerArray objectAtIndex:section];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section     {
    return [pickerArray count];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)buttonClicked:(id)sender {
    UIButton *b = (UIButton *)sender;
    
    NSString *r,*n;
    
    
    switch (b.tag) {
        case 1:
            break;
        case 2:
            break;
        case 3:
            break;
        case 4:
            break;
        case 5:
            break;
        case 6:
            break;
        case 7:
            break;
        case 8:
            break;
        case 9:
            break;
        case 10:
            break;
            
        default:
            break;
    }
    
    
    NSLog(@"Button pressed: %@", [sender currentTitle]);
}


@end
