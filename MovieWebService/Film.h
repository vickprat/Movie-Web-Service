//
//  Film.h
//  MovieWebService
//
//  Created by testDev on 4/11/17.
//  Copyright © 2017 TestCompany. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Actor.h"
#import "Director.h"

typedef NS_ENUM(NSUInteger, FilmRating) {
  G = 0,
  PG,
  PG13,
  R,
  NC17
};

NS_ASSUME_NONNULL_BEGIN

@interface Film : NSObject

@property (nonatomic, readonly) FilmRating filmRating;
@property (nonatomic, readonly) NSArray *languages;
@property (nonatomic, readonly) NSDate *releaseDate;
@property (nonatomic, readonly, nullable) NSArray <Actor*> *cast;
@property (nonatomic, readonly) NSString *name;
@property (nonatomic, readonly) double rating;
@property (nonatomic, readonly) Director *director;
@property (nonatomic, readonly, getter=isNominated) BOOL nominated;

- (instancetype)initWithName:(NSString *)name
                  filmRating:(FilmRating)filmRating
                   languages:(NSArray *)languages
                 releaseDate:(NSDate *)releaseDate
                      rating:(double)rating
                        cast:(nullable NSArray <Actor*> *)cast
                    director:(Director *)director
                 isNominated:(BOOL)isNominated;

@end

NS_ASSUME_NONNULL_END
