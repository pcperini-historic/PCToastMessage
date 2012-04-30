#PCToastMessage#



Inherits From:    UIView

Declared In:      PCToastMessage.h


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

    PCToastMessageShortDuration	    1.0
    PCToastMessageDefaultDuration   2.0
    PCToastMessageLongDuration      3.0


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

>Returns an `PCToastMessage` object initialized with the given string, for the default duration.

        + (id)initWithText:(NSString *)aString

>*Parameters:*

>`aString`

>>The string to display in the toast message.

>*Return Value:*

>An `PCToastMessage` object.

**initWithDuration:andText:**

>Returns an `PCToastMessage` object initialized with the given string, for the default duration.

        + (id)initWithDuration:(CGFloat)aDuration andText:(NSString *)aString

>*Parameters:*

>`aDuration`

>>The length of time to display the toast message.

>`aString`

>>The string to display in the toast message.

>*Return Value:*

>An `PCToastMessage` object.

**display**

>Displays the `PCToastMessage` object in the default view for the `PCToastMessage`'s duration.

        - (void)display

**displayInView:**

>Displays the `PCToastMessage` object in the given view for the `PCToastMessage`'s duration.

        - (void)displayInView:(UIView *)view

>*Parameters:*

>`view`

>>The view in which to display the toast message.

#License#

License Agreement for Source Code provided by Patrick Perini

This software is supplied to you by Patrick Perini in consideration of your agreement to the following terms, and your use, installation, modification or redistribution of this software constitutes acceptance of these terms. If you do not agree with these terms, please do not use, install, modify or redistribute this software.

In consideration of your agreement to abide by the following terms, and subject to these terms, Patrick Perini grants you a personal, non-exclusive license, to use, reproduce, modify and redistribute the software, with or without modifications, in source and/or binary forms; provided that if you redistribute the software in its entirety and without modifications, you must retain this notice and the following text and disclaimers in all such redistributions of the software, and that in all cases attribution of Patrick Perini as the original author of the source code shall be included in all such resulting software products or distributions. Neither the name, trademarks, service marks or logos of Patrick Perini may be used to endorse or promote products derived from the software without specific prior written permission from Patrick Perini. Except as expressly stated in this notice, no other rights or licenses, express or implied, are granted by Patrick Perini herein, including but not limited to any patent rights that may be infringed by your derivative works or by other works in which the software may be incorporated.

The software is provided by Patrick Perini on an "AS IS" basis. Patrick Perini MAKES NO WARRANTIES, EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION THE IMPLIED WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE, REGARDING THE SOFTWARE OR PCS USE AND OPERATION ALONE OR IN COMBINATION WITH YOUR PRODUCTS.

IN NO EVENT SHALL Patrick Perini BE LIABLE FOR ANY SPECIAL, INDIRECT, INCIDENTAL OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) ARISING IN ANY WAY OUT OF THE USE, REPRODUCTION, MODIFICATION AND/OR DISTRIBUTION OF THE SOFTWARE, HOWEVER CAUSED AND WHETHER UNDER THEORY OF CONTRACT, TORT (INCLUDING NEGLIGENCE), STRICT LIABILITY OR OTHERWISE, EVEN IF Patrick Perini HAS BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.