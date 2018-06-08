//
//  UIView+Frame.m
//  CFFramework
//
//  Created by chen on 2018/6/8.
//

#import "UIView+Frame.h"

@implementation UIView (Frame)

- (void)setTop:(CGFloat)top
{
    CGRect  frame   = self.frame;
    frame.origin.y  = top;
    self.frame      = frame;
}

- (CGFloat)top
{
    return CGRectGetMinY(self.frame);
}

- (void)setLeft:(CGFloat)left
{
    CGRect frame    = self.frame;
    frame.origin.x  = left;
    self.frame      = frame;
}

- (CGFloat)left
{
    return CGRectGetMinX(self.frame);
}

- (void)setBottom:(CGFloat)bottom
{
    CGRect  frame   = self.frame;
    frame.origin.y  = bottom - frame.size.height;
    self.frame      = frame;
}

- (CGFloat)bottom
{
    return CGRectGetMaxY(self.frame);
}

- (void)setRight:(CGFloat)right
{
    CGRect  frame   = self.frame;
    frame.origin.x  = right - frame.size.width;
    self.frame      = frame;
}

- (CGFloat)right
{
    return CGRectGetMaxX(self.frame);
}

- (void)setCenterX:(CGFloat)centerX
{
    CGPoint center  = self.center;
    center.x        = centerX;
    self.center     = center;
}

- (CGFloat)centerX
{
    return CGRectGetMidX(self.frame);
}

- (void)setCenterY:(CGFloat)centerY
{
    CGPoint center  = self.center;
    center.y        = centerY;
    self.center     = center;
}

- (CGFloat)centerY
{
    return CGRectGetMidY(self.frame);
}

@end
