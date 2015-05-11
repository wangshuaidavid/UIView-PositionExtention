//
//  UIView+PositionExtention.h
//  CBHelpersExample
//
//  Created by sky on 15/5/11.
//
//

#import <UIKit/UIKit.h>

@interface UIView (PositionExtention)

/** View's X Position */
@property (nonatomic, assign) CGFloat   frameX;

/** View's Y Position */
@property (nonatomic, assign) CGFloat   frameY;

/** View's width */
@property (nonatomic, assign) CGFloat   frameWidth;

/** View's height */
@property (nonatomic, assign) CGFloat   frameHeight;

/** View's origin - Sets X and Y Positions */
@property (nonatomic, assign) CGPoint   frameOrigin;

/** View's size - Sets Width and Height */
@property (nonatomic, assign) CGSize    frameSize;

/** Y value representing the bottom of the view **/
@property (nonatomic, assign) CGFloat   frameBottom;

/** X Value representing the right side of the view **/
@property (nonatomic, assign) CGFloat   frameRight;

/** X Value representing the top of the view (alias of x) **/
@property (nonatomic, assign) CGFloat   frameLeft;

/** Y Value representing the top of the view (alias of y) **/
@property (nonatomic, assign) CGFloat   frameTop;

/** X value of the object's center **/
@property (nonatomic, assign) CGFloat   frameCenterX;

/** Y value of the object's center **/
@property (nonatomic, assign) CGFloat   frameCenterY;

/** Returns the Subview with the heighest X value **/
@property (nonatomic, strong, readonly) UIView *lastSubviewOnX;

/** Returns the Subview with the heighest Y value **/
@property (nonatomic, strong, readonly) UIView *lastSubviewOnY;

/** View's bounds X value **/
@property (nonatomic, assign) CGFloat   boundsX;

/** View's bounds Y value **/
@property (nonatomic, assign) CGFloat   boundsY;

/** View's bounds width **/
@property (nonatomic, assign) CGFloat   boundsWidth;

/** View's bounds height **/
@property (nonatomic, assign) CGFloat   boundsHeight;

/**
 Centers the view to its parent view (if exists)
 */
-(void) centerToParent;



@end
