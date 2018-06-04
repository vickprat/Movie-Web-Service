//
//  MovieListTableViewCellInput.h
//  MovieWebService
//
//  Created by Prateek Khandelwal on 6/4/18.
//  Copyright © 2018 TestCompany. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol MovieListTableViewCellInput <NSObject>

@property (strong, readonly) NSString *filmName;
@property (strong, readonly) NSString *dateString;
@property (strong, readonly) NSString *filmRating;
@property (strong, readonly) NSString *rating;

@end
