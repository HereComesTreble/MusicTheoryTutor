//
//  ChordReferenceController.h
//  MusicTheoryTutor
//
//  Created by Steven Lester on 12/2/12.
//  Copyright (c) 2012 Steven Lester. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ChordReferenceController : UIViewController<UIPickerViewDelegate>

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



@end

NSMutableArray *pickerArray;
IBOutlet UIPickerView *pickerView;
IBOutlet UILabel *label;