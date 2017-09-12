//
//  UITextView+AGi18n.m
//  AGi18n
//
//  Created by Angel Garcia on 3/17/13.
//  Copyright (c) 2013 angelolloqui.com. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NSObject+AGi18n.h"

@implementation UITextView (AGi18n)

- (void)localizeFromNib {
    //Replace text with localizable version
    if (self.text.length > 0) {
        self.text = [[NSBundle mainBundle] localizedStringForKey:self.text value:@"" table:nil];
        [self layoutIfNeeded];
    }
}

@end
