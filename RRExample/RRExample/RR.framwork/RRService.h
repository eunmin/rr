//
//  RRService.h
//  RRExample
//
//  Created by Eunmin Kim on 12. 6. 18..
//  Copyright (c) 2012년 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RRRequest.h"

#define RR_OK 200

typedef typedef void (^CompletionBlock)(id, int);

@protocol RRService
    - (RRRequest *)loginWithUserid:(NSString *)userid withPassword:(NSString *)password completion:(CompletionBlock)block;
@end

@interface RRService : NSObject <RRService>

@property (nonatomic, strong) NSString *host;

- (RRRequest *)loginWithUserid:(NSString *)userid withPassword:(NSString *)password completion:(CompletionBlock)block;

@end
