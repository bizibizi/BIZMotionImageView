//
//  UIImageView+BIZMotionImageView.h
//  BIZMotionImageView
//
//  Created by IgorBizi@mail.ru on 12/9/15.
//  Copyright © 2015 IgorBizi@mail.ru. All rights reserved.
//

#import <UIKit/UIKit.h>


typedef enum {
    kMotionDirectionUp,
    kMotionDirectionDown,
    kMotionDirectionLeft,
    kMotionDirectionRight
} kMotionDirection;


@interface UIImageView (BIZMotionImageView)
- (void)motionImageToDirection:(kMotionDirection)direction;
@end
