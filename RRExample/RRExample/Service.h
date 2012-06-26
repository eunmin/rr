//
//  RRExampleService.h
//  RRExample
//
//  Created by Eunmin Kim on 12. 6. 18..
//  Copyright (c) 2012년 __MyCompanyName__. All rights reserved.
//

#import "RRService.h"
#import "RRRequest.h"
#import "Todo.h"

@interface Service : RRService <RRService>

- (RRRequest *)todoList:(CompletionBlock)block;
- (RRRequest *)addTodo:(Todo *)todo completion:(CompletionBlock)block;
- (RRRequest *)deleteTodo:(Todo *)todo completion:(CompletionBlock)block;
- (RRRequest *)todoById:(NSString *)todoId;


@end
