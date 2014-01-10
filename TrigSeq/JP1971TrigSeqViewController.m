//
//  JP1971TrigSeqViewController.m
//  TrigSeq
//
//  Created by Jameson Proctor on 12/30/13.
//  Copyright (c) 2013 Jameson Proctor. All rights reserved.
//

#import "JP1971TrigSeqViewController.h"

@interface JP1971TrigSeqViewController ()

@end

@implementation JP1971TrigSeqViewController

- (void)viewDidLoad
{
    //Set variables
    bpm = .125;
    led = 1;
    startStopBool = 0;
    step01Active = 0;
    step02Active = 0;
    step03Active = 0;
    step04Active = 0;
    step05Active = 0;
    step06Active = 0;
    step07Active = 0;
    step08Active = 0;
    step09Active = 0;
    step10Active = 0;
    step11Active = 0;
    step12Active = 0;
    step13Active = 0;
    step14Active = 0;
    step15Active = 0;
    step16Active = 0;
    step17Active = 0;
    step18Active = 0;
    step19Active = 0;
    step20Active = 0;
    step21Active = 0;
    step22Active = 0;
    step23Active = 0;
    step24Active = 0;
    step25Active = 0;
    step26Active = 0;
    step27Active = 0;
    step28Active = 0;
    step29Active = 0;
    step30Active = 0;
    step31Active = 0;
    step32Active = 0;
    step33Active = 0;
    step34Active = 0;
    step35Active = 0;
    step36Active = 0;
    step37Active = 0;
    step38Active = 0;
    step39Active = 0;
    step40Active = 0;
    step41Active = 0;
    step42Active = 0;
    step43Active = 0;
    step44Active = 0;
    step45Active = 0;
    step46Active = 0;
    step47Active = 0;
    step48Active = 0;
    step49Active = 0;
    step50Active = 0;
    step51Active = 0;
    step52Active = 0;
    step53Active = 0;
    step54Active = 0;
    step55Active = 0;
    step56Active = 0;
    step57Active = 0;
    step58Active = 0;
    step59Active = 0;
    step60Active = 0;
    step61Active = 0;
    step62Active = 0;
    step63Active = 0;
    step64Active = 0;
    
    //Initialize Socket
    socket = [[GCDAsyncSocket alloc] initWithDelegate:self delegateQueue:dispatch_get_main_queue()];
    [socket connectToHost:@"192.168.19.71" onPort:2000 error:nil];
    
    // Set background color
    [self.view setBackgroundColor:[UIColor grayColor]];
    
    //Draw start/stop button
    startStop = [UIButton buttonWithType:UIButtonTypeCustom];
    startStop.frame = CGRectMake(27.5, 260, 40, 20);
    startStop.layer.cornerRadius = 2.5;
    startStop.layer.borderWidth = 0.5;
    [startStop setBackgroundColor:[UIColor greenColor]];
    [startStop addTarget:self action:@selector(startStopButtonPressed) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:startStop];
    
    //Draw start/stop button label
    UILabel *startStopLabel = [ [UILabel alloc ] initWithFrame:CGRectMake(17.5, 280, 60, 20)];
    startStopLabel.textAlignment =  NSTextAlignmentCenter;
    startStopLabel.textColor = [UIColor blackColor];
    startStopLabel.font = [UIFont fontWithName:@"Courier" size:(9.0)];
    [self.view addSubview:startStopLabel];
    startStopLabel.text = [NSString stringWithFormat: @"Start/Stop"];
    
    //Draw text field
    bpmField= [[UITextField alloc] initWithFrame:CGRectMake( 412.5, 260, 50, 20 )];
    bpmField.borderStyle = UITextBorderStyleRoundedRect;
    bpmField.font = [UIFont systemFontOfSize:15];
    bpmField.placeholder = @"120";
    bpmField.autocorrectionType = UITextAutocorrectionTypeNo;
    bpmField.keyboardType = UIKeyboardTypeNumbersAndPunctuation;
    bpmField.returnKeyType = UIReturnKeyDone;
    bpmField.clearButtonMode = UITextFieldViewModeWhileEditing;
    bpmField.clearsOnBeginEditing = true;
    bpmField.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
    bpmField.delegate = self;
    [self.view addSubview:bpmField];
    
    //Draw BPM input field label
    UILabel *bpmLabel = [ [UILabel alloc ] initWithFrame:CGRectMake(412.5, 280, 50, 20)];
    bpmLabel.textAlignment =  NSTextAlignmentCenter;
    bpmLabel.textColor = [UIColor blackColor];
    bpmLabel.font = [UIFont fontWithName:@"Courier" size:(9.0)];
    [self.view addSubview:bpmLabel];
    bpmLabel.text = [NSString stringWithFormat: @"BPM"];
    
    //Draw step buttons
    step01=[UIButton buttonWithType:UIButtonTypeCustom];
    step01.frame = CGRectMake(27.5, 40, 20, 20);
    step01.layer.cornerRadius = 2.5;
    step01.layer.borderWidth = 0.5;
    [step01 setBackgroundColor:[UIColor lightGrayColor]];
    //For future reference
    //[step01 setBackgroundColor:[UIColor colorWithRed:(255/255.0) green:(180/255.0) blue:(200/255.0) alpha:1]];
    [step01 addTarget:self action:@selector(step01ButtonPressed) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:step01];
    
    step02 = [UIButton buttonWithType:UIButtonTypeCustom];
    step02.frame = CGRectMake(52.5, 40, 20, 20);
    step02.layer.cornerRadius = 2.5;
    step02.layer.borderWidth = 0.5;
    [step02 setBackgroundColor:[UIColor lightGrayColor]];
    [step02 addTarget:self action:@selector(step02ButtonPressed) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:step02];
    
    step03 = [UIButton buttonWithType:UIButtonTypeCustom];
    step03.frame = CGRectMake(77.5, 40, 20, 20);
    step03.layer.cornerRadius = 2.5;
    step03.layer.borderWidth = 0.5;
    [step03 setBackgroundColor:[UIColor lightGrayColor]];
    [step03 addTarget:self action:@selector(step03ButtonPressed) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:step03];
    
    step04 = [UIButton buttonWithType:UIButtonTypeCustom];
    step04.frame = CGRectMake(102.5, 40, 20, 20);
    step04.layer.cornerRadius = 2.5;
    step04.layer.borderWidth = 0.5;
    [step04 setBackgroundColor:[UIColor lightGrayColor]];
    [step04 addTarget:self action:@selector(step04ButtonPressed) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:step04];
    
    step05=[UIButton buttonWithType:UIButtonTypeCustom];
    step05.frame = CGRectMake(137.5, 40, 20, 20);
    step05.layer.cornerRadius = 2.5;
    step05.layer.borderWidth = 0.5;
    [step05 setBackgroundColor:[UIColor lightGrayColor]];
    [step05 addTarget:self action:@selector(step05ButtonPressed) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:step05];
    
    step06 = [UIButton buttonWithType:UIButtonTypeCustom];
    step06.frame = CGRectMake(162.5, 40, 20, 20);
    step06.layer.cornerRadius = 2.5;
    step06.layer.borderWidth = 0.5;
    [step06 setBackgroundColor:[UIColor lightGrayColor]];
    [step06 addTarget:self action:@selector(step06ButtonPressed) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:step06];
    
    step07 = [UIButton buttonWithType:UIButtonTypeCustom];
    step07.frame = CGRectMake(187.5, 40, 20, 20);
    step07.layer.cornerRadius = 2.5;
    step07.layer.borderWidth = 0.5;
    [step07 setBackgroundColor:[UIColor lightGrayColor]];
    [step07 addTarget:self action:@selector(step07ButtonPressed) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:step07];
    
    step08 = [UIButton buttonWithType:UIButtonTypeCustom];
    step08.frame = CGRectMake(212.5, 40, 20, 20);
    step08.layer.cornerRadius = 2.5;
    step08.layer.borderWidth = 0.5;
    [step08 setBackgroundColor:[UIColor lightGrayColor]];
    [step08 addTarget:self action:@selector(step08ButtonPressed) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:step08];
    
    step09=[UIButton buttonWithType:UIButtonTypeCustom];
    step09.frame = CGRectMake(247.5, 40, 20, 20);
    step09.layer.cornerRadius = 2.5;
    step09.layer.borderWidth = 0.5;
    [step09 setBackgroundColor:[UIColor lightGrayColor]];
    [step09 addTarget:self action:@selector(step09ButtonPressed) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:step09];
    
    step10 = [UIButton buttonWithType:UIButtonTypeCustom];
    step10.frame = CGRectMake(272.5, 40, 20, 20);
    step10.layer.cornerRadius = 2.5;
    step10.layer.borderWidth = 0.5;
    [step10 setBackgroundColor:[UIColor lightGrayColor]];
    [step10 addTarget:self action:@selector(step10ButtonPressed) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:step10];
    
    step11 = [UIButton buttonWithType:UIButtonTypeCustom];
    step11.frame = CGRectMake(297.5, 40, 20, 20);
    step11.layer.cornerRadius = 2.5;
    step11.layer.borderWidth = 0.5;
    [step11 setBackgroundColor:[UIColor lightGrayColor]];
    [step11 addTarget:self action:@selector(step11ButtonPressed) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:step11];
    
    step12 = [UIButton buttonWithType:UIButtonTypeCustom];
    step12.frame = CGRectMake(322.5, 40, 20, 20);
    step12.layer.cornerRadius = 2.5;
    step12.layer.borderWidth = 0.5;
    [step12 setBackgroundColor:[UIColor lightGrayColor]];
    [step12 addTarget:self action:@selector(step12ButtonPressed) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:step12];
    
    step13=[UIButton buttonWithType:UIButtonTypeCustom];
    step13.frame = CGRectMake(357.5, 40, 20, 20);
    step13.layer.cornerRadius = 2.5;
    step13.layer.borderWidth = 0.5;
    [step13 setBackgroundColor:[UIColor lightGrayColor]];
    [step13 addTarget:self action:@selector(step13ButtonPressed) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:step13];
    
    step14 = [UIButton buttonWithType:UIButtonTypeCustom];
    step14.frame = CGRectMake(382.5, 40, 20, 20);
    step14.layer.cornerRadius = 2.5;
    step14.layer.borderWidth = 0.5;
    [step14 setBackgroundColor:[UIColor lightGrayColor]];
    [step14 addTarget:self action:@selector(step14ButtonPressed) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:step14];
    
    step15 = [UIButton buttonWithType:UIButtonTypeCustom];
    step15.frame = CGRectMake(407.5, 40, 20, 20);
    step15.layer.cornerRadius = 2.5;
    step15.layer.borderWidth = 0.5;
    [step15 setBackgroundColor:[UIColor lightGrayColor]];
    [step15 addTarget:self action:@selector(step15ButtonPressed) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:step15];
    
    step16 = [UIButton buttonWithType:UIButtonTypeCustom];
    step16.frame = CGRectMake(432.5, 40, 20, 20);
    step16.layer.cornerRadius = 2.5;
    step16.layer.borderWidth = 0.5;
    [step16 setBackgroundColor:[UIColor lightGrayColor]];
    [step16 addTarget:self action:@selector(step16ButtonPressed) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:step16];
    
    step17=[UIButton buttonWithType:UIButtonTypeCustom];
    step17.frame = CGRectMake(27.5, 75, 20, 20);
    step17.layer.cornerRadius = 2.5;
    step17.layer.borderWidth = 0.5;
    [step17 setBackgroundColor:[UIColor lightGrayColor]];
    [step17 addTarget:self action:@selector(step17ButtonPressed) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:step17];
    
    step18 = [UIButton buttonWithType:UIButtonTypeCustom];
    step18.frame = CGRectMake(52.5, 75, 20, 20);
    step18.layer.cornerRadius = 2.5;
    step18.layer.borderWidth = 0.5;
    [step18 setBackgroundColor:[UIColor lightGrayColor]];
    [step18 addTarget:self action:@selector(step18ButtonPressed) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:step18];
    
    step19 = [UIButton buttonWithType:UIButtonTypeCustom];
    step19.frame = CGRectMake(77.5, 75, 20, 20);
    step19.layer.cornerRadius = 2.5;
    step19.layer.borderWidth = 0.5;
    [step19 setBackgroundColor:[UIColor lightGrayColor]];
    [step19 addTarget:self action:@selector(step19ButtonPressed) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:step19];
    
    step20 = [UIButton buttonWithType:UIButtonTypeCustom];
    step20.frame = CGRectMake(102.5, 75, 20, 20);
    step20.layer.cornerRadius = 2.5;
    step20.layer.borderWidth = 0.5;
    [step20 setBackgroundColor:[UIColor lightGrayColor]];
    [step20 addTarget:self action:@selector(step20ButtonPressed) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:step20];
    
    step21=[UIButton buttonWithType:UIButtonTypeCustom];
    step21.frame = CGRectMake(137.5, 75, 20, 20);
    step21.layer.cornerRadius = 2.5;
    step21.layer.borderWidth = 0.5;
    [step21 setBackgroundColor:[UIColor lightGrayColor]];
    [step21 addTarget:self action:@selector(step21ButtonPressed) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:step21];
    
    step22 = [UIButton buttonWithType:UIButtonTypeCustom];
    step22.frame = CGRectMake(162.5, 75, 20, 20);
    step22.layer.cornerRadius = 2.5;
    step22.layer.borderWidth = 0.5;
    [step22 setBackgroundColor:[UIColor lightGrayColor]];
    [step22 addTarget:self action:@selector(step22ButtonPressed) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:step22];
    
    step23 = [UIButton buttonWithType:UIButtonTypeCustom];
    step23.frame = CGRectMake(187.5, 75, 20, 20);
    step23.layer.cornerRadius = 2.5;
    step23.layer.borderWidth = 0.5;
    [step23 setBackgroundColor:[UIColor lightGrayColor]];
    [step23 addTarget:self action:@selector(step23ButtonPressed) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:step23];
    
    step24 = [UIButton buttonWithType:UIButtonTypeCustom];
    step24.frame = CGRectMake(212.5, 75, 20, 20);
    step24.layer.cornerRadius = 2.5;
    step24.layer.borderWidth = 0.5;
    [step24 setBackgroundColor:[UIColor lightGrayColor]];
    [step24 addTarget:self action:@selector(step24ButtonPressed) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:step24];
    
    step25=[UIButton buttonWithType:UIButtonTypeCustom];
    step25.frame = CGRectMake(247.5, 75, 20, 20);
    step25.layer.cornerRadius = 2.5;
    step25.layer.borderWidth = 0.5;
    [step25 setBackgroundColor:[UIColor lightGrayColor]];
    [step25 addTarget:self action:@selector(step25ButtonPressed) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:step25];
    
    step26 = [UIButton buttonWithType:UIButtonTypeCustom];
    step26.frame = CGRectMake(272.5, 75, 20, 20);
    step26.layer.cornerRadius = 2.5;
    step26.layer.borderWidth = 0.5;
    [step26 setBackgroundColor:[UIColor lightGrayColor]];
    [step26 addTarget:self action:@selector(step26ButtonPressed) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:step26];
    
    step27 = [UIButton buttonWithType:UIButtonTypeCustom];
    step27.frame = CGRectMake(297.5, 75, 20, 20);
    step27.layer.cornerRadius = 2.5;
    step27.layer.borderWidth = 0.5;
    [step27 setBackgroundColor:[UIColor lightGrayColor]];
    [step27 addTarget:self action:@selector(step27ButtonPressed) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:step27];
    
    step28 = [UIButton buttonWithType:UIButtonTypeCustom];
    step28.frame = CGRectMake(322.5, 75, 20, 20);
    step28.layer.cornerRadius = 2.5;
    step28.layer.borderWidth = 0.5;
    [step28 setBackgroundColor:[UIColor lightGrayColor]];
    [step28 addTarget:self action:@selector(step28ButtonPressed) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:step28];
    
    step29=[UIButton buttonWithType:UIButtonTypeCustom];
    step29.frame = CGRectMake(357.5, 75, 20, 20);
    step29.layer.cornerRadius = 2.5;
    step29.layer.borderWidth = 0.5;
    [step29 setBackgroundColor:[UIColor lightGrayColor]];
    [step29 addTarget:self action:@selector(step29ButtonPressed) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:step29];
    
    step30 = [UIButton buttonWithType:UIButtonTypeCustom];
    step30.frame = CGRectMake(382.5, 75, 20, 20);
    step30.layer.cornerRadius = 2.5;
    step30.layer.borderWidth = 0.5;
    [step30 setBackgroundColor:[UIColor lightGrayColor]];
    [step30 addTarget:self action:@selector(step30ButtonPressed) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:step30];
    
    step31 = [UIButton buttonWithType:UIButtonTypeCustom];
    step31.frame = CGRectMake(407.5, 75, 20, 20);
    step31.layer.cornerRadius = 2.5;
    step31.layer.borderWidth = 0.5;
    [step31 setBackgroundColor:[UIColor lightGrayColor]];
    [step31 addTarget:self action:@selector(step31ButtonPressed) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:step31];
    
    step32 = [UIButton buttonWithType:UIButtonTypeCustom];
    step32.frame = CGRectMake(432.5, 75, 20, 20);
    step32.layer.cornerRadius = 2.5;
    step32.layer.borderWidth = 0.5;
    [step32 setBackgroundColor:[UIColor lightGrayColor]];
    [step32 addTarget:self action:@selector(step32ButtonPressed) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:step32];
    
    step33=[UIButton buttonWithType:UIButtonTypeCustom];
    step33.frame = CGRectMake(27.5, 110, 20, 20);
    step33.layer.cornerRadius = 2.5;
    step33.layer.borderWidth = 0.5;
    [step33 setBackgroundColor:[UIColor lightGrayColor]];
    [step33 addTarget:self action:@selector(step33ButtonPressed) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:step33];
    
    step34 = [UIButton buttonWithType:UIButtonTypeCustom];
    step34.frame = CGRectMake(52.5, 110, 20, 20);
    step34.layer.cornerRadius = 2.5;
    step34.layer.borderWidth = 0.5;
    [step34 setBackgroundColor:[UIColor lightGrayColor]];
    [step34 addTarget:self action:@selector(step34ButtonPressed) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:step34];
    
    step35 = [UIButton buttonWithType:UIButtonTypeCustom];
    step35.frame = CGRectMake(77.5, 110, 20, 20);
    step35.layer.cornerRadius = 2.5;
    step35.layer.borderWidth = 0.5;
    [step35 setBackgroundColor:[UIColor lightGrayColor]];
    [step35 addTarget:self action:@selector(step35ButtonPressed) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:step35];
    
    step36 = [UIButton buttonWithType:UIButtonTypeCustom];
    step36.frame = CGRectMake(102.5, 110, 20, 20);
    step36.layer.cornerRadius = 2.5;
    step36.layer.borderWidth = 0.5;
    [step36 setBackgroundColor:[UIColor lightGrayColor]];
    [step36 addTarget:self action:@selector(step36ButtonPressed) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:step36];
    
    step37=[UIButton buttonWithType:UIButtonTypeCustom];
    step37.frame = CGRectMake(137.5, 110, 20, 20);
    step37.layer.cornerRadius = 2.5;
    step37.layer.borderWidth = 0.5;
    [step37 setBackgroundColor:[UIColor lightGrayColor]];
    [step37 addTarget:self action:@selector(step37ButtonPressed) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:step37];
    
    step38 = [UIButton buttonWithType:UIButtonTypeCustom];
    step38.frame = CGRectMake(162.5, 110, 20, 20);
    step38.layer.cornerRadius = 2.5;
    step38.layer.borderWidth = 0.5;
    [step38 setBackgroundColor:[UIColor lightGrayColor]];
    [step38 addTarget:self action:@selector(step38ButtonPressed) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:step38];
    
    step39 = [UIButton buttonWithType:UIButtonTypeCustom];
    step39.frame = CGRectMake(187.5, 110, 20, 20);
    step39.layer.cornerRadius = 2.5;
    step39.layer.borderWidth = 0.5;
    [step39 setBackgroundColor:[UIColor lightGrayColor]];
    [step39 addTarget:self action:@selector(step39ButtonPressed) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:step39];
    
    step40 = [UIButton buttonWithType:UIButtonTypeCustom];
    step40.frame = CGRectMake(212.5, 110, 20, 20);
    step40.layer.cornerRadius = 2.5;
    step40.layer.borderWidth = 0.5;
    [step40 setBackgroundColor:[UIColor lightGrayColor]];
    [step40 addTarget:self action:@selector(step40ButtonPressed) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:step40];
    
    step41=[UIButton buttonWithType:UIButtonTypeCustom];
    step41.frame = CGRectMake(247.5, 110, 20, 20);
    step41.layer.cornerRadius = 2.5;
    step41.layer.borderWidth = 0.5;
    [step41 setBackgroundColor:[UIColor lightGrayColor]];
    [step41 addTarget:self action:@selector(step41ButtonPressed) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:step41];
    
    step42 = [UIButton buttonWithType:UIButtonTypeCustom];
    step42.frame = CGRectMake(272.5, 110, 20, 20);
    step42.layer.cornerRadius = 2.5;
    step42.layer.borderWidth = 0.5;
    [step42 setBackgroundColor:[UIColor lightGrayColor]];
    [step42 addTarget:self action:@selector(step42ButtonPressed) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:step42];
    
    step43 = [UIButton buttonWithType:UIButtonTypeCustom];
    step43.frame = CGRectMake(297.5, 110, 20, 20);
    step43.layer.cornerRadius = 2.5;
    step43.layer.borderWidth = 0.5;
    [step43 setBackgroundColor:[UIColor lightGrayColor]];
    [step43 addTarget:self action:@selector(step43ButtonPressed) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:step43];
    
    step44 = [UIButton buttonWithType:UIButtonTypeCustom];
    step44.frame = CGRectMake(322.5, 110, 20, 20);
    step44.layer.cornerRadius = 2.5;
    step44.layer.borderWidth = 0.5;
    [step44 setBackgroundColor:[UIColor lightGrayColor]];
    [step44 addTarget:self action:@selector(step44ButtonPressed) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:step44];
    
    step45=[UIButton buttonWithType:UIButtonTypeCustom];
    step45.frame = CGRectMake(357.5, 110, 20, 20);
    step45.layer.cornerRadius = 2.5;
    step45.layer.borderWidth = 0.5;
    [step45 setBackgroundColor:[UIColor lightGrayColor]];
    [step45 addTarget:self action:@selector(step45ButtonPressed) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:step45];
    
    step46 = [UIButton buttonWithType:UIButtonTypeCustom];
    step46.frame = CGRectMake(382.5, 110, 20, 20);
    step46.layer.cornerRadius = 2.5;
    step46.layer.borderWidth = 0.5;
    [step46 setBackgroundColor:[UIColor lightGrayColor]];
    [step46 addTarget:self action:@selector(step46ButtonPressed) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:step46];
    
    step47 = [UIButton buttonWithType:UIButtonTypeCustom];
    step47.frame = CGRectMake(407.5, 110, 20, 20);
    step47.layer.cornerRadius = 2.5;
    step47.layer.borderWidth = 0.5;
    [step47 setBackgroundColor:[UIColor lightGrayColor]];
    [step47 addTarget:self action:@selector(step47ButtonPressed) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:step47];
    
    step48 = [UIButton buttonWithType:UIButtonTypeCustom];
    step48.frame = CGRectMake(432.5, 110, 20, 20);
    step48.layer.cornerRadius = 2.5;
    step48.layer.borderWidth = 0.5;
    [step48 setBackgroundColor:[UIColor lightGrayColor]];
    [step48 addTarget:self action:@selector(step48ButtonPressed) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:step48];
    
    step49=[UIButton buttonWithType:UIButtonTypeCustom];
    step49.frame = CGRectMake(27.5, 145, 20, 20);
    step49.layer.cornerRadius = 2.5;
    step49.layer.borderWidth = 0.5;
    [step49 setBackgroundColor:[UIColor lightGrayColor]];
    [step49 addTarget:self action:@selector(step49ButtonPressed) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:step49];
    
    step50 = [UIButton buttonWithType:UIButtonTypeCustom];
    step50.frame = CGRectMake(52.5, 145, 20, 20);
    step50.layer.cornerRadius = 2.5;
    step50.layer.borderWidth = 0.5;
    [step50 setBackgroundColor:[UIColor lightGrayColor]];
    [step50 addTarget:self action:@selector(step50ButtonPressed) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:step50];
    
    step51 = [UIButton buttonWithType:UIButtonTypeCustom];
    step51.frame = CGRectMake(77.5, 145, 20, 20);
    step51.layer.cornerRadius = 2.5;
    step51.layer.borderWidth = 0.5;
    [step51 setBackgroundColor:[UIColor lightGrayColor]];
    [step51 addTarget:self action:@selector(step51ButtonPressed) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:step51];
    
    step52 = [UIButton buttonWithType:UIButtonTypeCustom];
    step52.frame = CGRectMake(102.5, 145, 20, 20);
    step52.layer.cornerRadius = 2.5;
    step52.layer.borderWidth = 0.5;
    [step52 setBackgroundColor:[UIColor lightGrayColor]];
    [step52 addTarget:self action:@selector(step52ButtonPressed) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:step52];
    
    step53=[UIButton buttonWithType:UIButtonTypeCustom];
    step53.frame = CGRectMake(137.5, 145, 20, 20);
    step53.layer.cornerRadius = 2.5;
    step53.layer.borderWidth = 0.5;
    [step53 setBackgroundColor:[UIColor lightGrayColor]];
    [step53 addTarget:self action:@selector(step53ButtonPressed) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:step53];
    
    step54 = [UIButton buttonWithType:UIButtonTypeCustom];
    step54.frame = CGRectMake(162.5, 145, 20, 20);
    step54.layer.cornerRadius = 2.5;
    step54.layer.borderWidth = 0.5;
    [step54 setBackgroundColor:[UIColor lightGrayColor]];
    [step54 addTarget:self action:@selector(step54ButtonPressed) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:step54];
    
    step55 = [UIButton buttonWithType:UIButtonTypeCustom];
    step55.frame = CGRectMake(187.5, 145, 20, 20);
    step55.layer.cornerRadius = 2.5;
    step55.layer.borderWidth = 0.5;
    [step55 setBackgroundColor:[UIColor lightGrayColor]];
    [step55 addTarget:self action:@selector(step55ButtonPressed) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:step55];
    
    step56 = [UIButton buttonWithType:UIButtonTypeCustom];
    step56.frame = CGRectMake(212.5, 145, 20, 20);
    step56.layer.cornerRadius = 2.5;
    step56.layer.borderWidth = 0.5;
    [step56 setBackgroundColor:[UIColor lightGrayColor]];
    [step56 addTarget:self action:@selector(step56ButtonPressed) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:step56];
    
    step57=[UIButton buttonWithType:UIButtonTypeCustom];
    step57.frame = CGRectMake(247.5, 145, 20, 20);
    step57.layer.cornerRadius = 2.5;
    step57.layer.borderWidth = 0.5;
    [step57 setBackgroundColor:[UIColor lightGrayColor]];
    [step57 addTarget:self action:@selector(step57ButtonPressed) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:step57];
    
    step58 = [UIButton buttonWithType:UIButtonTypeCustom];
    step58.frame = CGRectMake(272.5, 145, 20, 20);
    step58.layer.cornerRadius = 2.5;
    step58.layer.borderWidth = 0.5;
    [step58 setBackgroundColor:[UIColor lightGrayColor]];
    [step58 addTarget:self action:@selector(step58ButtonPressed) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:step58];
    
    step59 = [UIButton buttonWithType:UIButtonTypeCustom];
    step59.frame = CGRectMake(297.5, 145, 20, 20);
    step59.layer.cornerRadius = 2.5;
    step59.layer.borderWidth = 0.5;
    [step59 setBackgroundColor:[UIColor lightGrayColor]];
    [step59 addTarget:self action:@selector(step59ButtonPressed) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:step59];
    
    step60 = [UIButton buttonWithType:UIButtonTypeCustom];
    step60.frame = CGRectMake(322.5, 145, 20, 20);
    step60.layer.cornerRadius = 2.5;
    step60.layer.borderWidth = 0.5;
    [step60 setBackgroundColor:[UIColor lightGrayColor]];
    [step60 addTarget:self action:@selector(step60ButtonPressed) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:step60];
    
    step61=[UIButton buttonWithType:UIButtonTypeCustom];
    step61.frame = CGRectMake(357.5, 145, 20, 20);
    step61.layer.cornerRadius = 2.5;
    step61.layer.borderWidth = 0.5;
    [step61 setBackgroundColor:[UIColor lightGrayColor]];
    [step61 addTarget:self action:@selector(step61ButtonPressed) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:step61];
    
    step62 = [UIButton buttonWithType:UIButtonTypeCustom];
    step62.frame = CGRectMake(382.5, 145, 20, 20);
    step62.layer.cornerRadius = 2.5;
    step62.layer.borderWidth = 0.5;
    [step62 setBackgroundColor:[UIColor lightGrayColor]];
    [step62 addTarget:self action:@selector(step62ButtonPressed) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:step62];
    
    step63 = [UIButton buttonWithType:UIButtonTypeCustom];
    step63.frame = CGRectMake(407.5, 145, 20, 20);
    step63.layer.cornerRadius = 2.5;
    step63.layer.borderWidth = 0.5;
    [step63 setBackgroundColor:[UIColor lightGrayColor]];
    [step63 addTarget:self action:@selector(step63ButtonPressed) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:step63];
    
    step64 = [UIButton buttonWithType:UIButtonTypeCustom];
    step64.frame = CGRectMake(432.5, 145, 20, 20);
    step64.layer.cornerRadius = 2.5;
    step64.layer.borderWidth = 0.5;
    [step64 setBackgroundColor:[UIColor lightGrayColor]];
    [step64 addTarget:self action:@selector(step64ButtonPressed) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:step64];
    
    //Draw step indicators
    led01 = [[UIImageView alloc] initWithFrame:CGRectMake( 32.5, 25, 10, 10 )];
    led01.backgroundColor = [UIColor clearColor];
    led01.layer.cornerRadius = 5;
    led01.layer.borderWidth = 0.5;
    [self.view addSubview:led01];
    
    led02 = [[UIImageView alloc] initWithFrame:CGRectMake( 57.5, 25, 10, 10 )];
    led02.backgroundColor = [UIColor clearColor];
    led02.layer.cornerRadius = 5;
    led02.layer.borderWidth = 0.5;
    [self.view addSubview:led02];
    
    led03 = [[UIImageView alloc] initWithFrame:CGRectMake( 82.5, 25, 10, 10 )];
    led03.backgroundColor = [UIColor clearColor];
    led03.layer.cornerRadius = 5;
    led03.layer.borderWidth = 0.5;
    [self.view addSubview:led03];
    
    led04 = [[UIImageView alloc] initWithFrame:CGRectMake( 107.5, 25, 10, 10 )];
    led04.backgroundColor = [UIColor clearColor];
    led04.layer.cornerRadius = 5;
    led04.layer.borderWidth = 0.5;
    [self.view addSubview:led04];
    
    led05 = [[UIImageView alloc] initWithFrame:CGRectMake( 142.5, 25, 10, 10 )];
    led05.backgroundColor = [UIColor clearColor];
    led05.layer.cornerRadius = 5;
    led05.layer.borderWidth = 0.5;
    [self.view addSubview:led05];
    
    led06 = [[UIImageView alloc] initWithFrame:CGRectMake( 167.5, 25, 10, 10 )];
    led06.backgroundColor = [UIColor clearColor];
    led06.layer.cornerRadius = 5;
    led06.layer.borderWidth = 0.5;
    [self.view addSubview:led06];
    
    led07 = [[UIImageView alloc] initWithFrame:CGRectMake( 192.5, 25, 10, 10 )];
    led07.backgroundColor = [UIColor clearColor];
    led07.layer.cornerRadius = 5;
    led07.layer.borderWidth = 0.5;
    [self.view addSubview:led07];
    
    led08 = [[UIImageView alloc] initWithFrame:CGRectMake( 217.5, 25, 10, 10 )];
    led08.backgroundColor = [UIColor clearColor];
    led08.layer.cornerRadius = 5;
    led08.layer.borderWidth = 0.5;
    [self.view addSubview:led08];
    
    led09 = [[UIImageView alloc] initWithFrame:CGRectMake( 252.5, 25, 10, 10 )];
    led09.backgroundColor = [UIColor clearColor];
    led09.layer.cornerRadius = 5;
    led09.layer.borderWidth = 0.5;
    [self.view addSubview:led09];
    
    led10 = [[UIImageView alloc] initWithFrame:CGRectMake( 277.5, 25, 10, 10 )];
    led10.backgroundColor = [UIColor clearColor];
    led10.layer.cornerRadius = 5;
    led10.layer.borderWidth = 0.5;
    [self.view addSubview:led10];
    
    led11 = [[UIImageView alloc] initWithFrame:CGRectMake( 302.5, 25, 10, 10 )];
    led11.backgroundColor = [UIColor clearColor];
    led11.layer.cornerRadius = 5;
    led11.layer.borderWidth = 0.5;
    [self.view addSubview:led11];
    
    led12 = [[UIImageView alloc] initWithFrame:CGRectMake( 327.5, 25, 10, 10 )];
    led12.backgroundColor = [UIColor clearColor];
    led12.layer.cornerRadius = 5;
    led12.layer.borderWidth = 0.5;
    [self.view addSubview:led12];
    
    led13 = [[UIImageView alloc] initWithFrame:CGRectMake( 362.5, 25, 10, 10 )];
    led13.backgroundColor = [UIColor clearColor];
    led13.layer.cornerRadius = 5;
    led13.layer.borderWidth = 0.5;
    [self.view addSubview:led13];
    
    led14 = [[UIImageView alloc] initWithFrame:CGRectMake( 387.5, 25, 10, 10 )];
    led14.backgroundColor = [UIColor clearColor];
    led14.layer.cornerRadius = 5;
    led14.layer.borderWidth = 0.5;
    [self.view addSubview:led14];

    led15 = [[UIImageView alloc] initWithFrame:CGRectMake( 412.5, 25, 10, 10 )];
    led15.backgroundColor = [UIColor clearColor];
    led15.layer.cornerRadius = 5;
    led15.layer.borderWidth = 0.5;
    [self.view addSubview:led15];
    
    led16 = [[UIImageView alloc] initWithFrame:CGRectMake( 437.5, 25, 10, 10 )];
    led16.backgroundColor = [UIColor clearColor];
    led16.layer.cornerRadius = 5;
    led16.layer.borderWidth = 0.5;
    [self.view addSubview:led16];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

-(void) startStopButtonPressed
{
    //Initialize timer
    if( startStopBool == 0) {
        timer = [NSTimer scheduledTimerWithTimeInterval:(bpm) target:self selector:@selector(time) userInfo:nil repeats:YES];
        [startStop setBackgroundColor:[UIColor redColor]];
        startStopBool = 1;
    } else if ( startStopBool == 1 ) {
        [timer invalidate];
        [startStop setBackgroundColor:[UIColor greenColor]];
        startStopBool = 0;
    }
}

-(void)step01ButtonPressed
{
    if( step01Active == 0){
        [step01 setBackgroundColor:[UIColor orangeColor]];
        step01Active = 1;
    } else if( step01Active == 1) {
        [step01 setBackgroundColor:[UIColor lightGrayColor]];
        step01Active = 0;
    }
}

-(void)step02ButtonPressed
{
    if( step02Active == 0){
        [step02 setBackgroundColor:[UIColor orangeColor]];
        step02Active = 1;
    } else if( step02Active == 1) {
        [step02 setBackgroundColor:[UIColor lightGrayColor]];
        step02Active = 0;
    }
}

-(void)step03ButtonPressed
{
    if( step03Active == 0){
        [step03 setBackgroundColor:[UIColor orangeColor]];
        step03Active = 1;
    } else if( step03Active == 1) {
        [step03 setBackgroundColor:[UIColor lightGrayColor]];
        step03Active = 0;
    }
}

-(void)step04ButtonPressed
{
    if( step04Active == 0){
        [step04 setBackgroundColor:[UIColor orangeColor]];
        step04Active = 1;
    } else if( step04Active == 1) {
        [step04 setBackgroundColor:[UIColor lightGrayColor]];
        step04Active = 0;
    }
}

-(void)step05ButtonPressed
{
    if( step05Active == 0){
        [step05 setBackgroundColor:[UIColor orangeColor]];
        step05Active = 1;
    } else if( step05Active == 1) {
        [step05 setBackgroundColor:[UIColor lightGrayColor]];
        step05Active = 0;
    }
}

-(void)step06ButtonPressed
{
    if( step06Active == 0){
        [step06 setBackgroundColor:[UIColor orangeColor]];
        step06Active = 1;
    } else if( step06Active == 1) {
        [step06 setBackgroundColor:[UIColor lightGrayColor]];
        step06Active = 0;
    }
}

-(void)step07ButtonPressed
{
    if( step07Active == 0){
        [step07 setBackgroundColor:[UIColor orangeColor]];
        step07Active = 1;
    } else if( step07Active == 1) {
        [step07 setBackgroundColor:[UIColor lightGrayColor]];
        step07Active = 0;
    }
}

-(void)step08ButtonPressed
{
    if( step08Active == 0){
        [step08 setBackgroundColor:[UIColor orangeColor]];
        step08Active = 1;
    } else if( step08Active == 1) {
        [step08 setBackgroundColor:[UIColor lightGrayColor]];
        step08Active = 0;
    }
}

-(void)step09ButtonPressed
{
    if( step09Active == 0){
        [step09 setBackgroundColor:[UIColor orangeColor]];
        step09Active = 1;
    } else if( step09Active == 1) {
        [step09 setBackgroundColor:[UIColor lightGrayColor]];
        step09Active = 0;
    }
}

-(void)step10ButtonPressed
{
    if( step10Active == 0){
        [step10 setBackgroundColor:[UIColor orangeColor]];
        step10Active = 1;
    } else if( step10Active == 1) {
        [step10 setBackgroundColor:[UIColor lightGrayColor]];
        step10Active = 0;
    }
}

-(void)step11ButtonPressed
{
    if( step11Active == 0){
        [step11 setBackgroundColor:[UIColor orangeColor]];
        step11Active = 1;
    } else if( step11Active == 1) {
        [step11 setBackgroundColor:[UIColor lightGrayColor]];
        step11Active = 0;
    }
}

-(void)step12ButtonPressed
{
    if( step12Active == 0){
        [step12 setBackgroundColor:[UIColor orangeColor]];
        step12Active = 1;
    } else if( step12Active == 1) {
        [step12 setBackgroundColor:[UIColor lightGrayColor]];
        step12Active = 0;
    }
}

-(void)step13ButtonPressed
{
    if( step13Active == 0){
        [step13 setBackgroundColor:[UIColor orangeColor]];
        step13Active = 1;
    } else if( step13Active == 1) {
        [step13 setBackgroundColor:[UIColor lightGrayColor]];
        step13Active = 0;
    }
}

-(void)step14ButtonPressed
{
    if( step14Active == 0){
        [step14 setBackgroundColor:[UIColor orangeColor]];
        step14Active = 1;
    } else if( step14Active == 1) {
        [step14 setBackgroundColor:[UIColor lightGrayColor]];
        step14Active = 0;
    }
}

-(void)step15ButtonPressed
{
    if( step15Active == 0){
        [step15 setBackgroundColor:[UIColor orangeColor]];
        step15Active = 1;
    } else if( step15Active == 1) {
        [step15 setBackgroundColor:[UIColor lightGrayColor]];
        step15Active = 0;
    }
}

-(void)step16ButtonPressed
{
    if( step16Active == 0){
        [step16 setBackgroundColor:[UIColor orangeColor]];
        step16Active = 1;
    } else if( step16Active == 1) {
        [step16 setBackgroundColor:[UIColor lightGrayColor]];
        step16Active = 0;
    }
}

-(void)step17ButtonPressed
{
    if( step17Active == 0){
        [step17 setBackgroundColor:[UIColor orangeColor]];
        step17Active = 1;
    } else if( step17Active == 1) {
        [step17 setBackgroundColor:[UIColor lightGrayColor]];
        step17Active = 0;
    }
}

-(void)step18ButtonPressed
{
    if( step18Active == 0){
        [step18 setBackgroundColor:[UIColor orangeColor]];
        step18Active = 1;
    } else if( step18Active == 1) {
        [step18 setBackgroundColor:[UIColor lightGrayColor]];
        step18Active = 0;
    }
}

-(void)step19ButtonPressed
{
    if( step19Active == 0){
        [step19 setBackgroundColor:[UIColor orangeColor]];
        step19Active = 1;
    } else if( step19Active == 1) {
        [step19 setBackgroundColor:[UIColor lightGrayColor]];
        step19Active = 0;
    }
}

-(void)step20ButtonPressed
{
    if( step20Active == 0){
        [step20 setBackgroundColor:[UIColor orangeColor]];
        step20Active = 1;
    } else if( step20Active == 1) {
        [step20 setBackgroundColor:[UIColor lightGrayColor]];
        step20Active = 0;
    }
}

-(void)step21ButtonPressed
{
    if( step21Active == 0){
        [step21 setBackgroundColor:[UIColor orangeColor]];
        step21Active = 1;
    } else if( step21Active == 1) {
        [step21 setBackgroundColor:[UIColor lightGrayColor]];
        step21Active = 0;
    }
}

-(void)step22ButtonPressed
{
    if( step22Active == 0){
        [step22 setBackgroundColor:[UIColor orangeColor]];
        step22Active = 1;
    } else if( step22Active == 1) {
        [step22 setBackgroundColor:[UIColor lightGrayColor]];
        step22Active = 0;
    }
}

-(void)step23ButtonPressed
{
    if( step23Active == 0){
        [step23 setBackgroundColor:[UIColor orangeColor]];
        step23Active = 1;
    } else if( step23Active == 1) {
        [step23 setBackgroundColor:[UIColor lightGrayColor]];
        step23Active = 0;
    }
}

-(void)step24ButtonPressed
{
    if( step24Active == 0){
        [step24 setBackgroundColor:[UIColor orangeColor]];
        step24Active = 1;
    } else if( step24Active == 1) {
        [step24 setBackgroundColor:[UIColor lightGrayColor]];
        step24Active = 0;
    }
}

-(void)step25ButtonPressed
{
    if( step25Active == 0){
        [step25 setBackgroundColor:[UIColor orangeColor]];
        step25Active = 1;
    } else if( step25Active == 1) {
        [step25 setBackgroundColor:[UIColor lightGrayColor]];
        step25Active = 0;
    }
}

-(void)step26ButtonPressed
{
    if( step26Active == 0){
        [step26 setBackgroundColor:[UIColor orangeColor]];
        step26Active = 1;
    } else if( step26Active == 1) {
        [step26 setBackgroundColor:[UIColor lightGrayColor]];
        step26Active = 0;
    }
}

-(void)step27ButtonPressed
{
    if( step27Active == 0){
        [step27 setBackgroundColor:[UIColor orangeColor]];
        step27Active = 1;
    } else if( step27Active == 1) {
        [step27 setBackgroundColor:[UIColor lightGrayColor]];
        step27Active = 0;
    }
}

-(void)step28ButtonPressed
{
    if( step28Active == 0){
        [step28 setBackgroundColor:[UIColor orangeColor]];
        step28Active = 1;
    } else if( step28Active == 1) {
        [step28 setBackgroundColor:[UIColor lightGrayColor]];
        step28Active = 0;
    }
}

-(void)step29ButtonPressed
{
    if( step29Active == 0){
        [step29 setBackgroundColor:[UIColor orangeColor]];
        step29Active = 1;
    } else if( step29Active == 1) {
        [step29 setBackgroundColor:[UIColor lightGrayColor]];
        step29Active = 0;
    }
}

-(void)step30ButtonPressed
{
    if( step30Active == 0){
        [step30 setBackgroundColor:[UIColor orangeColor]];
        step30Active = 1;
    } else if( step30Active == 1) {
        [step30 setBackgroundColor:[UIColor lightGrayColor]];
        step30Active = 0;
    }
}

-(void)step31ButtonPressed
{
    if( step31Active == 0){
        [step31 setBackgroundColor:[UIColor orangeColor]];
        step31Active = 1;
    } else if( step31Active == 1) {
        [step31 setBackgroundColor:[UIColor lightGrayColor]];
        step31Active = 0;
    }
}

-(void)step32ButtonPressed
{
    if( step32Active == 0){
        [step32 setBackgroundColor:[UIColor orangeColor]];
        step32Active = 1;
    } else if( step32Active == 1) {
        [step32 setBackgroundColor:[UIColor lightGrayColor]];
        step32Active = 0;
    }
}

-(void)step33ButtonPressed
{
    if( step33Active == 0){
        [step33 setBackgroundColor:[UIColor orangeColor]];
        step33Active = 1;
    } else if( step33Active == 1) {
        [step33 setBackgroundColor:[UIColor lightGrayColor]];
        step33Active = 0;
    }
}

-(void)step34ButtonPressed
{
    if( step34Active == 0){
        [step34 setBackgroundColor:[UIColor orangeColor]];
        step34Active = 1;
    } else if( step34Active == 1) {
        [step34 setBackgroundColor:[UIColor lightGrayColor]];
        step34Active = 0;
    }
}

-(void)step35ButtonPressed
{
    if( step35Active == 0){
        [step35 setBackgroundColor:[UIColor orangeColor]];
        step35Active = 1;
    } else if( step35Active == 1) {
        [step35 setBackgroundColor:[UIColor lightGrayColor]];
        step35Active = 0;
    }
}

-(void)step36ButtonPressed
{
    if( step36Active == 0){
        [step36 setBackgroundColor:[UIColor orangeColor]];
        step36Active = 1;
    } else if( step36Active == 1) {
        [step36 setBackgroundColor:[UIColor lightGrayColor]];
        step36Active = 0;
    }
}

-(void)step37ButtonPressed
{
    if( step37Active == 0){
        [step37 setBackgroundColor:[UIColor orangeColor]];
        step37Active = 1;
    } else if( step37Active == 1) {
        [step37 setBackgroundColor:[UIColor lightGrayColor]];
        step37Active = 0;
    }
}

-(void)step38ButtonPressed
{
    if( step38Active == 0){
        [step38 setBackgroundColor:[UIColor orangeColor]];
        step38Active = 1;
    } else if( step38Active == 1) {
        [step38 setBackgroundColor:[UIColor lightGrayColor]];
        step38Active = 0;
    }
}

-(void)step39ButtonPressed
{
    if( step39Active == 0){
        [step39 setBackgroundColor:[UIColor orangeColor]];
        step39Active = 1;
    } else if( step39Active == 1) {
        [step39 setBackgroundColor:[UIColor lightGrayColor]];
        step39Active = 0;
    }
}

-(void)step40ButtonPressed
{
    if( step40Active == 0){
        [step40 setBackgroundColor:[UIColor orangeColor]];
        step40Active = 1;
    } else if( step40Active == 1) {
        [step40 setBackgroundColor:[UIColor lightGrayColor]];
        step40Active = 0;
    }
}

-(void)step41ButtonPressed
{
    if( step41Active == 0){
        [step41 setBackgroundColor:[UIColor orangeColor]];
        step41Active = 1;
    } else if( step41Active == 1) {
        [step41 setBackgroundColor:[UIColor lightGrayColor]];
        step41Active = 0;
    }
}

-(void)step42ButtonPressed
{
    if( step42Active == 0){
        [step42 setBackgroundColor:[UIColor orangeColor]];
        step42Active = 1;
    } else if( step42Active == 1) {
        [step42 setBackgroundColor:[UIColor lightGrayColor]];
        step42Active = 0;
    }
}

-(void)step43ButtonPressed
{
    if( step43Active == 0){
        [step43 setBackgroundColor:[UIColor orangeColor]];
        step43Active = 1;
    } else if( step43Active == 1) {
        [step43 setBackgroundColor:[UIColor lightGrayColor]];
        step43Active = 0;
    }
}

-(void)step44ButtonPressed
{
    if( step44Active == 0){
        [step44 setBackgroundColor:[UIColor orangeColor]];
        step44Active = 1;
    } else if( step44Active == 1) {
        [step44 setBackgroundColor:[UIColor lightGrayColor]];
        step44Active = 0;
    }
}

-(void)step45ButtonPressed
{
    if( step45Active == 0){
        [step45 setBackgroundColor:[UIColor orangeColor]];
        step45Active = 1;
    } else if( step45Active == 1) {
        [step45 setBackgroundColor:[UIColor lightGrayColor]];
        step45Active = 0;
    }
}

-(void)step46ButtonPressed
{
    if( step46Active == 0){
        [step46 setBackgroundColor:[UIColor orangeColor]];
        step46Active = 1;
    } else if( step46Active == 1) {
        [step46 setBackgroundColor:[UIColor lightGrayColor]];
        step46Active = 0;
    }
}

-(void)step47ButtonPressed
{
    if( step47Active == 0){
        [step47 setBackgroundColor:[UIColor orangeColor]];
        step47Active = 1;
    } else if( step47Active == 1) {
        [step47 setBackgroundColor:[UIColor lightGrayColor]];
        step47Active = 0;
    }
}

-(void)step48ButtonPressed
{
    if( step48Active == 0){
        [step48 setBackgroundColor:[UIColor orangeColor]];
        step48Active = 1;
    } else if( step48Active == 1) {
        [step48 setBackgroundColor:[UIColor lightGrayColor]];
        step48Active = 0;
    }
}

-(void)step49ButtonPressed
{
    if( step49Active == 0){
        [step49 setBackgroundColor:[UIColor orangeColor]];
        step49Active = 1;
    } else if( step49Active == 1) {
        [step49 setBackgroundColor:[UIColor lightGrayColor]];
        step49Active = 0;
    }
}

-(void)step50ButtonPressed
{
    if( step50Active == 0){
        [step50 setBackgroundColor:[UIColor orangeColor]];
        step50Active = 1;
    } else if( step50Active == 1) {
        [step50 setBackgroundColor:[UIColor lightGrayColor]];
        step50Active = 0;
    }
}

-(void)step51ButtonPressed
{
    if( step51Active == 0){
        [step51 setBackgroundColor:[UIColor orangeColor]];
        step51Active = 1;
    } else if( step51Active == 1) {
        [step51 setBackgroundColor:[UIColor lightGrayColor]];
        step51Active = 0;
    }
}

-(void)step52ButtonPressed
{
    if( step52Active == 0){
        [step52 setBackgroundColor:[UIColor orangeColor]];
        step52Active = 1;
    } else if( step52Active == 1) {
        [step52 setBackgroundColor:[UIColor lightGrayColor]];
        step52Active = 0;
    }
}

-(void)step53ButtonPressed
{
    if( step53Active == 0){
        [step53 setBackgroundColor:[UIColor orangeColor]];
        step53Active = 1;
    } else if( step53Active == 1) {
        [step53 setBackgroundColor:[UIColor lightGrayColor]];
        step53Active = 0;
    }
}

-(void)step54ButtonPressed
{
    if( step54Active == 0){
        [step54 setBackgroundColor:[UIColor orangeColor]];
        step54Active = 1;
    } else if( step54Active == 1) {
        [step54 setBackgroundColor:[UIColor lightGrayColor]];
        step54Active = 0;
    }
}

-(void)step55ButtonPressed
{
    if( step55Active == 0){
        [step55 setBackgroundColor:[UIColor orangeColor]];
        step55Active = 1;
    } else if( step55Active == 1) {
        [step55 setBackgroundColor:[UIColor lightGrayColor]];
        step55Active = 0;
    }
}

-(void)step56ButtonPressed
{
    if( step56Active == 0){
        [step56 setBackgroundColor:[UIColor orangeColor]];
        step56Active = 1;
    } else if( step56Active == 1) {
        [step56 setBackgroundColor:[UIColor lightGrayColor]];
        step56Active = 0;
    }
}

-(void)step57ButtonPressed
{
    if( step57Active == 0){
        [step57 setBackgroundColor:[UIColor orangeColor]];
        step57Active = 1;
    } else if( step57Active == 1) {
        [step57 setBackgroundColor:[UIColor lightGrayColor]];
        step57Active = 0;
    }
}

-(void)step58ButtonPressed
{
    if( step58Active == 0){
        [step58 setBackgroundColor:[UIColor orangeColor]];
        step58Active = 1;
    } else if( step58Active == 1) {
        [step58 setBackgroundColor:[UIColor lightGrayColor]];
        step58Active = 0;
    }
}

-(void)step59ButtonPressed
{
    if( step59Active == 0){
        [step59 setBackgroundColor:[UIColor orangeColor]];
        step59Active = 1;
    } else if( step59Active == 1) {
        [step59 setBackgroundColor:[UIColor lightGrayColor]];
        step59Active = 0;
    }
}

-(void)step60ButtonPressed
{
    if( step60Active == 0){
        [step60 setBackgroundColor:[UIColor orangeColor]];
        step60Active = 1;
    } else if( step60Active == 1) {
        [step60 setBackgroundColor:[UIColor lightGrayColor]];
        step60Active = 0;
    }
}

-(void)step61ButtonPressed
{
    if( step61Active == 0){
        [step61 setBackgroundColor:[UIColor orangeColor]];
        step61Active = 1;
    } else if( step61Active == 1) {
        [step61 setBackgroundColor:[UIColor lightGrayColor]];
        step61Active = 0;
    }
}

-(void)step62ButtonPressed
{
    if( step62Active == 0){
        [step62 setBackgroundColor:[UIColor orangeColor]];
        step62Active = 1;
    } else if( step62Active == 1) {
        [step62 setBackgroundColor:[UIColor lightGrayColor]];
        step62Active = 0;
    }
}

-(void)step63ButtonPressed
{
    if( step63Active == 0){
        [step63 setBackgroundColor:[UIColor orangeColor]];
        step63Active = 1;
    } else if( step63Active == 1) {
        [step63 setBackgroundColor:[UIColor lightGrayColor]];
        step63Active = 0;
    }
}

-(void)step64ButtonPressed
{
    if( step64Active == 0){
        [step64 setBackgroundColor:[UIColor orangeColor]];
        step64Active = 1;
    } else if( step64Active == 1) {
        [step64 setBackgroundColor:[UIColor lightGrayColor]];
        step64Active = 0;
    }
}

-(void)time
{
    if ( led == 1) {
        led16.backgroundColor = [UIColor clearColor];
        led01.backgroundColor = [UIColor redColor];
        led = 2;
        if ( step01Active == 1 ) {
            [socket writeData:[@"A" dataUsingEncoding:NSASCIIStringEncoding] withTimeout:-1 tag:1];
        }
        if ( step17Active == 1 ) {
            [socket writeData:[@"B" dataUsingEncoding:NSASCIIStringEncoding] withTimeout:-1 tag:17];
        }
        if ( step33Active == 1 ) {
            [socket writeData:[@"C" dataUsingEncoding:NSASCIIStringEncoding] withTimeout:-1 tag:33];
        }
        if ( step49Active == 1 ) {
            [socket writeData:[@"D" dataUsingEncoding:NSASCIIStringEncoding] withTimeout:-1 tag:49];
        }
    } else if ( led == 2 ) {
        led01.backgroundColor = [UIColor clearColor];
        led02.backgroundColor = [UIColor redColor];
        led = 3;
        if ( step02Active == 1 ) {
            [socket writeData:[@"A" dataUsingEncoding:NSASCIIStringEncoding] withTimeout:-1 tag:2];
        }
        if ( step18Active == 1 ) {
            [socket writeData:[@"B" dataUsingEncoding:NSASCIIStringEncoding] withTimeout:-1 tag:18];
        }
        if ( step34Active == 1 ) {
            [socket writeData:[@"C" dataUsingEncoding:NSASCIIStringEncoding] withTimeout:-1 tag:34];
        }
        if ( step50Active == 1 ) {
            [socket writeData:[@"D" dataUsingEncoding:NSASCIIStringEncoding] withTimeout:-1 tag:50];
        }
    } else if ( led == 3 ) {
        led02.backgroundColor = [UIColor clearColor];
        led03.backgroundColor = [UIColor redColor];
        led = 4;
        if ( step03Active == 1 ) {
            [socket writeData:[@"A" dataUsingEncoding:NSASCIIStringEncoding] withTimeout:-1 tag:3];
        }
        if ( step19Active == 1 ) {
            [socket writeData:[@"B" dataUsingEncoding:NSASCIIStringEncoding] withTimeout:-1 tag:19];
        }
        if ( step35Active == 1 ) {
            [socket writeData:[@"C" dataUsingEncoding:NSASCIIStringEncoding] withTimeout:-1 tag:35];
        }
        if ( step51Active == 1 ) {
            [socket writeData:[@"D" dataUsingEncoding:NSASCIIStringEncoding] withTimeout:-1 tag:51];
        }
    } else if ( led == 4 ) {
        led03.backgroundColor = [UIColor clearColor];
        led04.backgroundColor = [UIColor redColor];
        led = 5;
        if ( step04Active == 1 ) {
            [socket writeData:[@"A" dataUsingEncoding:NSASCIIStringEncoding] withTimeout:-1 tag:4];
        }
        if ( step20Active == 1 ) {
            [socket writeData:[@"B" dataUsingEncoding:NSASCIIStringEncoding] withTimeout:-1 tag:20];
        }
        if ( step36Active == 1 ) {
            [socket writeData:[@"C" dataUsingEncoding:NSASCIIStringEncoding] withTimeout:-1 tag:36];
        }
        if ( step52Active == 1 ) {
            [socket writeData:[@"D" dataUsingEncoding:NSASCIIStringEncoding] withTimeout:-1 tag:52];
        }
    }  else if ( led == 5 ) {
        led04.backgroundColor = [UIColor clearColor];
        led05.backgroundColor = [UIColor redColor];
        led = 6;
        if ( step05Active == 1 ) {
            [socket writeData:[@"A" dataUsingEncoding:NSASCIIStringEncoding] withTimeout:-1 tag:5];
        }
        if ( step21Active == 1 ) {
            [socket writeData:[@"B" dataUsingEncoding:NSASCIIStringEncoding] withTimeout:-1 tag:21];
        }
        if ( step37Active == 1 ) {
            [socket writeData:[@"C" dataUsingEncoding:NSASCIIStringEncoding] withTimeout:-1 tag:37];
        }
        if ( step53Active == 1 ) {
            [socket writeData:[@"D" dataUsingEncoding:NSASCIIStringEncoding] withTimeout:-1 tag:53];
        }
    } else if ( led == 6 ) {
        led05.backgroundColor = [UIColor clearColor];
        led06.backgroundColor = [UIColor redColor];
        led = 7;
        if ( step06Active == 1 ) {
            [socket writeData:[@"A" dataUsingEncoding:NSASCIIStringEncoding] withTimeout:-1 tag:6];
        }
        if ( step22Active == 1 ) {
            [socket writeData:[@"B" dataUsingEncoding:NSASCIIStringEncoding] withTimeout:-1 tag:22];
        }
        if ( step38Active == 1 ) {
            [socket writeData:[@"C" dataUsingEncoding:NSASCIIStringEncoding] withTimeout:-1 tag:38];
        }
        if ( step54Active == 1 ) {
            [socket writeData:[@"D" dataUsingEncoding:NSASCIIStringEncoding] withTimeout:-1 tag:54];
        }
    } else if ( led == 7 ) {
        led06.backgroundColor = [UIColor clearColor];
        led07.backgroundColor = [UIColor redColor];
        led = 8;
        if ( step07Active == 1 ) {
            [socket writeData:[@"A" dataUsingEncoding:NSASCIIStringEncoding] withTimeout:-1 tag:7];
        }
        if ( step23Active == 1 ) {
            [socket writeData:[@"B" dataUsingEncoding:NSASCIIStringEncoding] withTimeout:-1 tag:23];
        }
        if ( step39Active == 1 ) {
            [socket writeData:[@"C" dataUsingEncoding:NSASCIIStringEncoding] withTimeout:-1 tag:39];
        }
        if ( step55Active == 1 ) {
            [socket writeData:[@"D" dataUsingEncoding:NSASCIIStringEncoding] withTimeout:-1 tag:55];
        }
    } else if ( led == 8 ) {
        led07.backgroundColor = [UIColor clearColor];
        led08.backgroundColor = [UIColor redColor];
        led = 9;
        if ( step08Active == 1 ) {
            [socket writeData:[@"A" dataUsingEncoding:NSASCIIStringEncoding] withTimeout:-1 tag:8];
        }
        if ( step24Active == 1 ) {
            [socket writeData:[@"B" dataUsingEncoding:NSASCIIStringEncoding] withTimeout:-1 tag:24];
        }
        if ( step40Active == 1 ) {
            [socket writeData:[@"C" dataUsingEncoding:NSASCIIStringEncoding] withTimeout:-1 tag:40];
        }
        if ( step56Active == 1 ) {
            [socket writeData:[@"D" dataUsingEncoding:NSASCIIStringEncoding] withTimeout:-1 tag:56];
        }
    } else if ( led == 9 ) {
        led08.backgroundColor = [UIColor clearColor];
        led09.backgroundColor = [UIColor redColor];
        led = 10;
        if ( step09Active == 1 ) {
            [socket writeData:[@"A" dataUsingEncoding:NSASCIIStringEncoding] withTimeout:-1 tag:9];
        }
        if ( step25Active == 1 ) {
            [socket writeData:[@"B" dataUsingEncoding:NSASCIIStringEncoding] withTimeout:-1 tag:25];
        }
        if ( step41Active == 1 ) {
            [socket writeData:[@"C" dataUsingEncoding:NSASCIIStringEncoding] withTimeout:-1 tag:41];
        }
        if ( step57Active == 1 ) {
            [socket writeData:[@"D" dataUsingEncoding:NSASCIIStringEncoding] withTimeout:-1 tag:57];
        }
    } else if ( led == 10 ) {
        led09.backgroundColor = [UIColor clearColor];
        led10.backgroundColor = [UIColor redColor];
        led = 11;
        if ( step10Active == 1 ) {
            [socket writeData:[@"A" dataUsingEncoding:NSASCIIStringEncoding] withTimeout:-1 tag:10];
        }
        if ( step26Active == 1 ) {
            [socket writeData:[@"B" dataUsingEncoding:NSASCIIStringEncoding] withTimeout:-1 tag:26];
        }
        if ( step42Active == 1 ) {
            [socket writeData:[@"C" dataUsingEncoding:NSASCIIStringEncoding] withTimeout:-1 tag:42];
        }
        if ( step58Active == 1 ) {
            [socket writeData:[@"D" dataUsingEncoding:NSASCIIStringEncoding] withTimeout:-1 tag:58];
        }
    } else if ( led == 11 ) {
        led10.backgroundColor = [UIColor clearColor];
        led11.backgroundColor = [UIColor redColor];
        led = 12;
        if ( step11Active == 1 ) {
            [socket writeData:[@"A" dataUsingEncoding:NSASCIIStringEncoding] withTimeout:-1 tag:11];
        }
        if ( step27Active == 1 ) {
            [socket writeData:[@"B" dataUsingEncoding:NSASCIIStringEncoding] withTimeout:-1 tag:27];
        }
        if ( step43Active == 1 ) {
            [socket writeData:[@"C" dataUsingEncoding:NSASCIIStringEncoding] withTimeout:-1 tag:43];
        }
        if ( step59Active == 1 ) {
            [socket writeData:[@"D" dataUsingEncoding:NSASCIIStringEncoding] withTimeout:-1 tag:59];
        }
    } else if ( led == 12 ) {
        led11.backgroundColor = [UIColor clearColor];
        led12.backgroundColor = [UIColor redColor];
        led = 13;
        if ( step12Active == 1 ) {
            [socket writeData:[@"A" dataUsingEncoding:NSASCIIStringEncoding] withTimeout:-1 tag:12];
        }
        if ( step28Active == 1 ) {
            [socket writeData:[@"B" dataUsingEncoding:NSASCIIStringEncoding] withTimeout:-1 tag:28];
        }
        if ( step44Active == 1 ) {
            [socket writeData:[@"C" dataUsingEncoding:NSASCIIStringEncoding] withTimeout:-1 tag:44];
        }
        if ( step60Active == 1 ) {
            [socket writeData:[@"D" dataUsingEncoding:NSASCIIStringEncoding] withTimeout:-1 tag:60];
        }
    } else if ( led == 13 ) {
        led12.backgroundColor = [UIColor clearColor];
        led13.backgroundColor = [UIColor redColor];
        led = 14;
        if ( step13Active == 1 ) {
            [socket writeData:[@"A" dataUsingEncoding:NSASCIIStringEncoding] withTimeout:-1 tag:13];
        }
        if ( step29Active == 1 ) {
            [socket writeData:[@"B" dataUsingEncoding:NSASCIIStringEncoding] withTimeout:-1 tag:29];
        }
        if ( step45Active == 1 ) {
            [socket writeData:[@"C" dataUsingEncoding:NSASCIIStringEncoding] withTimeout:-1 tag:45];
        }
        if ( step61Active == 1 ) {
            [socket writeData:[@"D" dataUsingEncoding:NSASCIIStringEncoding] withTimeout:-1 tag:61];
        }
    } else if ( led == 14 ) {
        led13.backgroundColor = [UIColor clearColor];
        led14.backgroundColor = [UIColor redColor];
        led = 15;
        if ( step14Active == 1 ) {
            [socket writeData:[@"A" dataUsingEncoding:NSASCIIStringEncoding] withTimeout:-1 tag:14];
        }
        if ( step30Active == 1 ) {
            [socket writeData:[@"B" dataUsingEncoding:NSASCIIStringEncoding] withTimeout:-1 tag:30];
        }
        if ( step46Active == 1 ) {
            [socket writeData:[@"C" dataUsingEncoding:NSASCIIStringEncoding] withTimeout:-1 tag:46];
        }
        if ( step62Active == 1 ) {
            [socket writeData:[@"D" dataUsingEncoding:NSASCIIStringEncoding] withTimeout:-1 tag:62];
        }
    } else if ( led == 15 ) {
        led14.backgroundColor = [UIColor clearColor];
        led15.backgroundColor = [UIColor redColor];
        led = 16;
        if ( step15Active == 1 ) {
            [socket writeData:[@"A" dataUsingEncoding:NSASCIIStringEncoding] withTimeout:-1 tag:15];
        }
        if ( step31Active == 1 ) {
            [socket writeData:[@"B" dataUsingEncoding:NSASCIIStringEncoding] withTimeout:-1 tag:31];
        }
        if ( step47Active == 1 ) {
            [socket writeData:[@"C" dataUsingEncoding:NSASCIIStringEncoding] withTimeout:-1 tag:47];
        }
        if ( step63Active == 1 ) {
            [socket writeData:[@"D" dataUsingEncoding:NSASCIIStringEncoding] withTimeout:-1 tag:63];
        }
    } else if ( led == 16 ) {
        led15.backgroundColor = [UIColor clearColor];
        led16.backgroundColor = [UIColor redColor];
        led = 1;
        if ( step16Active == 1 ) {
            [socket writeData:[@"A" dataUsingEncoding:NSASCIIStringEncoding] withTimeout:-1 tag:16];
        }
        if ( step32Active == 1 ) {
            [socket writeData:[@"B" dataUsingEncoding:NSASCIIStringEncoding] withTimeout:-1 tag:32];
        }
        if ( step48Active == 1 ) {
            [socket writeData:[@"C" dataUsingEncoding:NSASCIIStringEncoding] withTimeout:-1 tag:48];
        }
        if ( step64Active == 1 ) {
            [socket writeData:[@"D" dataUsingEncoding:NSASCIIStringEncoding] withTimeout:-1 tag:64];
        }
    }
}

//Text field delegate methods
- (BOOL)textFieldShouldReturn:(UITextField*)aTextField
{
    [aTextField resignFirstResponder];
    return YES;
}

- (void)textFieldDidEndEditing:(UITextField *)textField
{
    int bpmValue= [bpmField.text integerValue];
    bpm = ( 15. / bpmValue );
    if ( startStopBool == 1 ) {
        [timer invalidate];
        timer = [NSTimer scheduledTimerWithTimeInterval:(bpm) target:self selector:@selector(time) userInfo:nil repeats:YES];
    }
}

//- (BOOL)onUdpSocket:(AsyncUdpSocket *)sock didReceiveData:(NSData *)data withTag:(long)tag fromHost:(NSString *)host port:(UInt16)port
//{
//    unsigned char buffer [data.length];
//    NSMutableData *truncData = [[NSMutableData alloc] init];
//    
//    [data getBytes:buffer range:NSMakeRange(60, 32)];
//    [truncData appendBytes:&buffer length:32];
//    
//    NSString *msg = [[NSString alloc] initWithBytes:truncData.bytes length:truncData.length encoding:1 ];
//    NSString *search = @"NOT";
//    
//    if ([msg rangeOfString:search].location != NSNotFound) {
//        NSLog(@"%@ found", search);
//    }
//    
//    NSLog(@"%@", msg);
//    NSLog(@"Data: %@",data);
//    NSLog(@"Host: %@", host);
//    
//    return YES;
//}
//
//- (void)udpSocket:(GCDAsyncUdpSocket *)sock didReceiveData:(NSData *)data fromAddress:(NSData *)address withFilterContext:(id)filterContext
//{
//    
//}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
