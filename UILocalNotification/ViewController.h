//
//  ViewController.h
//  UILocalNotification
//
//  Created by Stephan Gopaul on 12/03/2014.
//  Copyright (c) 2014 Stephan Gopaul. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    
    NSDate *dateTime;
    
}

- (IBAction)datePicker:(UIDatePicker *)sender;
- (IBAction)setNotification:(id)sender;

@end
