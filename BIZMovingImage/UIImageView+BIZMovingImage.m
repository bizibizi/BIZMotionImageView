//
//  UIView+BIZMovingImage.m
//  BIZMovingImage
//
//  Created by IgorBizi@mail.ru on 12/9/15.
//  Copyright © 2015 IgorBizi@mail.ru. All rights reserved.
//

#import "UIImageView+BIZMovingImage.h"
@import QuartzCore;


@implementation UIImageView (BIZMovingImage)


- (void)movingImageToDirection:(kMovingDirection)direction
{
    self.layer.masksToBounds = YES;

    UIImage *image = self.image;
    
    UIColor *backgroundPattern = [UIColor colorWithPatternImage:image];
    CALayer *background = [CALayer layer];
    background.backgroundColor = backgroundPattern.CGColor;
    background.transform = CATransform3DMakeScale(1, -1, 1);
    background.anchorPoint = CGPointMake(0, 1);
    CGSize viewSize = self.bounds.size;
    [self.layer addSublayer:background];
    
    CGPoint startPoint = CGPointZero;
    CGPoint endPoint = CGPointZero;

    switch (direction)
    {
        case kMovingDirectionDown:
        {
            background.frame = CGRectMake(0, 0, viewSize.width, image.size.height + viewSize.height);
            startPoint = CGPointZero;
            endPoint = CGPointMake(0, -image.size.height);
        } break;
           
        case kMovingDirectionUp:
        {
            background.frame = CGRectMake(0, 0, viewSize.width, image.size.height + viewSize.height);
            startPoint = CGPointMake(0, -image.size.height);
            endPoint = CGPointZero;
        } break;
            
        case kMovingDirectionRight:
        {
            background.frame = CGRectMake(0, 0, viewSize.width + image.size.width, viewSize.height);
            endPoint = CGPointMake(-image.size.width, 0);
            startPoint = CGPointZero;
        } break;
            
        case kMovingDirectionLeft:
        {
            background.frame = CGRectMake(0, 0, viewSize.width + image.size.width, viewSize.height);
            startPoint = CGPointMake(-image.size.width, 0);
            endPoint = CGPointZero;
        } break;
            
        default:
            break;
    }
    
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"position"];
    animation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
    animation.fromValue = [NSValue valueWithCGPoint:endPoint];
    animation.toValue = [NSValue valueWithCGPoint:startPoint];
    animation.repeatCount = HUGE_VALF;
    animation.duration = 60;
    [background addAnimation:animation forKey:@"position"];
}

@end
