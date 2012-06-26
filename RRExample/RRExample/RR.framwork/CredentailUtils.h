//
//  CredentailUtils.h
//  TextAt
//
//  Created by Eunmin Kim on 12. 5. 15..
//  Copyright (c) 2012년 scatterlab. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CredentailUtils : NSObject

+ (void)storeUserid:(NSString *)userid withPassword:(NSString *)password withHost:(NSString *)host;
+ (NSString *)passwordByUserid:(NSString *)userid withHost:(NSString *)host;

@end
