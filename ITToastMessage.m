//
//  ITToastMessage.m
//  ITToastMessageTest
//
//  Created by Patrick Perini on 9/29/11.
//  Licensing information available in README.md
//

//Self
#define HorizontalPadding               20.0
#define VerticalPadding                 15.0
#define CornerRadius                    10.0
#define ShadowRadius                    3.50
#define ShadowOpacity                   0.30
#define ShadowOffset                    CGSizeZero
#define ShadowColor                     [[UIColor blackColor] CGColor]
#define BorderWidth                     1.50
#define BorderColor                     [[UIColor colorWithWhite: 0.70 alpha: 0.80] CGColor]
#define BackgroundColor                 [UIColor colorWithWhite: 0.40 alpha: 0.80]
#define VerticalPositionRatio           0.50
#define HorizontalPositionRatio         0.83
#define AutoResizingMask                UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleRightMargin

//Label
#define LabelFont                       [UIFont systemFontOfSize: 12]
#define LabelFontColor                  [UIColor whiteColor]
#define LabelShadowRadius               1.00
#define LabelShadowOpacity              0.75
#define LabelShadowOffset               CGSizeZero
#define LabelShadowColor                [[UIColor blackColor] CGColor]
#define LabelVerticalPositionRatio      0.50
#define LabelHorizontalPositionRatio    0.50

//Animation
#define MessageFadeInDuration           0.50
#define MessageFadeOutDuration          0.50

#import "ITToastMessage.h"

@implementation ITToastMessage

@synthesize duration;
@synthesize text;

+ (void)toastWithText:      (NSString *)aString
{return [ITToastMessage toastWithDuration: ITToastMessageDefaultDuration
                                  andText: aString];}

+ (void)toastWithText:      (NSString *)aString inView:  (UIView *)view
{return [ITToastMessage toastWithDuration: ITToastMessageDefaultDuration
                                  andText: aString
                                   inView: view];}

+ (void)toastWithDuration:  (CGFloat)aDuration  andText: (NSString *)aString
{return [ITToastMessage toastWithDuration: aDuration
                                  andText: aString
                                   inView: [[[[[UIApplication sharedApplication] delegate] window] rootViewController] view]];}

+ (void)toastWithDuration:  (CGFloat)aDuration  andText: (NSString *)aString inView: (UIView *)view
{
    ITToastMessage *singleton = [[ITToastMessage alloc] initWithDuration: aDuration
                                                                 andText: aString];
    [singleton displayInView: view];
    [singleton release];
}

- (id)initWithText:         (NSString *)aString
{return [self initWithDuration: ITToastMessageDefaultDuration
                       andText: aString];}

- (id)initWithDuration:     (CGFloat)aDuration  andText:(NSString *)aString
{
    self = [super init];
    if(self)
    {
        duration    = aDuration;
        text        = [aString copy];
        _label      = [[UILabel alloc] init];
        
        [_label setAdjustsFontSizeToFitWidth: YES];
        [_label setText: text];
        [_label setFont: LabelFont];
        
        CGRect frame = CGRectZero;
        frame.size = [text sizeWithFont: _label.font];
        [_label setFrame: frame];
        
        frame.size = CGSizeMake(frame.size.width + HorizontalPadding, frame.size.height + VerticalPadding);
        [self setFrame: frame];
        
        [_label setCenter: CGPointMake(frame.size.width * LabelHorizontalPositionRatio, frame.size.height * LabelVerticalPositionRatio)];
        
        [_label.layer setShadowRadius: LabelShadowRadius];
        [_label.layer setShadowOpacity: LabelShadowOpacity];
        [_label.layer setShadowColor: LabelShadowColor];
        [_label.layer setShadowOffset: LabelShadowOffset];
        
        [self addSubview: _label];
        
        [_label setTextColor: LabelFontColor];
        [_label setBackgroundColor: [UIColor clearColor]];
        
        [self.layer setBorderColor: BorderColor];
        [self.layer setBorderWidth: BorderWidth];
         
        [self setBackgroundColor: BackgroundColor];
         
        [self.layer setCornerRadius: CornerRadius];
        
        [self.layer setShadowRadius: ShadowRadius];
        [self.layer setShadowOpacity: ShadowOpacity];
        [self.layer setShadowColor: ShadowColor];
        [self.layer setShadowOffset: ShadowOffset];
        
        [self setAutoresizingMask: AutoResizingMask];
    }
    return self;
}

- (void)dealloc
{
    [_label release];
    [text release];
    [super dealloc];
}

- (void)display
{    
    [self displayInView: [[[[[UIApplication sharedApplication] delegate] window] rootViewController] view]];
}

- (void)displayInView:      (UIView *)view
{    
    if(UIDeviceOrientationIsPortrait([[UIApplication sharedApplication] statusBarOrientation]))
    {[self setCenter: CGPointMake(view.frame.size.width * VerticalPositionRatio, view.frame.size.height * HorizontalPositionRatio)];}
    else
    {[self setCenter: CGPointMake(view.frame.size.height * VerticalPositionRatio, view.frame.size.width * HorizontalPositionRatio)];}
    
    self.alpha = 0;
    [view addSubview: self];
    
    [UIView beginAnimations: nil context: nil];
    //{
        [UIView setAnimationCurve: UIViewAnimationCurveEaseIn];
        [UIView setAnimationDuration: MessageFadeInDuration];
        [UIView setAnimationDelegate: self];
        [UIView setAnimationDidStopSelector: @selector(finishDisplay)];
        self.alpha = 1;
    //}
    [UIView commitAnimations];
}

- (void)finishDisplay
{
    [UIView beginAnimations: nil context: nil];
    //{
        [UIView setAnimationDelay: duration];
        [UIView setAnimationCurve: UIViewAnimationCurveEaseOut];
        [UIView setAnimationDuration: MessageFadeOutDuration];
        [UIView setAnimationDelegate: self];
        [UIView setAnimationDidStopSelector: @selector(removeFromSuperview)];
        self.alpha = 0;
    //}
    [UIView commitAnimations];
}

@end