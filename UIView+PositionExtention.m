//
//  UIView+PositionExtention.m
//  CBHelpersExample
//
//  Created by sky on 15/5/11.
//
//

#import "UIView+PositionExtention.h"
#define SCREEN_SCALE                    ([[UIScreen mainScreen] scale])
#define PIXEL_INTEGRAL(pointValue)      (round(pointValue * SCREEN_SCALE) / SCREEN_SCALE)

@implementation UIView (PositionExtention)

// Setters
-(void)setFrameX:(CGFloat)x{
    self.frame      = CGRectMake(PIXEL_INTEGRAL(x), self.frameY, self.frameWidth, self.frameHeight);
}

-(void)setFrameY:(CGFloat)y{
    self.frame      = CGRectMake(self.frameX, PIXEL_INTEGRAL(y), self.frameWidth, self.frameHeight);
}

-(void)setFrameWidth:(CGFloat)width{
    self.frame      = CGRectMake(self.frameX, self.frameY, PIXEL_INTEGRAL(width), self.frameHeight);
}

-(void)setFrameHeight:(CGFloat)height{
    self.frame      = CGRectMake(self.frameX, self.frameY, self.frameWidth, PIXEL_INTEGRAL(height));
}

-(void)setFrameOrigin:(CGPoint)origin{
    self.frameX          = origin.x;
    self.frameY          = origin.y;
}

-(void)setFrameSize:(CGSize)size{
    self.frameWidth      = size.width;
    self.frameHeight     = size.height;
}

-(void)setFrameRight:(CGFloat)right {
    self.frameX          = right - self.frameWidth;
}

-(void)setFrameBottom:(CGFloat)bottom {
    self.frameY          = bottom - self.frameHeight;
}

-(void)setFrameLeft:(CGFloat)left{
    self.frameX          = left;
}

-(void)setFrameTop:(CGFloat)top{
    self.frameY          = top;
}

-(void)setFrameCenterX:(CGFloat)centerX {
    self.center     = CGPointMake(PIXEL_INTEGRAL(centerX), self.center.y);
}

-(void)setFrameCenterY:(CGFloat)centerY {
    self.center     = CGPointMake(self.center.x, PIXEL_INTEGRAL(centerY));
}

-(void)setBoundsX:(CGFloat)boundsX{
    self.bounds     = CGRectMake(PIXEL_INTEGRAL(boundsX), self.boundsY, self.boundsWidth, self.boundsHeight);
}

-(void)setBoundsY:(CGFloat)boundsY{
    self.bounds     = CGRectMake(self.boundsX, PIXEL_INTEGRAL(boundsY), self.boundsWidth, self.boundsHeight);
}

-(void)setBoundsWidth:(CGFloat)boundsWidth{
    self.bounds     = CGRectMake(self.boundsX, self.boundsY, PIXEL_INTEGRAL(boundsWidth), self.boundsHeight);
}

-(void)setBoundsHeight:(CGFloat)boundsHeight{
    self.bounds     = CGRectMake(self.boundsX, self.boundsY, self.boundsWidth, PIXEL_INTEGRAL(boundsHeight));
}

// Getters
-(CGFloat)frameX{
    return self.frame.origin.x;
}

-(CGFloat)frameY{
    return self.frame.origin.y;
}

-(CGFloat)frameWidth{
    return self.frame.size.width;
}

-(CGFloat)frameHeight{
    return self.frame.size.height;
}

-(CGPoint)frameOrigin{
    return CGPointMake(self.frameX, self.frameY);
}

-(CGSize)frameSize{
    return CGSizeMake(self.frameWidth, self.frameHeight);
}

-(CGFloat)frameRight {
    return self.frame.origin.x + self.frame.size.width;
}

-(CGFloat)frameBottom {
    return self.frame.origin.y + self.frame.size.height;
}

-(CGFloat)frameLeft{
    return self.frameX;
}

-(CGFloat)frameTop{
    return self.frameY;
}

-(CGFloat)frameCenterX {
    return self.center.x;
}

-(CGFloat)frameCenterY {
    return self.center.y;
}

-(UIView *)lastSubviewOnX{
    if(self.subviews.count > 0){
        UIView *outView = self.subviews[0];
        
        for(UIView *v in self.subviews)
            if(v.frameX > outView.frameX)
                outView = v;
        
        return outView;
    }
    
    return nil;
}

-(UIView *)lastSubviewOnY{
    if(self.subviews.count > 0){
        UIView *outView = self.subviews[0];
        
        for(UIView *v in self.subviews)
            if(v.frameY > outView.frameY)
                outView = v;
        
        return outView;
    }
    
    return nil;
}

-(CGFloat)boundsX{
    return self.bounds.origin.x;
}

-(CGFloat)boundsY{
    return self.bounds.origin.y;
}

-(CGFloat)boundsWidth{
    return self.bounds.size.width;
}

-(CGFloat)boundsHeight{
    return self.bounds.size.height;
}

// Methods
-(void)centerToParent{
    if(self.superview){
        switch ([UIApplication sharedApplication].statusBarOrientation){
            case UIInterfaceOrientationLandscapeLeft:
            case UIInterfaceOrientationLandscapeRight:{
                self.frameOrigin     = CGPointMake((self.superview.frameHeight / 2.0) - (self.frameWidth / 2.0),
                                              (self.superview.frameWidth / 2.0) - (self.frameHeight / 2.0));
                break;
            }
            case UIInterfaceOrientationPortrait:
            case UIInterfaceOrientationPortraitUpsideDown:{
                self.frameOrigin     = CGPointMake((self.superview.frameWidth / 2.0) - (self.frameWidth / 2.0),
                                              (self.superview.frameHeight / 2.0) - (self.frameHeight / 2.0));
                break;
            }
            case UIInterfaceOrientationUnknown:
                return;
        }
    }
}


@end
