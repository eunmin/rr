//
//  RRModel.m
//  RRExample
//
//  Created by Eunmin Kim on 12. 6. 1..
//  Copyright (c) 2012년 __MyCompanyName__. All rights reserved.
//

#import "RRModel.h"

@implementation RRModel

- (id)initWithDictonary:(NSDictionary *)dic {
    self = [super init];
    if (self) {
        NSDictionary *map = [self map];
        for (NSString *key in [map allKeys]) {
            id value = [dic valueForKeyPath:[map objectForKey:key]];
            if (value) {
                [self setValue:value forKey:key];
            }
        }
    }
    return self;
}

- (NSDictionary *)map {
    return nil;
}


@end
