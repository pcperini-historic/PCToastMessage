#ITToastMessage#



Inherits From:    UIView

Declared In:      ITToastMessage.h


##Overview##

A toast is a view containing a small message for the user, much like Android's Toast widget.

The view briefly appears floating in its superview. The idea is to be as unobtrusive as possible, while still conveying information.

The easiest way to use this class is to call one of the static methods that initializes and shows a toast message.


##Tasks##

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


##Constants##

    ITToastMessageShortDuration	    1.0
    ITToastMessageDefaultDuration   2.0
    ITToastMessageLongDuration      3.0


##Properties##

**duration**

>The length of time to display the toast message.

        (assign) CGFloat duration

**text**

>The string to display in the toast message.

        (copy) NSString *text


##Class Methods##

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


##Instance Methods##

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

#License#

License Agreement for Source Code provided by Inspyre Technologies

This software is supplied to you by Inspyre Technologies in consideration of your agreement to the following terms, and your use, installation, modification or redistribution of this software constitutes acceptance of these terms. If you do not agree with these terms, please do not use, install, modify or redistribute this software.

In consideration of your agreement to abide by the following terms, and subject to these terms, Inspyre Technologies grants you a personal, non-exclusive license, to use, reproduce, modify and redistribute the software, with or without modifications, in source and/or binary forms; provided that if you redistribute the software in its entirety and without modifications, you must retain this notice and the following text and disclaimers in all such redistributions of the software, and that in all cases attribution of Inspyre Technologies as the original author of the source code shall be included in all such resulting software products or distributions. Neither the name, trademarks, service marks or logos of Inspyre Technologies may be used to endorse or promote products derived from the software without specific prior written permission from Inspyre Technologies. Except as expressly stated in this notice, no other rights or licenses, express or implied, are granted by Inspyre Technologies herein, including but not limited to any patent rights that may be infringed by your derivative works or by other works in which the software may be incorporated.

The software is provided by Inspyre Technologies on an "AS IS" basis. Inspyre Technologies MAKES NO WARRANTIES, EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION THE IMPLIED WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE, REGARDING THE SOFTWARE OR ITS USE AND OPERATION ALONE OR IN COMBINATION WITH YOUR PRODUCTS.

IN NO EVENT SHALL Inspyre Technologies BE LIABLE FOR ANY SPECIAL, INDIRECT, INCIDENTAL OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) ARISING IN ANY WAY OUT OF THE USE, REPRODUCTION, MODIFICATION AND/OR DISTRIBUTION OF THE SOFTWARE, HOWEVER CAUSED AND WHETHER UNDER THEORY OF CONTRACT, TORT (INCLUDING NEGLIGENCE), STRICT LIABILITY OR OTHERWISE, EVEN IF Inspyre Technologies HAS BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.