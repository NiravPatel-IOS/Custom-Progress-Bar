//
//  NLoader.h
//  Progress
//
//  Created by bhavesh donga on 2/1/14.
//  Copyright (c) 2014 bhavesh donga. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NLoader : UIView
{
    UIView *loader;
    UIButton *button1;
    UIButton *button2;
    UIButton *button3;
    UIButton *button4;
    UIButton *button5;
    UIButton *button6;
    UIButton *button7;
    UIButton *button8;
    NSTimer *timer;
    int val;
}

-(void)showLoaderWithView:(UIView *)CustomView color:(UIColor *)color;
-(void)removeLoader;

@end
