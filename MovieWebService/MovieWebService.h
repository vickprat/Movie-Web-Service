//
//  MovieWebService.h
//  MovieWebService
//
//  Created by Prateek Khandelwal on 6/4/18.
//  Copyright © 2017 Talk.to FZC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MovieWebService : NSObject

- (void)getFilmDataWithCallback:(void (^)(NSDictionary *filmData))callback;

@end
