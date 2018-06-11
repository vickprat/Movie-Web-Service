//
//  MovieListTableViewCell.h
//  MovieWebService
//
//  Created by Prateek Khandelwal on 6/4/18.
//  Copyright © 2017 Talk.to FZC. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol MovieListTableViewCellInput;

@interface MovieListTableViewCell : UITableViewCell

@property (strong, nonatomic) IBOutlet UILabel *name;
@property (strong, nonatomic) IBOutlet UILabel *date;
@property (strong, nonatomic) IBOutlet UILabel *filmRating;
@property (strong, nonatomic) IBOutlet UILabel *rating;

- (void)setupWithDataProvider:(id<MovieListTableViewCellInput>)dataProvider;

@end
