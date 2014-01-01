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
    led = 1;
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
    
    //Initialize timer
	timer = [NSTimer scheduledTimerWithTimeInterval:(0.25) target:self selector:@selector(time) userInfo:nil repeats:YES];
    
    //Initialize Socket
    socket = [[AsyncUdpSocket alloc] initWithDelegate:self];
    [socket enableBroadcast:YES error:nil];
    [socket  bindToAddress:@"0.0.0.0" port:55555 error:nil];
    [socket receiveWithTimeout:-1 tag:0];
    
    //Draw step buttons
    step01=[UIButton buttonWithType:UIButtonTypeCustom];
    step01.frame = CGRectMake(27.5, 40, 20, 20);
    step01.layer.cornerRadius = 2.5;
    step01.layer.borderWidth = 0.5;
    [step01 setBackgroundColor:[UIColor lightGrayColor]];
    //For future reference
    //[step01 setBackgroundColor:[UIColor colorWithRed:(255/255.0) green:(180/255.0) blue:(200/255.0) alpha:1]];
    [step01 addTarget:self action:@selector(step01ButtonPressed) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:step01];
    
    step02 = [UIButton buttonWithType:UIButtonTypeCustom];
    step02.frame = CGRectMake(52.5, 40, 20, 20);
    step02.layer.cornerRadius = 2.5;
    step02.layer.borderWidth = 0.5;
    [step02 setBackgroundColor:[UIColor lightGrayColor]];
    [step02 addTarget:self action:@selector(step02ButtonPressed) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:step02];
    
    step03 = [UIButton buttonWithType:UIButtonTypeCustom];
    step03.frame = CGRectMake(77.5, 40, 20, 20);
    step03.layer.cornerRadius = 2.5;
    step03.layer.borderWidth = 0.5;
    [step03 setBackgroundColor:[UIColor lightGrayColor]];
    [step03 addTarget:self action:@selector(step03ButtonPressed) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:step03];
    
    step04 = [UIButton buttonWithType:UIButtonTypeCustom];
    step04.frame = CGRectMake(102.5, 40, 20, 20);
    step04.layer.cornerRadius = 2.5;
    step04.layer.borderWidth = 0.5;
    [step04 setBackgroundColor:[UIColor lightGrayColor]];
    [step04 addTarget:self action:@selector(step04ButtonPressed) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:step04];
    
    step05=[UIButton buttonWithType:UIButtonTypeCustom];
    step05.frame = CGRectMake(137.5, 40, 20, 20);
    step05.layer.cornerRadius = 2.5;
    step05.layer.borderWidth = 0.5;
    [step05 setBackgroundColor:[UIColor lightGrayColor]];
    [step05 addTarget:self action:@selector(step05ButtonPressed) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:step05];
    
    step06 = [UIButton buttonWithType:UIButtonTypeCustom];
    step06.frame = CGRectMake(162.5, 40, 20, 20);
    step06.layer.cornerRadius = 2.5;
    step06.layer.borderWidth = 0.5;
    [step06 setBackgroundColor:[UIColor lightGrayColor]];
    [step06 addTarget:self action:@selector(step06ButtonPressed) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:step06];
    
    step07 = [UIButton buttonWithType:UIButtonTypeCustom];
    step07.frame = CGRectMake(187.5, 40, 20, 20);
    step07.layer.cornerRadius = 2.5;
    step07.layer.borderWidth = 0.5;
    [step07 setBackgroundColor:[UIColor lightGrayColor]];
    [step07 addTarget:self action:@selector(step07ButtonPressed) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:step07];
    
    step08 = [UIButton buttonWithType:UIButtonTypeCustom];
    step08.frame = CGRectMake(212.5, 40, 20, 20);
    step08.layer.cornerRadius = 2.5;
    step08.layer.borderWidth = 0.5;
    [step08 setBackgroundColor:[UIColor lightGrayColor]];
    [step08 addTarget:self action:@selector(step08ButtonPressed) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:step08];
    
    step09=[UIButton buttonWithType:UIButtonTypeCustom];
    step09.frame = CGRectMake(247.5, 40, 20, 20);
    step09.layer.cornerRadius = 2.5;
    step09.layer.borderWidth = 0.5;
    [step09 setBackgroundColor:[UIColor lightGrayColor]];
    [step09 addTarget:self action:@selector(step09ButtonPressed) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:step09];
    
    step10 = [UIButton buttonWithType:UIButtonTypeCustom];
    step10.frame = CGRectMake(272.5, 40, 20, 20);
    step10.layer.cornerRadius = 2.5;
    step10.layer.borderWidth = 0.5;
    [step10 setBackgroundColor:[UIColor lightGrayColor]];
    [step10 addTarget:self action:@selector(step10ButtonPressed) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:step10];
    
    step11 = [UIButton buttonWithType:UIButtonTypeCustom];
    step11.frame = CGRectMake(297.5, 40, 20, 20);
    step11.layer.cornerRadius = 2.5;
    step11.layer.borderWidth = 0.5;
    [step11 setBackgroundColor:[UIColor lightGrayColor]];
    [step11 addTarget:self action:@selector(step11ButtonPressed) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:step11];
    
    step12 = [UIButton buttonWithType:UIButtonTypeCustom];
    step12.frame = CGRectMake(322.5, 40, 20, 20);
    step12.layer.cornerRadius = 2.5;
    step12.layer.borderWidth = 0.5;
    [step12 setBackgroundColor:[UIColor lightGrayColor]];
    [step12 addTarget:self action:@selector(step12ButtonPressed) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:step12];
    
    step13=[UIButton buttonWithType:UIButtonTypeCustom];
    step13.frame = CGRectMake(357.5, 40, 20, 20);
    step13.layer.cornerRadius = 2.5;
    step13.layer.borderWidth = 0.5;
    [step13 setBackgroundColor:[UIColor lightGrayColor]];
    [step13 addTarget:self action:@selector(step13ButtonPressed) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:step13];
    
    step14 = [UIButton buttonWithType:UIButtonTypeCustom];
    step14.frame = CGRectMake(382.5, 40, 20, 20);
    step14.layer.cornerRadius = 2.5;
    step14.layer.borderWidth = 0.5;
    [step14 setBackgroundColor:[UIColor lightGrayColor]];
    [step14 addTarget:self action:@selector(step14ButtonPressed) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:step14];
    
    step15 = [UIButton buttonWithType:UIButtonTypeCustom];
    step15.frame = CGRectMake(407.5, 40, 20, 20);
    step15.layer.cornerRadius = 2.5;
    step15.layer.borderWidth = 0.5;
    [step15 setBackgroundColor:[UIColor lightGrayColor]];
    [step15 addTarget:self action:@selector(step15ButtonPressed) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:step15];
    
    step16 = [UIButton buttonWithType:UIButtonTypeCustom];
    step16.frame = CGRectMake(432.5, 40, 20, 20);
    step16.layer.cornerRadius = 2.5;
    step16.layer.borderWidth = 0.5;
    [step16 setBackgroundColor:[UIColor lightGrayColor]];
    [step16 addTarget:self action:@selector(step16ButtonPressed) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:step16];
    
    step17=[UIButton buttonWithType:UIButtonTypeCustom];
    step17.frame = CGRectMake(27.5, 75, 20, 20);
    step17.layer.cornerRadius = 2.5;
    step17.layer.borderWidth = 0.5;
    [step17 setBackgroundColor:[UIColor lightGrayColor]];
    [step17 addTarget:self action:@selector(step17ButtonPressed) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:step17];
    
    step18 = [UIButton buttonWithType:UIButtonTypeCustom];
    step18.frame = CGRectMake(52.5, 75, 20, 20);
    step18.layer.cornerRadius = 2.5;
    step18.layer.borderWidth = 0.5;
    [step18 setBackgroundColor:[UIColor lightGrayColor]];
    [step18 addTarget:self action:@selector(step18ButtonPressed) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:step18];
    
    step19 = [UIButton buttonWithType:UIButtonTypeCustom];
    step19.frame = CGRectMake(77.5, 75, 20, 20);
    step19.layer.cornerRadius = 2.5;
    step19.layer.borderWidth = 0.5;
    [step19 setBackgroundColor:[UIColor lightGrayColor]];
    [step19 addTarget:self action:@selector(step19ButtonPressed) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:step19];
    
    step20 = [UIButton buttonWithType:UIButtonTypeCustom];
    step20.frame = CGRectMake(102.5, 75, 20, 20);
    step20.layer.cornerRadius = 2.5;
    step20.layer.borderWidth = 0.5;
    [step20 setBackgroundColor:[UIColor lightGrayColor]];
    [step20 addTarget:self action:@selector(step20ButtonPressed) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:step20];
    
    step21=[UIButton buttonWithType:UIButtonTypeCustom];
    step21.frame = CGRectMake(137.5, 75, 20, 20);
    step21.layer.cornerRadius = 2.5;
    step21.layer.borderWidth = 0.5;
    [step21 setBackgroundColor:[UIColor lightGrayColor]];
    [step21 addTarget:self action:@selector(step21ButtonPressed) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:step21];
    
    step22 = [UIButton buttonWithType:UIButtonTypeCustom];
    step22.frame = CGRectMake(162.5, 75, 20, 20);
    step22.layer.cornerRadius = 2.5;
    step22.layer.borderWidth = 0.5;
    [step22 setBackgroundColor:[UIColor lightGrayColor]];
    [step22 addTarget:self action:@selector(step22ButtonPressed) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:step22];
    
    step23 = [UIButton buttonWithType:UIButtonTypeCustom];
    step23.frame = CGRectMake(187.5, 75, 20, 20);
    step23.layer.cornerRadius = 2.5;
    step23.layer.borderWidth = 0.5;
    [step23 setBackgroundColor:[UIColor lightGrayColor]];
    [step23 addTarget:self action:@selector(step23ButtonPressed) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:step23];
    
    step24 = [UIButton buttonWithType:UIButtonTypeCustom];
    step24.frame = CGRectMake(212.5, 75, 20, 20);
    step24.layer.cornerRadius = 2.5;
    step24.layer.borderWidth = 0.5;
    [step24 setBackgroundColor:[UIColor lightGrayColor]];
    [step24 addTarget:self action:@selector(step24ButtonPressed) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:step24];
    
    step25=[UIButton buttonWithType:UIButtonTypeCustom];
    step25.frame = CGRectMake(247.5, 75, 20, 20);
    step25.layer.cornerRadius = 2.5;
    step25.layer.borderWidth = 0.5;
    [step25 setBackgroundColor:[UIColor lightGrayColor]];
    [step25 addTarget:self action:@selector(step25ButtonPressed) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:step25];
    
    step26 = [UIButton buttonWithType:UIButtonTypeCustom];
    step26.frame = CGRectMake(272.5, 75, 20, 20);
    step26.layer.cornerRadius = 2.5;
    step26.layer.borderWidth = 0.5;
    [step26 setBackgroundColor:[UIColor lightGrayColor]];
    [step26 addTarget:self action:@selector(step26ButtonPressed) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:step26];
    
    step27 = [UIButton buttonWithType:UIButtonTypeCustom];
    step27.frame = CGRectMake(297.5, 75, 20, 20);
    step27.layer.cornerRadius = 2.5;
    step27.layer.borderWidth = 0.5;
    [step27 setBackgroundColor:[UIColor lightGrayColor]];
    [step27 addTarget:self action:@selector(step27ButtonPressed) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:step27];
    
    step28 = [UIButton buttonWithType:UIButtonTypeCustom];
    step28.frame = CGRectMake(322.5, 75, 20, 20);
    step28.layer.cornerRadius = 2.5;
    step28.layer.borderWidth = 0.5;
    [step28 setBackgroundColor:[UIColor lightGrayColor]];
    [step28 addTarget:self action:@selector(step28ButtonPressed) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:step28];
    
    step29=[UIButton buttonWithType:UIButtonTypeCustom];
    step29.frame = CGRectMake(357.5, 75, 20, 20);
    step29.layer.cornerRadius = 2.5;
    step29.layer.borderWidth = 0.5;
    [step29 setBackgroundColor:[UIColor lightGrayColor]];
    [step29 addTarget:self action:@selector(step29ButtonPressed) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:step29];
    
    step30 = [UIButton buttonWithType:UIButtonTypeCustom];
    step30.frame = CGRectMake(382.5, 75, 20, 20);
    step30.layer.cornerRadius = 2.5;
    step30.layer.borderWidth = 0.5;
    [step30 setBackgroundColor:[UIColor lightGrayColor]];
    [step30 addTarget:self action:@selector(step30ButtonPressed) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:step30];
    
    step31 = [UIButton buttonWithType:UIButtonTypeCustom];
    step31.frame = CGRectMake(407.5, 75, 20, 20);
    step31.layer.cornerRadius = 2.5;
    step31.layer.borderWidth = 0.5;
    [step31 setBackgroundColor:[UIColor lightGrayColor]];
    [step31 addTarget:self action:@selector(step31ButtonPressed) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:step31];
    
    step32 = [UIButton buttonWithType:UIButtonTypeCustom];
    step32.frame = CGRectMake(432.5, 75, 20, 20);
    step32.layer.cornerRadius = 2.5;
    step32.layer.borderWidth = 0.5;
    [step32 setBackgroundColor:[UIColor lightGrayColor]];
    [step32 addTarget:self action:@selector(step32ButtonPressed) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:step32];
    
    
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

-(void)time
{
    if ( led == 1) {
        led16.backgroundColor = [UIColor clearColor];
        led01.backgroundColor = [UIColor redColor];
        led = 2;
        if ( step01Active == 1 ) {
            [socket sendData:[@"A" dataUsingEncoding:NSASCIIStringEncoding] toHost:@"10.0.1.12" port:2000 withTimeout:-1 tag:0];
        }
        if ( step17Active == 1 ) {
            [socket sendData:[@"B" dataUsingEncoding:NSASCIIStringEncoding] toHost:@"10.0.1.12" port:2000 withTimeout:-1 tag:0];
        }
    } else if ( led == 2 ) {
        led01.backgroundColor = [UIColor clearColor];
        led02.backgroundColor = [UIColor redColor];
        led = 3;
        if ( step02Active == 1 ) {
            [socket sendData:[@"A" dataUsingEncoding:NSASCIIStringEncoding] toHost:@"10.0.1.12" port:2000 withTimeout:-1 tag:0];
        }
        if ( step18Active == 1 ) {
            [socket sendData:[@"B" dataUsingEncoding:NSASCIIStringEncoding] toHost:@"10.0.1.12" port:2000 withTimeout:-1 tag:0];
        }
    } else if ( led == 3 ) {
        led02.backgroundColor = [UIColor clearColor];
        led03.backgroundColor = [UIColor redColor];
        led = 4;
        if ( step03Active == 1 ) {
            [socket sendData:[@"A" dataUsingEncoding:NSASCIIStringEncoding] toHost:@"10.0.1.12" port:2000 withTimeout:-1 tag:0];
        }
        if ( step19Active == 1 ) {
            [socket sendData:[@"B" dataUsingEncoding:NSASCIIStringEncoding] toHost:@"10.0.1.12" port:2000 withTimeout:-1 tag:0];
        }
    } else if ( led == 4 ) {
        led03.backgroundColor = [UIColor clearColor];
        led04.backgroundColor = [UIColor redColor];
        led = 5;
        if ( step04Active == 1 ) {
            [socket sendData:[@"A" dataUsingEncoding:NSASCIIStringEncoding] toHost:@"10.0.1.12" port:2000 withTimeout:-1 tag:0];
        }
        if ( step20Active == 1 ) {
            [socket sendData:[@"B" dataUsingEncoding:NSASCIIStringEncoding] toHost:@"10.0.1.12" port:2000 withTimeout:-1 tag:0];
        }
    }  else if ( led == 5 ) {
        led04.backgroundColor = [UIColor clearColor];
        led05.backgroundColor = [UIColor redColor];
        led = 6;
        if ( step05Active == 1 ) {
            [socket sendData:[@"A" dataUsingEncoding:NSASCIIStringEncoding] toHost:@"10.0.1.12" port:2000 withTimeout:-1 tag:0];
        }
        if ( step21Active == 1 ) {
            [socket sendData:[@"B" dataUsingEncoding:NSASCIIStringEncoding] toHost:@"10.0.1.12" port:2000 withTimeout:-1 tag:0];
        }
    } else if ( led == 6 ) {
        led05.backgroundColor = [UIColor clearColor];
        led06.backgroundColor = [UIColor redColor];
        led = 7;
        if ( step06Active == 1 ) {
            [socket sendData:[@"A" dataUsingEncoding:NSASCIIStringEncoding] toHost:@"10.0.1.12" port:2000 withTimeout:-1 tag:0];
        }
        if ( step22Active == 1 ) {
            [socket sendData:[@"B" dataUsingEncoding:NSASCIIStringEncoding] toHost:@"10.0.1.12" port:2000 withTimeout:-1 tag:0];
        }
    } else if ( led == 7 ) {
        led06.backgroundColor = [UIColor clearColor];
        led07.backgroundColor = [UIColor redColor];
        led = 8;
        if ( step07Active == 1 ) {
            [socket sendData:[@"A" dataUsingEncoding:NSASCIIStringEncoding] toHost:@"10.0.1.12" port:2000 withTimeout:-1 tag:0];
        }
        if ( step23Active == 1 ) {
            [socket sendData:[@"B" dataUsingEncoding:NSASCIIStringEncoding] toHost:@"10.0.1.12" port:2000 withTimeout:-1 tag:0];
        }
    } else if ( led == 8 ) {
        led07.backgroundColor = [UIColor clearColor];
        led08.backgroundColor = [UIColor redColor];
        led = 9;
        if ( step08Active == 1 ) {
            [socket sendData:[@"A" dataUsingEncoding:NSASCIIStringEncoding] toHost:@"10.0.1.12" port:2000 withTimeout:-1 tag:0];
        }
        if ( step24Active == 1 ) {
            [socket sendData:[@"B" dataUsingEncoding:NSASCIIStringEncoding] toHost:@"10.0.1.12" port:2000 withTimeout:-1 tag:0];
        }
    } else if ( led == 9 ) {
        led08.backgroundColor = [UIColor clearColor];
        led09.backgroundColor = [UIColor redColor];
        led = 10;
        if ( step09Active == 1 ) {
            [socket sendData:[@"A" dataUsingEncoding:NSASCIIStringEncoding] toHost:@"10.0.1.12" port:2000 withTimeout:-1 tag:0];
        }
        if ( step25Active == 1 ) {
            [socket sendData:[@"B" dataUsingEncoding:NSASCIIStringEncoding] toHost:@"10.0.1.12" port:2000 withTimeout:-1 tag:0];
        }
    } else if ( led == 10 ) {
        led09.backgroundColor = [UIColor clearColor];
        led10.backgroundColor = [UIColor redColor];
        led = 11;
        if ( step10Active == 1 ) {
            [socket sendData:[@"A" dataUsingEncoding:NSASCIIStringEncoding] toHost:@"10.0.1.12" port:2000 withTimeout:-1 tag:0];
        }
        if ( step26Active == 1 ) {
            [socket sendData:[@"B" dataUsingEncoding:NSASCIIStringEncoding] toHost:@"10.0.1.12" port:2000 withTimeout:-1 tag:0];
        }
    } else if ( led == 11 ) {
        led10.backgroundColor = [UIColor clearColor];
        led11.backgroundColor = [UIColor redColor];
        led = 12;
        if ( step11Active == 1 ) {
            [socket sendData:[@"A" dataUsingEncoding:NSASCIIStringEncoding] toHost:@"10.0.1.12" port:2000 withTimeout:-1 tag:0];
        }
        if ( step27Active == 1 ) {
            [socket sendData:[@"B" dataUsingEncoding:NSASCIIStringEncoding] toHost:@"10.0.1.12" port:2000 withTimeout:-1 tag:0];
        }
    } else if ( led == 12 ) {
        led11.backgroundColor = [UIColor clearColor];
        led12.backgroundColor = [UIColor redColor];
        led = 13;
        if ( step12Active == 1 ) {
            [socket sendData:[@"A" dataUsingEncoding:NSASCIIStringEncoding] toHost:@"10.0.1.12" port:2000 withTimeout:-1 tag:0];
        }
        if ( step28Active == 1 ) {
            [socket sendData:[@"B" dataUsingEncoding:NSASCIIStringEncoding] toHost:@"10.0.1.12" port:2000 withTimeout:-1 tag:0];
        }
    } else if ( led == 13 ) {
        led12.backgroundColor = [UIColor clearColor];
        led13.backgroundColor = [UIColor redColor];
        led = 14;
        if ( step13Active == 1 ) {
            [socket sendData:[@"A" dataUsingEncoding:NSASCIIStringEncoding] toHost:@"10.0.1.12" port:2000 withTimeout:-1 tag:0];
        }
        if ( step29Active == 1 ) {
            [socket sendData:[@"B" dataUsingEncoding:NSASCIIStringEncoding] toHost:@"10.0.1.12" port:2000 withTimeout:-1 tag:0];
        }
    } else if ( led == 14 ) {
        led13.backgroundColor = [UIColor clearColor];
        led14.backgroundColor = [UIColor redColor];
        led = 15;
        if ( step14Active == 1 ) {
            [socket sendData:[@"A" dataUsingEncoding:NSASCIIStringEncoding] toHost:@"10.0.1.12" port:2000 withTimeout:-1 tag:0];
        }
        if ( step30Active == 1 ) {
            [socket sendData:[@"B" dataUsingEncoding:NSASCIIStringEncoding] toHost:@"10.0.1.12" port:2000 withTimeout:-1 tag:0];
        }
    } else if ( led == 15 ) {
        led14.backgroundColor = [UIColor clearColor];
        led15.backgroundColor = [UIColor redColor];
        led = 16;
        if ( step15Active == 1 ) {
            [socket sendData:[@"A" dataUsingEncoding:NSASCIIStringEncoding] toHost:@"10.0.1.12" port:2000 withTimeout:-1 tag:0];
        }
        if ( step31Active == 1 ) {
            [socket sendData:[@"B" dataUsingEncoding:NSASCIIStringEncoding] toHost:@"10.0.1.12" port:2000 withTimeout:-1 tag:0];
        }
    } else if ( led == 16 ) {
        led15.backgroundColor = [UIColor clearColor];
        led16.backgroundColor = [UIColor redColor];
        led = 1;
        if ( step16Active == 1 ) {
            [socket sendData:[@"A" dataUsingEncoding:NSASCIIStringEncoding] toHost:@"10.0.1.12" port:2000 withTimeout:-1 tag:0];
        }
        if ( step32Active == 1 ) {
            [socket sendData:[@"B" dataUsingEncoding:NSASCIIStringEncoding] toHost:@"10.0.1.12" port:2000 withTimeout:-1 tag:0];
        }
    }
}

- (BOOL)onUdpSocket:(AsyncUdpSocket *)sock didReceiveData:(NSData *)data withTag:(long)tag fromHost:(NSString *)host port:(UInt16)port
{
    unsigned char buffer [data.length];
    NSMutableData *truncData = [[NSMutableData alloc] init];
    
    [data getBytes:buffer range:NSMakeRange(60, 32)];
    [truncData appendBytes:&buffer length:32];
    
    NSString *msg = [[NSString alloc] initWithBytes:truncData.bytes length:truncData.length encoding:1 ];
    NSString *search = @"NOT";
    
    if ([msg rangeOfString:search].location != NSNotFound) {
        NSLog(@"%@ found", search);
    }
    
    NSLog(@"%@", msg);
    NSLog(@"Data: %@",data);
    NSLog(@"Host: %@", host);
    
    return YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
