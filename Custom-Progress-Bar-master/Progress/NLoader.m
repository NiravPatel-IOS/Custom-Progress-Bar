//
//  NLoader.m
//  Progress
//
//  Created by bhavesh donga on 2/1/14.
//  Copyright (c) 2014 bhavesh donga. All rights reserved.
//

#import "NLoader.h"

@implementation NLoader

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

-(void)showLoaderWithView:(UIView *)CustomView color:(UIColor *)color
{
    loader = [[UIView alloc] initWithFrame:CGRectMake((CustomView.frame.size.width/2)-40, (CustomView.frame.size.height/2)-40, 80, 80)];
    loader.backgroundColor = [UIColor clearColor];
    loader.alpha = 0.8;
    
    button1 = [UIButton buttonWithType:UIButtonTypeCustom];
    button1.frame = CGRectMake(0, (loader.frame.size.height/2)-8, 2, 2);
    button1.backgroundColor = color;
    button1.tag = 1;
    CALayer *btnLayer1 = [button1 layer];
    [btnLayer1 setMasksToBounds:YES];
    [btnLayer1 setCornerRadius:10.0f];
    [loader addSubview:button1];
    
    button2 = [UIButton buttonWithType:UIButtonTypeCustom];
    button2.frame = CGRectMake((loader.frame.size.width/5)-8, (loader.frame.size.height/5)-8, 4, 4);
    button2.backgroundColor = color;
    button2.tag = 2;
    CALayer *btnLayer2 = [button2 layer];
    [btnLayer2 setMasksToBounds:YES];
    [btnLayer2 setCornerRadius:10.0f];
    [loader addSubview:button2];
    
    button3 = [UIButton buttonWithType:UIButtonTypeCustom];
    button3.frame = CGRectMake((loader.frame.size.height/2)-8, 0, 6, 6);
    button3.backgroundColor = color;
    button3.tag = 3;
    CALayer *btnLayer3 = [button3 layer];
    [btnLayer3 setMasksToBounds:YES];
    [btnLayer3 setCornerRadius:10.0f];
    [loader addSubview:button3];
    
    button4 = [UIButton buttonWithType:UIButtonTypeCustom];
    button4.frame = CGRectMake(((loader.frame.size.width/5)*4)-8, (loader.frame.size.height/5)-8, 8, 8);
    button4.backgroundColor = color;
    button4.tag = 4;
    CALayer *btnLayer4 = [button4 layer];
    [btnLayer4 setMasksToBounds:YES];
    [btnLayer4 setCornerRadius:10.0f];
    [loader addSubview:button4];
    
    button5 = [UIButton buttonWithType:UIButtonTypeCustom];
    button5.frame = CGRectMake(loader.frame.size.width-20, (loader.frame.size.height/2)-8, 10, 10);
    button5.backgroundColor = color;
    button5.tag = 5;
    CALayer *btnLayer5 = [button5 layer];
    [btnLayer5 setMasksToBounds:YES];
    [btnLayer5 setCornerRadius:10.0f];
    [loader addSubview:button5];
    
    button6 = [UIButton buttonWithType:UIButtonTypeCustom];
    button6.frame = CGRectMake(((loader.frame.size.width/5)*4)-8, ((loader.frame.size.height/5)*4)-8, 12, 12);
    button6.backgroundColor = color;
    button6.tag = 6;
    CALayer *btnLayer6 = [button6 layer];
    [btnLayer6 setMasksToBounds:YES];
    [btnLayer6 setCornerRadius:10.0f];
    [loader addSubview:button6];
    
    button7 = [UIButton buttonWithType:UIButtonTypeCustom];
    button7.frame = CGRectMake((loader.frame.size.width/2)-8, (loader.frame.size.height)-20, 14, 14);
    button7.backgroundColor = color;
    button7.tag = 7;
    CALayer *btnLayer7 = [button7 layer];
    [btnLayer7 setMasksToBounds:YES];
    [btnLayer7 setCornerRadius:10.0f];
    [loader addSubview:button7];
    
    button8 = [UIButton buttonWithType:UIButtonTypeCustom];
    button8.frame = CGRectMake((loader.frame.size.width/5)-8, ((loader.frame.size.height/5)*4)-8, 16, 16);
    button8.backgroundColor = color;
    button8.tag = 8;
    CALayer *btnLayer8 = [button8 layer];
    [btnLayer8 setMasksToBounds:YES];
    [btnLayer8 setCornerRadius:10.0f];
    [loader addSubview:button8];
    
    [CustomView addSubview:loader];
    
    val = 1;
    timer = [NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(loader) userInfo:nil repeats:YES];
    
}

-(void)removeLoader
{
    if (loader)
    {
        [timer invalidate];
        timer = nil;
        [loader removeFromSuperview];
    }
}

-(void)loader
{
    int j = 0;
    int m = 0;
    
    for (int i = val; i > 0; i--)
    {
        
        
        UIButton *tmpButton = (UIButton *)[loader viewWithTag:i];
        tmpButton.frame = CGRectMake(tmpButton.frame.origin.x, tmpButton.frame.origin.y,20-(j*2),20-(j*2));
        j++;
    }
    m = j;
    for (int i = (8-j); i > 0; i--)
    {
        UIButton *tmpButton = (UIButton *)[loader viewWithTag:val+(i+1)];
        tmpButton.frame = CGRectMake(tmpButton.frame.origin.x, tmpButton.frame.origin.y,20-(m*2),20-(m*2));
        m++;
    }
    
    
    if (val == 8)
    {
        val = 1;
    }
    else
    {
        val ++;
    }
    
}

@end
