//
//  JP1971TrigSeqViewController.h
//  TrigSeq
//
//  Created by Jameson Proctor on 12/30/13.
//  Copyright (c) 2013 Jameson Proctor. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AsyncUdpSocket.h"

@interface JP1971TrigSeqViewController : UIViewController <AsyncUdpSocketDelegate>  {
    int                 led;
    int                 step01Active;
    int                 step02Active;
    int                 step03Active;
    int                 step04Active;
    int                 step05Active;
    int                 step06Active;
    int                 step07Active;
    int                 step08Active;
    int                 step09Active;
    int                 step10Active;
    int                 step11Active;
    int                 step12Active;
    int                 step13Active;
    int                 step14Active;
    int                 step15Active;
    int                 step16Active;
    int                 step17Active;
    int                 step18Active;
    int                 step19Active;
    int                 step20Active;
    int                 step21Active;
    int                 step22Active;
    int                 step23Active;
    int                 step24Active;
    int                 step25Active;
    int                 step26Active;
    int                 step27Active;
    int                 step28Active;
    int                 step29Active;
    int                 step30Active;
    int                 step31Active;
    int                 step32Active;
    IBOutlet UIButton   *step01;
    IBOutlet UIButton   *step02;
    IBOutlet UIButton   *step03;
    IBOutlet UIButton   *step04;
    IBOutlet UIButton   *step05;
    IBOutlet UIButton   *step06;
    IBOutlet UIButton   *step07;
    IBOutlet UIButton   *step08;
    IBOutlet UIButton   *step09;
    IBOutlet UIButton   *step10;
    IBOutlet UIButton   *step11;
    IBOutlet UIButton   *step12;
    IBOutlet UIButton   *step13;
    IBOutlet UIButton   *step14;
    IBOutlet UIButton   *step15;
    IBOutlet UIButton   *step16;
    IBOutlet UIButton   *step17;
    IBOutlet UIButton   *step18;
    IBOutlet UIButton   *step19;
    IBOutlet UIButton   *step20;
    IBOutlet UIButton   *step21;
    IBOutlet UIButton   *step22;
    IBOutlet UIButton   *step23;
    IBOutlet UIButton   *step24;
    IBOutlet UIButton   *step25;
    IBOutlet UIButton   *step26;
    IBOutlet UIButton   *step27;
    IBOutlet UIButton   *step28;
    IBOutlet UIButton   *step29;
    IBOutlet UIButton   *step30;
    IBOutlet UIButton   *step31;
    IBOutlet UIButton   *step32;
    UIImageView			*led01;
	UIImageView			*led02;
	UIImageView			*led03;
	UIImageView			*led04;
	UIImageView			*led05;
	UIImageView			*led06;
	UIImageView			*led07;
	UIImageView			*led08;
    UIImageView			*led09;
	UIImageView			*led10;
	UIImageView			*led11;
	UIImageView			*led12;
	UIImageView			*led13;
	UIImageView			*led14;
	UIImageView			*led15;
	UIImageView			*led16;
    AsyncUdpSocket      *socket;
    NSTimer				*timer;
}

-(IBAction)step01ButtonPressed;
-(IBAction)step02ButtonPressed;
-(IBAction)step03ButtonPressed;
-(IBAction)step04ButtonPressed;
-(IBAction)step05ButtonPressed;
-(IBAction)step06ButtonPressed;
-(IBAction)step07ButtonPressed;
-(IBAction)step08ButtonPressed;
-(IBAction)step09ButtonPressed;
-(IBAction)step10ButtonPressed;
-(IBAction)step11ButtonPressed;
-(IBAction)step12ButtonPressed;
-(IBAction)step13ButtonPressed;
-(IBAction)step14ButtonPressed;
-(IBAction)step15ButtonPressed;
-(IBAction)step16ButtonPressed;
-(IBAction)step17ButtonPressed;
-(IBAction)step18ButtonPressed;
-(IBAction)step19ButtonPressed;
-(IBAction)step20ButtonPressed;
-(IBAction)step21ButtonPressed;
-(IBAction)step22ButtonPressed;
-(IBAction)step23ButtonPressed;
-(IBAction)step24ButtonPressed;
-(IBAction)step25ButtonPressed;
-(IBAction)step26ButtonPressed;
-(IBAction)step27ButtonPressed;
-(IBAction)step28ButtonPressed;
-(IBAction)step29ButtonPressed;
-(IBAction)step30ButtonPressed;
-(IBAction)step31ButtonPressed;
-(IBAction)step32ButtonPressed;

@end
