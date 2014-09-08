//
//  ViewController.h
//  Progress
//
//  Created by bhavesh donga on 2/1/14.
//  Copyright (c) 2014 bhavesh donga. All rights reserved.
//

#import <UIKit/UIKit.h>

@class NLoader;
@interface ViewController : UIViewController
{
    NLoader *customLoader;
    IBOutlet UIButton *btn;
}

-(IBAction)btnhide_show:(id)sender;

@end
