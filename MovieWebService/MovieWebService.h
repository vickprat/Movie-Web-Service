//
//  MovieWebService.h
//  MovieWebService
//
//  Created by Prateek Khandelwal on 6/4/18.
//  Copyright © 2018 TestCompany. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MovieWebService : NSObject

- (void)getFilmDataWithCallback:(void (^)(NSDictionary *filmData))callback;

@end
