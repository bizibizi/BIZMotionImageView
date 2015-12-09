//
//  ViewController.m
//  BIZFloatingImage
//
//  Created by IgorBizi@mail.ru on 12/9/15.
//  Copyright © 2015 IgorBizi@mail.ru. All rights reserved.
//

#import "ViewController.h"
#import "UIImageView+BIZFloatingImage.h"


@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView1;
@property (weak, nonatomic) IBOutlet UIImageView *imageView2;
@property (weak, nonatomic) IBOutlet UIImageView *imageView3;
@property (weak, nonatomic) IBOutlet UIImageView *imageView4;
@end


@implementation ViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.imageView1 floatingImageToDirection:kFloatingDirectionUp];
    [self.imageView2 floatingImageToDirection:kFloatingDirectionRight];
    [self.imageView3 floatingImageToDirection:kFloatingDirectionDown];
    [self.imageView4 floatingImageToDirection:kFloatingDirectionLeft];
}



@end
