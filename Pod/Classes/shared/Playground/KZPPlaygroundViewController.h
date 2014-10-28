//
//  Created by Krzysztof Zabłocki(http://twitter.com/merowing_) on 19/10/14.
//
//
//


@import Foundation;

#if TARGET_OS_IPHONE
@import UIKit;
#else
@import AppKit;
#endif

#if TARGET_OS_IPHONE
@interface KZPPlaygroundViewController : UIViewController
#else
@interface KZPPlaygroundViewController : NSViewController

@property(nonatomic, assign) BOOL timelineHidden;
+ (instancetype)playgroundViewController;

@end
