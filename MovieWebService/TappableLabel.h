//
//  TappableLabel.h
//  MovieWebService
//
//  Created by Prateek Khandelwal on 6/4/18.
//  Copyright © 2017 Talk.to FZC. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol TappableLabelDelegate;

@interface TappableLabel : UILabel

@property (nonatomic, strong) id<TappableLabelDelegate> delegate;

@end

@protocol TappableLabelDelegate <NSObject>

@optional

- (void)didReceiveTouch;

@end
