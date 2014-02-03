//
//  ViewController.m
//  Progress
//
//  Created by bhavesh donga on 2/1/14.
//  Copyright (c) 2014 bhavesh donga. All rights reserved.
//

#import "ViewController.h"
#import "NLoader.h"

@interface ViewController ()

@end

@implementation ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.navigationController.navigationBarHidden = YES;
    customLoader = [[NLoader alloc] init];
    
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)btnhide_show:(id)sender
{
    if ([btn.titleLabel.text isEqualToString:@"show"])
    {
        [btn setTitle:@"hide" forState:UIControlStateNormal];
        [customLoader showLoaderWithView:self.view color:[UIColor blackColor]];
    }
    else
    {
        [btn setTitle:@"show" forState:UIControlStateNormal];
        [customLoader removeLoader];
    }
}
@end
