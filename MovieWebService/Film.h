//
//  Film.h
//  MovieWebService
//
//  Created by Prateek Khandelwal on 6/4/18.
//  Copyright © 2017 Talk.to FZC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Actor.h"
#import "Director.h"

/*
 G - Little kids’ films
 PG - Family films, the occasional mature one with tame content
 PG-13 - Teen films, or major blockbusters, even sometimes one not meant for kids if it’s tame enough
 R - Indies and prestige films
 NC-17 - Sexually explicit dramas
 **/

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
@property (nonatomic, readonly, copy) NSArray *languages;
@property (nonatomic, readonly) NSDate *releaseDate;
@property (nonatomic, readonly, nullable) NSArray <Actor*> *cast;
@property (nonatomic, readonly, copy) NSString *name;
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
