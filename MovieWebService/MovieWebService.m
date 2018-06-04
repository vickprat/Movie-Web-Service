//
//  MovieWebService.m
//  MovieWebService
//
//  Created by Prateek Khandelwal on 6/4/18.
//  Copyright © 2018 TestCompany. All rights reserved.
//

#import "MovieWebService.h"

@implementation MovieWebService

- (void)getFilmDataWithCallback:(void (^)(NSDictionary *filmData))callback {
  dispatch_async(dispatch_get_global_queue(QOS_CLASS_UTILITY, 0), ^{
    NSDictionary *filmData = @{
                               @"filmRating" : @3,
                               @"languages": @[
                                   @"English",
                                   @"Thai"
                                   ],
                               @"nominated": @1,
                               @"releaseDate": @1350000000,
                               @"cast": @[
                                   @{
                                     @"dateOfBirth": @-436147200,
                                     @"nominated": @1,
                                     @"name": @"Bryan Cranston",
                                     @"screenName": @"Jack Donnell",
                                     @"biography": @"Bryan Lee Cranston is an American actor, voice actor, writer and director."
                                     }
                                   ],
                               @"name": @"Argo",
                               @"rating": @7.8,
                               @"director": @{
                                   @"dateOfBirth": @82684800,
                                   @"nominated": @1,
                                   @"name": @"Ben Affleck",
                                   @"biography": @"Benjamin Geza Affleck was born on August 15, 1972 in Berkeley, California, USA but raised in Cambridge, Massachusetts, USA."
                                   }
                               };
    if (callback != nil) {
      callback(filmData);
    }
  });
}

@end
