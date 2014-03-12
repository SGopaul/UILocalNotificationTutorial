//
//  ViewController.m
//  UILocalNotification
//
//  Created by Stephan Gopaul on 12/03/2014.
//  Copyright (c) 2014 Stephan Gopaul. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)datePicker:(UIDatePicker *)sender {
    
    dateTime = sender.date;
    
}

- (IBAction)setNotification:(id)sender {
    
    
    // Creates the notification
    UILocalNotification *localNotification = [[UILocalNotification alloc] init];
    localNotification.fireDate = dateTime;
    localNotification.alertBody = [NSString stringWithFormat:@"Alert fired at %@", dateTime];
    localNotification.soundName = UILocalNotificationDefaultSoundName;
    localNotification.applicationIconBadgeNumber = 0;
    
    // And then sets it
    [[UIApplication sharedApplication] scheduleLocalNotification:localNotification];
    
}

@end
