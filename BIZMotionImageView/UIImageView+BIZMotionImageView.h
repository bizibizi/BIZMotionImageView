//
//  UIImageView+BIZMotionImageView.h
//  BIZMovingImage
//
//  Created by IgorBizi@mail.ru on 12/9/15.
//  Copyright © 2015 IgorBizi@mail.ru. All rights reserved.
//

#import <UIKit/UIKit.h>


typedef enum {
    kMovingDirectionUp,
    kMovingDirectionDown,
    kMovingDirectionLeft,
    kMovingDirectionRight
} kMovingDirection;


@interface UIImageView (BIZMotionImageView)
- (void)movingImageToDirection:(kMovingDirection)direction;
@end
