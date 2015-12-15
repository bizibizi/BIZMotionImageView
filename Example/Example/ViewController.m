//
//  ViewController.m
//  Example
//
//  Created by IgorBizi@mail.ru on 12/15/15.
//  Copyright © 2015 IgorBizi@mail.ru. All rights reserved.
//

#import "ViewController.h"
#import "UIImageView+BIZMotionImageView.h"


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
    
    [self.imageView1 movingImageToDirection:kMovingDirectionUp];
    [self.imageView2 movingImageToDirection:kMovingDirectionRight];
    [self.imageView3 movingImageToDirection:kMovingDirectionDown];
    [self.imageView4 movingImageToDirection:kMovingDirectionLeft];
}


@end
