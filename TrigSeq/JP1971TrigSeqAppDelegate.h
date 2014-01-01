//
//  JP1971TrigSeqAppDelegate.h
//  TrigSeq
//
//  Created by Jameson Proctor on 12/30/13.
//  Copyright (c) 2013 Jameson Proctor. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JP1971TrigSeqAppDelegate : NSObject <UIApplicationDelegate> {
    NSString *port;
}

@property (strong, nonatomic) UIWindow *window;

@property (nonatomic, retain) NSString *port;

@end
