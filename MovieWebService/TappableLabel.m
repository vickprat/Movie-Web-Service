//
//  TappableLabel.m
//  MovieWebService
//
//  Created by Prateek Khandelwal on 6/4/18.
//  Copyright © 2017 Talk.to FZC. All rights reserved.
//

#import "TappableLabel.h"

@implementation TappableLabel

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.userInteractionEnabled = YES;
    }
    return self;
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    CGPoint touchPoint = [[touches anyObject] locationInView:self];
    BOOL selected = (CGRectContainsPoint(self.bounds, touchPoint));

    if (selected) {
        [self.delegate didReceiveTouch];
    }
}

@end
