//
//  RRExampleService.m
//  RRExample
//
//  Created by Eunmin Kim on 12. 6. 18..
//  Copyright (c) 2012년 __MyCompanyName__. All rights reserved.
//

#import "Service.h"

@implementation Service

- (RRRequest *)loginWithUserid:(NSString *)userid withPassword:(NSString *)password completion:(CompletionBlock)block {
    NSLog(@"login override : %@ %@", userid, password);
    
    block(nil, 404);
    
    return nil;
}

- (RRRequest *)todoList:(CompletionBlock)block {
    return nil;
}

- (RRRequest *)addTodo:(Todo *)todo completion:(CompletionBlock)block {
    return nil;
}

- (RRRequest *)deleteTodo:(Todo *)todo completion:(CompletionBlock)block {
    return nil;
}

- (RRRequest *)todoById:(NSString *)todoId {
    return nil;
}

@end
