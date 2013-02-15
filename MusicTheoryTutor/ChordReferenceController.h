//
//  ChordReferenceController.h
//  MusicTheoryTutor
//
//  Created by Steven Lester on 12/2/12.
//  Copyright (c) 2012 Steven Lester. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ChordReferenceController : UIViewController<UITableViewDelegate, UITableViewDataSource> {
    NSArray *tableviewarray;
}


@property (nonatomic, strong) IBOutlet UIButton *buttonA;
@property (nonatomic, strong) IBOutlet UIButton *buttonB;
@property (nonatomic, strong) IBOutlet UIButton *buttonC;
@property (nonatomic, strong) IBOutlet UIButton *buttonD;
@property (nonatomic, strong) IBOutlet UIButton *buttonE;
@property (nonatomic, strong) IBOutlet UIButton *buttonF;
@property (nonatomic, strong) IBOutlet UIButton *buttonG;
@property (nonatomic, strong) IBOutlet UIButton *buttonflat;
@property (nonatomic, strong) IBOutlet UIButton *buttonsharp;
@property (nonatomic, strong) IBOutlet UIButton *buttonSubmit;

@property (nonatomic, strong) IBOutlet UILabel *root;
@property (nonatomic, strong) IBOutlet UILabel *name;
@property (nonatomic, strong) IBOutlet UILabel *notes;
@property (nonatomic, strong) IBOutlet UILabel *chordName;
@property (nonatomic, strong) IBOutlet UILabel *signature;
@property (nonatomic, strong) IBOutlet UILabel *intervals;


@property (nonatomic, retain) NSArray *tableviewarray;



@end