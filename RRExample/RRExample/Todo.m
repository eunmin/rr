//
//  Todo.m
//  RRExample
//
//  Created by Eunmin Kim on 12. 6. 26..
//  Copyright (c) 2012년 __MyCompanyName__. All rights reserved.
//

#import "Todo.h"

@implementation Todo

@synthesize title = _title;
@synthesize createAt = _createAt;
@synthesize description = _description;

- (NSDictionary *)map {
    return [NSDictionary dictionaryWithObjectsAndKeys:
            @"title", @"title",
            @"createTime", @"createAt",
            @"desc", @"description",
            nil];
}

@end
