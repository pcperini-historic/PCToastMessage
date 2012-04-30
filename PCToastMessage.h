//
//  PCToastMessage.h
//  PCToastMessageTest
//
//  Created by Patrick Perini on 9/29/11.
//  Licensing information available in README.md
//

#define PCToastMessageShortDuration     1.0
#define PCToastMessageDefaultDuration   2.0
#define PCToastMessageLongDuration      3.0

#import <Foundation/Foundation.h>
#import <QuartzCore/QuartzCore.h>

@interface PCToastMessage : UIView
{
    @private
    UILabel *_label;
}

@property (assign) CGFloat  duration;
@property (copy)   NSString *text;

+ (void)toastWithText:      (NSString *)aString;
+ (void)toastWithText:      (NSString *)aString inView:  (UIView *)view;
+ (void)toastWithDuration:  (CGFloat)aDuration  andText: (NSString *)aString;
+ (void)toastWithDuration:  (CGFloat)aDuration  andText: (NSString *)aString inView: (UIView *)view;

- (id)initWithText:         (NSString *)aString;
- (id)initWithDuration:     (CGFloat)aDuration  andText: (NSString *)aString;

- (void)display;
- (void)displayInView:      (UIView *)view;

@end
