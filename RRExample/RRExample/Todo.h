//
//  Todo.h
//  RRExample
//
//  Created by Eunmin Kim on 12. 6. 26..
//  Copyright (c) 2012년 __MyCompanyName__. All rights reserved.
//

#import "RRModel.h"

@interface Todo : RRModel

@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSDate *createAt;
@property (nonatomic, strong) NSString *description;

@end
