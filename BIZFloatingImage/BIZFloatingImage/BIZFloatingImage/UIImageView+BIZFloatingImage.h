//
//  UIView+BIZFloatingImage.h
//  BIZFloatingImage
//
//  Created by IgorBizi@mail.ru on 12/9/15.
//  Copyright © 2015 IgorBizi@mail.ru. All rights reserved.
//

#import <UIKit/UIKit.h>


typedef enum {
    kFloatingDirectionUp,
    kFloatingDirectionDown,
    kFloatingDirectionLeft,
    kFloatingDirectionRight
} kFloatingDirection;


@interface UIImageView (BIZFloatingImage)
- (void)floatingImageToDirection:(kFloatingDirection)direction;
@end
