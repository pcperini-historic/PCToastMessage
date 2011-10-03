#ITToastMessage#


________________________________________________________________
Inherits From:    UIView

Declared In:      ITToastMessage.h
________________________________________________________________

##Overview##
________________________________________________________________
A toast is a view containing a small message for the user, much like Android's Toast widget.

The view briefly appears floating in its superview. The idea is to be as unobtrusive as possible, while still conveying information.

The easiest way to use this class is to call one of the static methods that initializes and shows a toast message.
________________________________________________________________

##Tasks##
________________________________________________________________
###Configuring Toast Messages###
    duration    (property)
    text        (property)

###Displaying a Singleton Toast Messages###
    + toastWithText:
    + toastWithText:inView:
    + toastWithDuration:andText:
    + toastWithDuration:andText:inView:

###Creating and Initializing Toast Messages###
    - initWithText:
    - initWithDuration:andText:

###Displaying Toast Messages###
    - display
    - displayInView:
________________________________________________________________

##Constants##
________________________________________________________________
    ITToastMessageShortDuration	    1.0
    ITToastMessageDefaultDuration   2.0
    ITToastMessageLongDuration      3.0
________________________________________________________________

##Properties##
________________________________________________________________
**duration**
>The length of time to display the toast message.

        (assign) CGFloat duration

**text**
>The string to display in the toast message.

        (copy) NSString *text
________________________________________________________________

##Class Methods##
________________________________________________________________
**toastWithText:**
>Creates and displays a toast message in the default view for the default duration.

        + (void)toastWithText:(NSString *)aString

>*Parameters:*

>`aString`
>>The string to display in the toast message.

**toastWithText:inView**
>Creates and displays a toast message in the given view for the default duration.

        + (void)toastWithText:(NSString *)aString inView:(UIView *)view

>*Parameters:*

>`aString`
>>The string to display in the toast message.

>`view`
>>The view in which to display the toast message.

**toastWithDuration:andText:**
>Creates and displays a toast message in the default view for the given duration.

        + (void)toastWithDuration:(CGFloat)aDuration andText:(NSString *)aString

>*Parameters:*

>`aDuration`
>>The length of time to display the toast message.

>`aString`
>>The string to display in the toast message.

**toastWithDuration:andText:inView**
>Creates and displays a toast message in the given view for the given duration.

        + (void)toastWithDuration:(CGFloat)aDuration andText:(NSString *)aString inView:(UIView *)view

>*Parameters:*

>`aDuration`
>>The length of time to display the toast message.

>`aString`
>>The string to display in the toast message.

>`view`
>>The view in which to display the toast message.
________________________________________________________________

##Instance Methods##
________________________________________________________________
**initWithText:**
>Returns an `ITToastMessage` object initialized with the given string, for the default duration.

        + (void)toastWithText:(NSString *)aString

>*Parameters:*

>`aString`
>>The string to display in the toast message.

>*Return Value:*

>An `ITToastMessage` object.

**initWithDuration:andText:**
>Returns an `ITToastMessage` object initialized with the given string, for the default duration.

        + (void)toastWithDuration:(CGFloat)aDuration andText:(NSString *)aString

>*Parameters:*

>`aDuration`
>>The length of time to display the toast message.

>`aString`
>>The string to display in the toast message.

>*Return Value:*

>An `ITToastMessage` object.

**display**
>Displays the `ITToastMessage` object in the default view for the `ITToastMessage`'s duration.

        - (void)display

**displayInView:**
>Displays the `ITToastMessage` object in the given view for the `ITToastMessage`'s duration.

        - (void)displayInView:(UIView *)view

>*Parameters:*

>`view`
>>The view in which to display the toast message.